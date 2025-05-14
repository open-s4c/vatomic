#include <iostream>
#include <atomic>
#include <cassert>

#include "../src/atomic.hpp"


void
assert_match(vsync::atomic<vuint32_t> &v, std::atomic<vuint32_t> &mirror)
{
    vuint32_t r        = v.load();
    vuint32_t mirror_r = mirror.load();
    std::cout << "vsync: " << r << " =? mirror "<< mirror_r << std::endl;
    assert(r == mirror_r);
}

void
test(void)
{
    std::atomic<vuint32_t> mirror;
    vsync::atomic<vuint32_t> var;

    vuint32_t v = 5;
    var.store(v);
    mirror.store(v);

    assert_match(var, mirror);

    var    = 10;
    mirror = 10;
    assert_match(var, mirror);

    var = mirror = 1;
    assert_match(var, mirror);

    mirror = var = 10;
    assert_match(var, mirror);

    vuint32_t a = var.exchange(1);
    vuint32_t b = mirror.exchange(1);
    assert(a == b);
    assert_match(var, mirror);

    bool r1 = var.compare_exchange_strong(a, 2);
    bool r2 = mirror.compare_exchange_strong(b, 2);
    assert(r1 == r2);
    assert(a == b);
    assert_match(var, mirror);

    r1 = var.compare_exchange_strong(a, 2);
    r2 = mirror.compare_exchange_strong(b, 2);
    assert(r1 == r2);
    assert(a == b);
    assert_match(var, mirror);

}

int
main(void)
{
    test();

    return 0;
}
