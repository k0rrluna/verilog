// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See Vtest2.h for the primary calling header

#include "verilated.h"

#include "Vtest2___024root.h"

VL_ATTR_COLD void Vtest2___024root___eval_static(Vtest2___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtest2__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtest2___024root___eval_static\n"); );
}

VL_ATTR_COLD void Vtest2___024root___eval_final(Vtest2___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtest2__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtest2___024root___eval_final\n"); );
}

VL_ATTR_COLD void Vtest2___024root___eval_settle(Vtest2___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtest2__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtest2___024root___eval_settle\n"); );
}

#ifdef VL_DEBUG
VL_ATTR_COLD void Vtest2___024root___dump_triggers__act(Vtest2___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtest2__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtest2___024root___dump_triggers__act\n"); );
    // Body
    if ((1U & (~ (IData)(vlSelf->__VactTriggered.any())))) {
        VL_DBG_MSGF("         No triggers active\n");
    }
    if (vlSelf->__VactTriggered.at(0U)) {
        VL_DBG_MSGF("         'act' region trigger index 0 is active: @([true] __VdlySched.awaitingCurrentTime())\n");
    }
}
#endif  // VL_DEBUG

#ifdef VL_DEBUG
VL_ATTR_COLD void Vtest2___024root___dump_triggers__nba(Vtest2___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtest2__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtest2___024root___dump_triggers__nba\n"); );
    // Body
    if ((1U & (~ (IData)(vlSelf->__VnbaTriggered.any())))) {
        VL_DBG_MSGF("         No triggers active\n");
    }
    if (vlSelf->__VnbaTriggered.at(0U)) {
        VL_DBG_MSGF("         'nba' region trigger index 0 is active: @([true] __VdlySched.awaitingCurrentTime())\n");
    }
}
#endif  // VL_DEBUG

VL_ATTR_COLD void Vtest2___024root___ctor_var_reset(Vtest2___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtest2__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtest2___024root___ctor_var_reset\n"); );
    // Body
    }
