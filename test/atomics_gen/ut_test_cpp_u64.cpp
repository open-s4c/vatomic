#include <vsync/atomic.hpp>
#include <iostream>
#include <atomic>
#include <cassert>
#include <vector>


std::vector<vuint64_t> g_values = {0, VUINT8_MAX, VUINT16_MAX, VUINT32_MAX,
                                   VUINT64_MAX};

void
assert_match(vsync::atomic<vuint64_t> &var, std::atomic<vuint64_t> &mirror)
{
    vuint64_t v_var    = var.load();
    vuint64_t v_mirror = mirror.load();
    if (v_var != v_mirror) {
        std::cerr << "[assert_match] vsync::atomic " << v_var
                  << " =? std::atomic " << v_mirror << std::endl;
    }
    assert(v_var == v_mirror);
}

void
test_init(void)
{
    {
        std::atomic<vuint64_t> mirror;
        vsync::atomic<vuint64_t> var;
        assert_match(var, mirror);
    }
    {
        vuint64_t val = 255;
        std::atomic<vuint64_t> mirror(val);
        vsync::atomic<vuint64_t> var(val);
        assert_match(var, mirror);
    }
}

void
test_store(void)
{
    std::atomic<vuint64_t> mirror;
    vsync::atomic<vuint64_t> var;

    for (int order = vsync::memory_order_relaxed;
         order <= vsync::memory_order_seq_cst; order++) {
        for (vuint64_t val : g_values) {
            mirror.store(val, static_cast<std::memory_order>(order));
            var.store(val, static_cast<vsync::memory_order>(order));
            assert_match(var, mirror);
        }
    }
}

void
test_exchange(void)
{
    std::atomic<vuint64_t> mirror;
    vsync::atomic<vuint64_t> var;
    vuint64_t r_var    = 0;
    vuint64_t r_mirror = 0;

    for (int order = vsync::memory_order_relaxed;
         order <= vsync::memory_order_seq_cst; order++) {
        for (vuint64_t val : g_values) {
            r_mirror =
                mirror.exchange(val, static_cast<std::memory_order>(order));
            r_var = var.exchange(val, static_cast<vsync::memory_order>(order));
            assert_match(var, mirror);
            assert(r_mirror = r_var);
        }

        for (vuint64_t val : g_values) {
            r_mirror = mirror.compare_exchange_strong(
                val, static_cast<std::memory_order>(order),
                static_cast<std::memory_order>(order));
            r_var = var.compare_exchange_strong(
                val, static_cast<vsync::memory_order>(order),
                static_cast<vsync::memory_order>(order));
            assert_match(var, mirror);
            assert(r_mirror = r_var);
        }

        for (vuint64_t val : g_values) {
            r_mirror = mirror.compare_exchange_weak(
                val, static_cast<std::memory_order>(order),
                static_cast<std::memory_order>(order));
            r_var = var.compare_exchange_weak(
                val, static_cast<vsync::memory_order>(order),
                static_cast<vsync::memory_order>(order));
            assert_match(var, mirror);
            assert(r_mirror = r_var);
        }
    }
}


int
main(void)
{
    test_init();
    test_store();
    test_exchange();
    return 0;
}
