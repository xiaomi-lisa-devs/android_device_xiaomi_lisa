/*
 * Copyright (C) 2021 The LineageOS Project
 *
 * SPDX-License-Identifier: Apache-2.0
 */

#include <libinit_dalvik_heap.h>
#include <libinit_variant.h>

#include "vendor_init.h"

static const variant_info_t lisa_global_info = {
    .hwc_value = "GL",
    .sku_value = "",

    .brand = "Xiaomi",
    .device = "lisa_global",
    .marketname = "Xiaomi 11 Lite 5G NE",
    .model = "2109119DG",
    .build_fingerprint = "Xiaomi/lisa_global/lisa:12/RKQ1.211001.001/V13.0.4.0.SKOMIXM:user/release-keys",

    .nfc = true,
};

static const variant_info_t lisa_india_info = {
    .hwc_value = "IN",
    .sku_value = "",

    .brand = "Xiaomi",
    .device = "lisa_in",
    .marketname = "Xiaomi 11 Lite NE 5G",
    .model = "2109119DI",
    .build_fingerprint = "Xiaomi/lisa_in/lisa:12/RKQ1.211001.001/V13.0.4.0.SKOMIXM:user/release-keys",

    .nfc = true,
};

static const variant_info_t lisa_info = {
    .hwc_value = "CN",
    .sku_value = "",

    .brand = "Xiaomi",
    .device = "lisa",
    .marketname = "Mi 11 LE",
    .model = "2107119DC",
    .build_fingerprint = "Xiaomi/lisa/lisa:12/RKQ1.211001.001/V13.0.4.0.SKOMIXM:user/release-keys",

    .nfc = true,
};

static const std::vector<variant_info_t> variants = {
    lisa_global_info,
    lisa_india_info,
    lisa_info,
};

void vendor_load_properties() {
    search_variant(variants);
    set_dalvik_heap();
}
