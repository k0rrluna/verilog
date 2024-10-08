// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See Vtest2.h for the primary calling header

#include "verilated.h"

#include "Vtest2___024root.h"

VlCoroutine Vtest2___024root___eval_initial__TOP__0(Vtest2___024root* vlSelf);

void Vtest2___024root___eval_initial(Vtest2___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtest2__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtest2___024root___eval_initial\n"); );
    // Body
    Vtest2___024root___eval_initial__TOP__0(vlSelf);
}

void Vtest2___024root___eval_act(Vtest2___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtest2__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtest2___024root___eval_act\n"); );
}

void Vtest2___024root___eval_nba(Vtest2___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtest2__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtest2___024root___eval_nba\n"); );
}

void Vtest2___024root___eval_triggers__act(Vtest2___024root* vlSelf);
#ifdef VL_DEBUG
VL_ATTR_COLD void Vtest2___024root___dump_triggers__act(Vtest2___024root* vlSelf);
#endif  // VL_DEBUG
void Vtest2___024root___timing_resume(Vtest2___024root* vlSelf);
#ifdef VL_DEBUG
VL_ATTR_COLD void Vtest2___024root___dump_triggers__nba(Vtest2___024root* vlSelf);
#endif  // VL_DEBUG

void Vtest2___024root___eval(Vtest2___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtest2__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtest2___024root___eval\n"); );
    // Init
    VlTriggerVec<1> __VpreTriggered;
    IData/*31:0*/ __VnbaIterCount;
    CData/*0:0*/ __VnbaContinue;
    // Body
    __VnbaIterCount = 0U;
    __VnbaContinue = 1U;
    while (__VnbaContinue) {
        __VnbaContinue = 0U;
        vlSelf->__VnbaTriggered.clear();
        vlSelf->__VactIterCount = 0U;
        vlSelf->__VactContinue = 1U;
        while (vlSelf->__VactContinue) {
            vlSelf->__VactContinue = 0U;
            Vtest2___024root___eval_triggers__act(vlSelf);
            if (vlSelf->__VactTriggered.any()) {
                vlSelf->__VactContinue = 1U;
                if (VL_UNLIKELY((0x64U < vlSelf->__VactIterCount))) {
#ifdef VL_DEBUG
                    Vtest2___024root___dump_triggers__act(vlSelf);
#endif
                    VL_FATAL_MT("test2Tb.v", 1, "", "Active region did not converge.");
                }
                vlSelf->__VactIterCount = ((IData)(1U) 
                                           + vlSelf->__VactIterCount);
                __VpreTriggered.andNot(vlSelf->__VactTriggered, vlSelf->__VnbaTriggered);
                vlSelf->__VnbaTriggered.set(vlSelf->__VactTriggered);
                Vtest2___024root___timing_resume(vlSelf);
                Vtest2___024root___eval_act(vlSelf);
            }
        }
        if (vlSelf->__VnbaTriggered.any()) {
            __VnbaContinue = 1U;
            if (VL_UNLIKELY((0x64U < __VnbaIterCount))) {
#ifdef VL_DEBUG
                Vtest2___024root___dump_triggers__nba(vlSelf);
#endif
                VL_FATAL_MT("test2Tb.v", 1, "", "NBA region did not converge.");
            }
            __VnbaIterCount = ((IData)(1U) + __VnbaIterCount);
            Vtest2___024root___eval_nba(vlSelf);
        }
    }
}

void Vtest2___024root___timing_resume(Vtest2___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtest2__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtest2___024root___timing_resume\n"); );
    // Body
    if (vlSelf->__VactTriggered.at(0U)) {
        vlSelf->__VdlySched.resume();
    }
}

#ifdef VL_DEBUG
void Vtest2___024root___eval_debug_assertions(Vtest2___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtest2__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtest2___024root___eval_debug_assertions\n"); );
}
#endif  // VL_DEBUG
