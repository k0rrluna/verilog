// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design internal header
// See Vtb.h for the primary calling header

#ifndef VERILATED_VTB___024ROOT_H_
#define VERILATED_VTB___024ROOT_H_  // guard

#include "verilated.h"
#include "verilated_timing.h"

class Vtb__Syms;

class Vtb___024root final : public VerilatedModule {
  public:

    // DESIGN SPECIFIC STATE
    CData/*0:0*/ tb__DOT__clk;
    CData/*0:0*/ tb__DOT__bitti_mi;
    CData/*2:0*/ tb__DOT__parca;
    CData/*4:0*/ tb__DOT__yukseklik;
    CData/*4:0*/ tb__DOT__cevrim;
    CData/*4:0*/ tb__DOT__uut__DOT__cevrim_r;
    CData/*4:0*/ tb__DOT__uut__DOT__y_0;
    CData/*4:0*/ tb__DOT__uut__DOT__y_1;
    CData/*4:0*/ tb__DOT__uut__DOT__y_2;
    CData/*4:0*/ __Vdly__tb__DOT__uut__DOT__y_0;
    CData/*4:0*/ __Vdly__tb__DOT__uut__DOT__y_1;
    CData/*4:0*/ __Vdly__tb__DOT__uut__DOT__y_2;
    CData/*0:0*/ __Vtrigrprev__TOP__tb__DOT__clk;
    CData/*0:0*/ __Vtrigrprev__TOP__tb__DOT__bitti_mi;
    CData/*0:0*/ __VactContinue;
    IData/*31:0*/ __VstlIterCount;
    IData/*31:0*/ __VactIterCount;
    VlDelayScheduler __VdlySched;
    VlTriggerVec<1> __VstlTriggered;
    VlTriggerVec<3> __VactTriggered;
    VlTriggerVec<3> __VnbaTriggered;

    // INTERNAL VARIABLES
    Vtb__Syms* const vlSymsp;

    // CONSTRUCTORS
    Vtb___024root(Vtb__Syms* symsp, const char* v__name);
    ~Vtb___024root();
    VL_UNCOPYABLE(Vtb___024root);

    // INTERNAL METHODS
    void __Vconfigure(bool first);
} VL_ATTR_ALIGNED(VL_CACHE_LINE_BYTES);


#endif  // guard
