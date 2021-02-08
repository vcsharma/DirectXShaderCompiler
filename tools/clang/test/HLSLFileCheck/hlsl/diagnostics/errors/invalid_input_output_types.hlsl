// RUN: %dxc -Zi -E main -T ps_6_0 %s | FileCheck %s -check-prefix=CHK_DB
// RUN: %dxc -E main -T ps_6_0 %s | FileCheck %s -check-prefix=CHK_NODB

// CHK_DB: error: invalid type used for 'SV_Target' semantic, must be of 'float/int/uint' type.
// CHK_NODB: error: invalid type used for 'SV_Target' semantic, must be of 'float/int/uint' type. Use /Zi for source location.

double main(uint64_t i:I) : SV_Target {
    return 1;
}