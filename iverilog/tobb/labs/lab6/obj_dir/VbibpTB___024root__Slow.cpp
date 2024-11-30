// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See VbibpTB.h for the primary calling header

#include "verilated.h"

#include "VbibpTB__Syms.h"
#include "VbibpTB___024root.h"

void VbibpTB___024root___ctor_var_reset(VbibpTB___024root* vlSelf);

VbibpTB___024root::VbibpTB___024root(VbibpTB__Syms* symsp, const char* v__name)
    : VerilatedModule{v__name}
    , __VdlySched{*symsp->_vm_contextp__}
    , vlSymsp{symsp}
 {
    // Reset structure values
    VbibpTB___024root___ctor_var_reset(this);
}

void VbibpTB___024root::__Vconfigure(bool first) {
    if (false && first) {}  // Prevent unused
}

VbibpTB___024root::~VbibpTB___024root() {
}
