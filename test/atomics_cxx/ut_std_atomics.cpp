/*
 * Copyright (C) Huawei Technologies Co., Ltd. 2025. All rights reserved.
 * SPDX-License-Identifier: MIT
 */
#include <vsync/atomic.hpp>
#include <atomic>
#include <cassert>

template <typename TT, TT TT_MIN, TT TT_STEP, TT TT_MAX> struct TestAtomics {
    void store_load()
    {
        for (TT v = TT_MIN; v < TT_MAX; v += TT_STEP) {
            mirror  = v;
            subject = v;
            assert(mirror == subject);
        }
    }

    void exchange()
    {
        for (TT v = TT_MIN; v < TT_MAX; v += TT_STEP) {
            TT mirror_r  = mirror.exchange(v);
            TT subject_r = subject.exchange(v);
            assert(mirror_r == subject_r);
            assert(mirror == subject);
        }
    }

    void test_all()
    {
        this->exchange();
        this->store_load();
    }


  private:
    std::atomic<TT> mirror;
    vsync::atomic<TT> subject;
};

int
main(void)
{
    TestAtomics<unsigned int, 0, 0xffffff, VUINT32_MAX> _uint;
    _uint.test_all();

    TestAtomics<unsigned short, 0, 0xfff, VUINT16_MAX> _short;
    _short.test_all();

    TestAtomics<signed char, 0, 0xf, 127> _char;
    _char.test_all();
}
