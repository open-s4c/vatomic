#include <vsync/atomic.hpp>
#include <iostream>
#include <atomic>
#include <cassert>
#include <vector>


std::vector<vuint32_t> g_values = {0, VUINT8_MAX, VUINT16_MAX, VUINT32_MAX};

void
assert_match(vsync::atomic<vuint32_t> &var, std::atomic<vuint32_t> &mirror)
{
    vuint32_t v_var    = var.load();
    vuint32_t v_mirror = mirror.load();
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
        std::atomic<vuint32_t> mirror;
        vsync::atomic<vuint32_t> var;
        assert_match(var, mirror);
    }
    {
        vuint32_t val = 255;
        std::atomic<vuint32_t> mirror(val);
        vsync::atomic<vuint32_t> var(val);
        assert_match(var, mirror);
    }
}

void
test_store(void)
{
    std::atomic<vuint32_t> mirror;
    vsync::atomic<vuint32_t> var;

    for (int order = vsync::memory_order_relaxed;
         order <= vsync::memory_order_seq_cst; order++) {
        for (vuint32_t val : g_values) {
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
