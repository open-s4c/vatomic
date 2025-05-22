#include <vsync/atomic.hpp>
#include <atomic>
#include <vector>
#include <cassert>
#include <limits>
#include <typeinfo>
#include <iostream>

template <typename TT> struct TestAtomics {
    void ut_rw()
    {
        for (TT v : vals) {
            mirror  = v;
            subject = v;
            assert(mirror == subject);
        }
    }

    void ut_xchg()
    {
        for (TT v : vals) {
            TT mirror_r  = mirror.exchange(v);
            TT subject_r = subject.exchange(v);
            assert(mirror_r == subject_r);
            assert(mirror == subject);
        }
    }

    void ut_dec() {
        TT r_var    = 0;
        TT r_mirror = 0;

        for (TT val : vals) {
            mirror = subject = val;
            r_mirror     = mirror--;
            r_var        = subject--;
            assert(mirror == subject);
            assert(r_mirror == r_var);
        }

        for (TT val : vals) {
            mirror = subject = val;
            r_mirror     = --mirror;
            r_var        = --subject;
            assert(mirror == subject);
            assert(r_mirror == r_var);
        }
    }

    void ut_inc() {
        TT r_var    = 0;
        TT r_mirror = 0;

        for (TT val : vals) {
            mirror = subject = val;
            r_mirror     = mirror++;
            r_var        = subject++;
            assert(mirror == subject);
            assert(r_mirror == r_var);
        }

        for (TT val : vals) {
            mirror = subject = val;
            r_mirror     = ++mirror;
            r_var        = ++subject;
            assert(mirror == subject);
            assert(r_mirror == r_var);
        }
    }

    void ut_bitwise() {
        mirror = subject = max;
        for (TT val : vals) {
            mirror ^= val;
            subject ^= val;
            assert(mirror == subject);

            mirror |= val;
            subject |= val;
            assert(mirror == subject);

            mirror &= val;
            subject &= val;
            assert(mirror == subject);
        }
    }

    static void run_tests()
    {
        static TestAtomics<TT> ins;
        std::cout<<"Testing type [" << typeid(TT).name() << "] Max = " << max << " Min = " << min << " with size = " << sizeof(TT) << "byte(s)" << std::endl;
        ins.ut_rw();
        ins.ut_dec();
        ins.ut_xchg();
        ins.ut_inc();
        ins.ut_bitwise();
    }

    static constexpr TT max = std::numeric_limits<TT>::max();
    static constexpr TT min = std::numeric_limits<TT>::min();
    private:
        std::vector<TT> vals = {min, (max/4), (max/2), max};
        std::atomic<TT> mirror;
        vsync::atomic<TT> subject;
};

int
main(void)
{

    /* Run with all c++ primitive types*/
    TestAtomics<signed char>::run_tests();
    TestAtomics<unsigned char>::run_tests();
    TestAtomics<short>::run_tests();
    TestAtomics<short int>::run_tests();
    TestAtomics<signed short>::run_tests();
    TestAtomics<signed short int>::run_tests();
    TestAtomics<unsigned short>::run_tests();
    TestAtomics<unsigned short int>::run_tests();
    TestAtomics<int>::run_tests();
    TestAtomics<signed>::run_tests();
    TestAtomics<signed int>::run_tests();
    TestAtomics<unsigned>::run_tests();
    TestAtomics<unsigned int>::run_tests();
    TestAtomics<long>::run_tests();
    TestAtomics<long int>::run_tests();
    TestAtomics<signed long>::run_tests();
    TestAtomics<signed long int>::run_tests();
    TestAtomics<unsigned long>::run_tests();
    TestAtomics<unsigned long int>::run_tests();
    //TODO: TestAtomics<long long>::run_tests();
    //TODO: TestAtomics<long long int>::run_tests();
    //TODO: TestAtomics<signed long long>::run_tests();
    //TODO: TestAtomics<signed long long int>::run_tests();
    //TODO: TestAtomics<unsigned long long>::run_tests();
    //TODO: TestAtomics<unsigned long long int>::run_tests();

    /* Run with all vatomic types*/
    TestAtomics<vint8_t>::run_tests();
    TestAtomics<vint16_t>::run_tests();
    TestAtomics<vint32_t>::run_tests();
    TestAtomics<vint64_t>::run_tests();
    TestAtomics<vuint8_t>::run_tests();
    TestAtomics<vuint16_t>::run_tests();
    TestAtomics<vuint32_t>::run_tests();

    TestAtomics<vsize_t>::run_tests();
    TestAtomics<size_t>::run_tests();

    // TODO: TestAtomics<vbool_t>::run_tests();
    // TODO: TestAtomics<bool>::run_tests();

}
