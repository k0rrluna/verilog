// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See Vbibp.h for the primary calling header

#include "verilated.h"

#include "Vbibp__Syms.h"
#include "Vbibp___024root.h"

void Vbibp___024root___ctor_var_reset(Vbibp___024root* vlSelf);

Vbibp___024root::Vbibp___024root(Vbibp__Syms* symsp, const char* v__name)
    : VerilatedModule{v__name}
    , __VdlySched{*symsp->_vm_contextp__}
    , vlSymsp{symsp}
 {
    // Reset structure values
    Vbibp___024root___ctor_var_reset(this);
}

void Vbibp___024root::__Vconfigure(bool first) {
    if (false && first) {}  // Prevent unused
}

Vbibp___024root::~Vbibp___024root() {
}
