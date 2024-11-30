// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See Vbibp.h for the primary calling header

#include "verilated.h"

#include "Vbibp___024root.h"

VL_ATTR_COLD void Vbibp___024root___eval_static(Vbibp___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vbibp__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vbibp___024root___eval_static\n"); );
}

VL_ATTR_COLD void Vbibp___024root___eval_final(Vbibp___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vbibp__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vbibp___024root___eval_final\n"); );
}

VL_ATTR_COLD void Vbibp___024root___eval_triggers__stl(Vbibp___024root* vlSelf);
#ifdef VL_DEBUG
VL_ATTR_COLD void Vbibp___024root___dump_triggers__stl(Vbibp___024root* vlSelf);
#endif  // VL_DEBUG
VL_ATTR_COLD void Vbibp___024root___eval_stl(Vbibp___024root* vlSelf);

VL_ATTR_COLD void Vbibp___024root___eval_settle(Vbibp___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vbibp__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vbibp___024root___eval_settle\n"); );
    // Init
    CData/*0:0*/ __VstlContinue;
    // Body
    vlSelf->__VstlIterCount = 0U;
    __VstlContinue = 1U;
    while (__VstlContinue) {
        __VstlContinue = 0U;
        Vbibp___024root___eval_triggers__stl(vlSelf);
        if (vlSelf->__VstlTriggered.any()) {
            __VstlContinue = 1U;
            if (VL_UNLIKELY((0x64U < vlSelf->__VstlIterCount))) {
#ifdef VL_DEBUG
                Vbibp___024root___dump_triggers__stl(vlSelf);
#endif
                VL_FATAL_MT("bibpTB.v", 1, "", "Settle region did not converge.");
            }
            vlSelf->__VstlIterCount = ((IData)(1U) 
                                       + vlSelf->__VstlIterCount);
            Vbibp___024root___eval_stl(vlSelf);
        }
    }
}

#ifdef VL_DEBUG
VL_ATTR_COLD void Vbibp___024root___dump_triggers__stl(Vbibp___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vbibp__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vbibp___024root___dump_triggers__stl\n"); );
    // Body
    if ((1U & (~ (IData)(vlSelf->__VstlTriggered.any())))) {
        VL_DBG_MSGF("         No triggers active\n");
    }
    if (vlSelf->__VstlTriggered.at(0U)) {
        VL_DBG_MSGF("         'stl' region trigger index 0 is active: Internal 'stl' trigger - first iteration\n");
    }
}
#endif  // VL_DEBUG

void Vbibp___024root___act_sequent__TOP__0(Vbibp___024root* vlSelf);

VL_ATTR_COLD void Vbibp___024root___eval_stl(Vbibp___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vbibp__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vbibp___024root___eval_stl\n"); );
    // Body
    if (vlSelf->__VstlTriggered.at(0U)) {
        Vbibp___024root___act_sequent__TOP__0(vlSelf);
    }
}

#ifdef VL_DEBUG
VL_ATTR_COLD void Vbibp___024root___dump_triggers__act(Vbibp___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vbibp__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vbibp___024root___dump_triggers__act\n"); );
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
VL_ATTR_COLD void Vbibp___024root___dump_triggers__nba(Vbibp___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vbibp__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vbibp___024root___dump_triggers__nba\n"); );
    // Body
    if ((1U & (~ (IData)(vlSelf->__VnbaTriggered.any())))) {
        VL_DBG_MSGF("         No triggers active\n");
    }
    if (vlSelf->__VnbaTriggered.at(0U)) {
        VL_DBG_MSGF("         'nba' region trigger index 0 is active: @([true] __VdlySched.awaitingCurrentTime())\n");
    }
}
#endif  // VL_DEBUG

VL_ATTR_COLD void Vbibp___024root___ctor_var_reset(Vbibp___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vbibp__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vbibp___024root___ctor_var_reset\n"); );
    // Body
    vlSelf->bibpTB__DOT__buyruk = VL_RAND_RESET_I(11);
    }
