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
    {
        std::atomic<vsize_t> mirror;
        vsync::atomic<vsize_t> var;
        assert_match(var, mirror);
    }
    {
        vsize_t val = 255;
        std::atomic<vsize_t> mirror(val);
        vsync::atomic<vsize_t> var(val);
        assert_match(var, mirror);
    }
}

void
test_store(void)
{
    std::atomic<vsize_t> mirror;
    vsync::atomic<vsize_t> var;

    for (int order = vsync::memory_order_relaxed;
         order <= vsync::memory_order_seq_cst; order++) {
        for (vsize_t val : g_values) {
            mirror.store(val, static_cast<std::memory_order>(order));
            var.store(val, static_cast<vsync::memory_order>(order));
            assert_match(var, mirror);
        }
    }
}


int
main(void)
{
    test_init();
    return 0;
}
