// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design internal header
// See Vbibp.h for the primary calling header

#ifndef VERILATED_VBIBP___024ROOT_H_
#define VERILATED_VBIBP___024ROOT_H_  // guard

#include "verilated.h"
#include "verilated_timing.h"

class Vbibp__Syms;

class Vbibp___024root final : public VerilatedModule {
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
    Vbibp__Syms* const vlSymsp;

    // CONSTRUCTORS
    Vbibp___024root(Vbibp__Syms* symsp, const char* v__name);
    ~Vbibp___024root();
    VL_UNCOPYABLE(Vbibp___024root);

    // INTERNAL METHODS
    void __Vconfigure(bool first);
} VL_ATTR_ALIGNED(VL_CACHE_LINE_BYTES);


#endif  // guard
