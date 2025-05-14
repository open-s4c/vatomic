#ifndef __ATOMIC_HPP__
#define __ATOMIC_HPP__
#include <vsync/atomic.h>

namespace vsync
{

typedef enum memory_order {
    memory_order_relaxed,
    memory_order_consume,
    memory_order_acquire,
    memory_order_release,
    memory_order_acq_rel,
    memory_order_seq_cst
} memory_order;

template <typename T> struct atomic;

template <> struct atomic<vuint32_t> {
    vuint32_t load(memory_order order = memory_order_seq_cst) const noexcept
    {
        switch (order) {
            case memory_order_consume:
            case memory_order_acquire:
                return vatomic32_read_acq(&_v);
            case memory_order_relaxed:
                return vatomic32_read_rlx(&_v);
            case memory_order_release:
            case memory_order_acq_rel:
            // TODO: warn about it
            case memory_order_seq_cst:
            default:
                return vatomic32_read(&_v);
        }
    }
    void store(vuint32_t v, memory_order order = memory_order_seq_cst) noexcept
    {
        switch (order) {
            case memory_order_release:
                vatomic32_write_rel(&_v, v);
                break;
            case memory_order_relaxed:
                vatomic32_write_rlx(&_v, v);
                break;
            case memory_order_acquire:
            case memory_order_acq_rel:
            case memory_order_consume:
            // TODO: warn about it
            case memory_order_seq_cst:
            default:
                return vatomic32_write(&_v, v);
        }
    }

    atomic()
    {
        vatomic32_init(&_v, 0);
    }
    atomic(vuint32_t v)
    {
        vatomic32_init(&_v, v);
    }

    atomic(const atomic &)                     = delete;
    atomic &operator=(const atomic &)          = delete;
    atomic &operator=(const atomic &) volatile = delete;

    vuint32_t operator=(vuint32_t v) noexcept
    {
        store(v);
        return v;
    }

    vuint32_t exchange(vuint32_t v,
                       memory_order order = memory_order_seq_cst) noexcept
    {
        switch (order) {
            case memory_order_release:
                return vatomic32_xchg_rel(&_v, v);
            case memory_order_relaxed:
                return vatomic32_xchg_rlx(&_v, v);
            case memory_order_consume:
            case memory_order_acquire:
                return vatomic32_xchg_acq(&_v, v);
            case memory_order_acq_rel:
            case memory_order_seq_cst:
            default:
                return vatomic32_xchg(&_v, v);
        }
    }

    vuint32_t
    compare_exchange_strong(vuint32_t &expected, vuint32_t desired,
                            memory_order success = memory_order_seq_cst,
                            memory_order failure = memory_order_seq_cst,
                            memory_order order = memory_order_seq_cst) noexcept
    {
        vuint32_t old = 0;
        switch (order) {
            case memory_order_release:
                old = vatomic32_cmpxchg_rel(&_v, expected, desired);
                break;
            case memory_order_relaxed:
                old = vatomic32_cmpxchg_rlx(&_v, expected, desired);
                break;
            case memory_order_consume:
            case memory_order_acquire:
                old = vatomic32_cmpxchg_acq(&_v, expected, desired);
                break;
            case memory_order_acq_rel:
            case memory_order_seq_cst:
            default:
                old = vatomic32_cmpxchg(&_v, expected, desired);
                break;
        }
        if (old == expected) {
            return true;
        } else {
            expected = old;
            return false;
        }
    }

  private:
    vatomic32_t _v;
};

}; // namespace vsync


#endif
