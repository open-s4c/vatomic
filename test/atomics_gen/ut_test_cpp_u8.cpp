#include <vsync/atomic.hpp>
#include <iostream>
#include <atomic>
#include <cassert>

void
assert_match(vsync::atomic<vuint8_t> &var, std::atomic<vuint8_t> &mirror)
{
    vuint8_t v_var    = var.load();
    vuint8_t v_mirror = mirror.load();
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
        std::atomic<vuint8_t> mirror;
        vsync::atomic<vuint8_t> var;
        assert_match(var, mirror);
    }
    {
        vuint8_t val = 255;
        std::atomic<vuint8_t> mirror(val);
        vsync::atomic<vuint8_t> var(val);
        assert_match(var, mirror);
    }
}

int
main(void)
{
    test_init();
    return 0;
}
