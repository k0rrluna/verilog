// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design internal header
// See VbibpTB.h for the primary calling header

#ifndef VERILATED_VBIBPTB___024ROOT_H_
#define VERILATED_VBIBPTB___024ROOT_H_  // guard

#include "verilated.h"
#include "verilated_timing.h"

class VbibpTB__Syms;

class VbibpTB___024root final : public VerilatedModule {
  public:

    // DESIGN SPECIFIC STATE
    CData/*0:0*/ __VactContinue;
    SData/*10:0*/ bibpTB__DOT__buyruk;
    IData/*31:0*/ __VstlIterCount;
    IData/*31:0*/ __VactIterCount;
    VlDelayScheduler __VdlySched;
    VlTriggerVec<1> __VstlTriggered;
    VlTriggerVec<1> __VactTriggered;
    VlTriggerVec<1> __VnbaTriggered;

    // INTERNAL VARIABLES
    VbibpTB__Syms* const vlSymsp;

    // CONSTRUCTORS
    VbibpTB___024root(VbibpTB__Syms* symsp, const char* v__name);
    ~VbibpTB___024root();
    VL_UNCOPYABLE(VbibpTB___024root);

    // INTERNAL METHODS
    void __Vconfigure(bool first);
} VL_ATTR_ALIGNED(VL_CACHE_LINE_BYTES);


#endif  // guard
