/*
 * Copyright (C) Huawei Technologies Co., Ltd. 2025. All rights reserved.
 * SPDX-License-Identifier: MIT
 */
extern "C" {
#include <vsync/atomic.h>
}
namespace vsync
{
    template <> struct atomic<vint8_t> {
        atomic(const atomic &)                     = delete;
        atomic &operator=(const atomic &)          = delete;
        atomic &operator=(const atomic &) volatile = delete;
        atomic() : _a()
        {
        }
        atomic(vint8_t v) : _a(static_cast<vuint8_t>(v))
        {
        }

        vint8_t load(memory_order order = memory_order_seq_cst) const noexcept
        {
            return _a.load(order);
        }
        void store(vint8_t v,
                   memory_order order = memory_order_seq_cst) noexcept
        {
            _a.store(static_cast<vuint8_t>(v), order);
        }

      private:
        vsync::atomic<vuint8_t> _a;
    };
} // namespace vsync
