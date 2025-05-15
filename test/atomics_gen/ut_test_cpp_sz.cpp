#include <vsync/atomic.hpp>
#include <iostream>
#include <atomic>
#include <cassert>
#include <vector>


std::vector<vsize_t> g_values = {0, VUINT8_MAX, VUINT16_MAX, VUINT32_MAX,
                                 VSIZE_MAX};

void
assert_match(vsync::atomic<vsize_t> &var, std::atomic<vsize_t> &mirror)
{
    vsize_t v_var    = var.load();
    vsize_t v_mirror = mirror.load();
    if (v_var != v_mirror) {
        std::cerr << "[assert_match] vsync::atomic " << v_var
                  << " =? std::atomic " << v_mirror << std::endl;
    }
    assert(v_var == v_mirror);
}

void
test_init(void)
{
    for (vsize_t val : g_values) {
        std::atomic<vsize_t> mirror(val);
        vsync::atomic<vsize_t> var(val);
        assert_match(var, mirror);
    }
}

void
test_store(void)
{
    std::atomic<vsize_t> mirror(0);
    vsync::atomic<vsize_t> var(0);

    for (int order = vsync::memory_order_relaxed;
         order <= vsync::memory_order_seq_cst; order++) {
        for (vsize_t val : g_values) {
            mirror.store(val, static_cast<std::memory_order>(order));
            var.store(val, static_cast<vsync::memory_order>(order));
            assert_match(var, mirror);
        }
    }
}

void
test_exchange(void)
{
    std::atomic<vsize_t> mirror(0);
    vsync::atomic<vsize_t> var(0);
    vsize_t r_var    = 0;
    vsize_t r_mirror = 0;

    for (int order = vsync::memory_order_relaxed;
         order <= vsync::memory_order_seq_cst; order++) {
        for (vsize_t val : g_values) {
            r_mirror =
                mirror.exchange(val, static_cast<std::memory_order>(order));
            r_var = var.exchange(val, static_cast<vsync::memory_order>(order));
            assert_match(var, mirror);
            assert(r_mirror == r_var);
        }
    }
}

void
test_compare_exchange(void)
{
    std::atomic<vsize_t> mirror(0);
    vsync::atomic<vsize_t> var(0);

    bool r_var    = false;
    bool r_mirror = false;

    vsize_t v_var    = 0;
    vsize_t v_mirror = 0;

    const vsize_t repeat = 3;

    for (int order = vsync::memory_order_relaxed;
         order <= vsync::memory_order_seq_cst; order++) {
        for (vsize_t val : g_values) {
            v_var = v_mirror = val;
            for (vsize_t i = 0; i < repeat; i++) {
                r_mirror = mirror.compare_exchange_strong(
                    v_var, static_cast<std::memory_order>(order),
                    static_cast<std::memory_order>(order));
                r_var = var.compare_exchange_strong(
                    v_mirror, static_cast<vsync::memory_order>(order),
                    static_cast<vsync::memory_order>(order));
                assert(r_mirror == r_var);
                assert(v_var == v_mirror);
            }
        }

        for (vsize_t val : g_values) {
            v_var = v_mirror = val;
            for (vsize_t i = 0; i < repeat; i++) {
                r_mirror = mirror.compare_exchange_weak(
                    v_var, static_cast<std::memory_order>(order),
                    static_cast<std::memory_order>(order));
                r_var = var.compare_exchange_weak(
                    v_mirror, static_cast<vsync::memory_order>(order),
                    static_cast<vsync::memory_order>(order));
                assert_match(var, mirror);
                assert(r_mirror == r_var);
                assert(v_var == v_mirror);
            }
        }
    }
}


int
main(void)
{
    test_init();
    test_store();
    test_exchange();
    test_compare_exchange();
    return 0;
}
