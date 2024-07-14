// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See Vtb.h for the primary calling header

#include "verilated.h"

#include "Vtb___024root.h"

VlCoroutine Vtb___024root___eval_initial__TOP__0(Vtb___024root* vlSelf);

void Vtb___024root___eval_initial(Vtb___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtb__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb___024root___eval_initial\n"); );
    // Body
    Vtb___024root___eval_initial__TOP__0(vlSelf);
    vlSelf->__Vtrigrprev__TOP__tb__DOT__clk = vlSelf->tb__DOT__clk;
    vlSelf->__Vtrigrprev__TOP__tb__DOT__bitti_mi = vlSelf->tb__DOT__bitti_mi;
}

VL_INLINE_OPT VlCoroutine Vtb___024root___eval_initial__TOP__0(Vtb___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtb__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb___024root___eval_initial__TOP__0\n"); );
    // Body
    while (1U) {
        co_await vlSelf->__VdlySched.delay(5U, "tb.v", 
                                           20);
        vlSelf->tb__DOT__clk = (1U & (~ (IData)(vlSelf->tb__DOT__clk)));
    }
    vlSelf->tb__DOT__parca = 5U;
    co_await vlSelf->__VdlySched.delay(0xc8U, "tb.v", 
                                       21);
    VL_WRITEF("%2#\n%2#\n%1#\n",5,vlSelf->tb__DOT__yukseklik,
              5,(IData)(vlSelf->tb__DOT__uut__DOT__cevrim_r),
              1,vlSelf->tb__DOT__bitti_mi);
    VL_FINISH_MT("tb.v", 25, "");
}

void Vtb___024root___eval_act(Vtb___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtb__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb___024root___eval_act\n"); );
}

VL_INLINE_OPT void Vtb___024root___nba_sequent__TOP__0(Vtb___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtb__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb___024root___nba_sequent__TOP__0\n"); );
    // Body
    vlSelf->__Vdly__tb__DOT__uut__DOT__y_2 = vlSelf->tb__DOT__uut__DOT__y_2;
    vlSelf->__Vdly__tb__DOT__uut__DOT__y_1 = vlSelf->tb__DOT__uut__DOT__y_1;
    vlSelf->__Vdly__tb__DOT__uut__DOT__y_0 = vlSelf->tb__DOT__uut__DOT__y_0;
    if ((0x10U != (IData)(vlSelf->tb__DOT__uut__DOT__cevrim_r))) {
        vlSelf->__Vdly__tb__DOT__uut__DOT__y_2 = (0x1fU 
                                                  & ((IData)(vlSelf->tb__DOT__uut__DOT__y_2) 
                                                     + 
                                                     (1U 
                                                      & ((IData)(vlSelf->tb__DOT__parca) 
                                                         >> 2U))));
        vlSelf->__Vdly__tb__DOT__uut__DOT__y_1 = (0x1fU 
                                                  & ((IData)(vlSelf->tb__DOT__uut__DOT__y_1) 
                                                     + 
                                                     (1U 
                                                      & ((IData)(vlSelf->tb__DOT__parca) 
                                                         >> 1U))));
        vlSelf->__Vdly__tb__DOT__uut__DOT__y_0 = (0x1fU 
                                                  & ((IData)(vlSelf->tb__DOT__uut__DOT__y_0) 
                                                     + 
                                                     (1U 
                                                      & (IData)(vlSelf->tb__DOT__parca))));
    }
    if ((0x10U != (IData)(vlSelf->tb__DOT__cevrim))) {
        vlSelf->tb__DOT__uut__DOT__cevrim_r = (0x1fU 
                                               & ((IData)(1U) 
                                                  + (IData)(vlSelf->tb__DOT__uut__DOT__cevrim_r)));
    }
    vlSelf->tb__DOT__cevrim = vlSelf->tb__DOT__uut__DOT__cevrim_r;
    vlSelf->tb__DOT__bitti_mi = (0x10U == (IData)(vlSelf->tb__DOT__uut__DOT__cevrim_r));
}

VL_INLINE_OPT void Vtb___024root___nba_sequent__TOP__1(Vtb___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtb__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb___024root___nba_sequent__TOP__1\n"); );
    // Body
    if (((IData)(vlSelf->tb__DOT__uut__DOT__y_0) > (IData)(vlSelf->tb__DOT__uut__DOT__y_1))) {
        vlSelf->tb__DOT__yukseklik = (((IData)(vlSelf->tb__DOT__uut__DOT__y_0) 
                                       > (IData)(vlSelf->tb__DOT__uut__DOT__y_2))
                                       ? (IData)(vlSelf->tb__DOT__uut__DOT__y_0)
                                       : (IData)(vlSelf->tb__DOT__uut__DOT__y_2));
    } else if (((IData)(vlSelf->tb__DOT__uut__DOT__y_0) 
                > (IData)(vlSelf->tb__DOT__uut__DOT__y_1))) {
        vlSelf->tb__DOT__yukseklik = (((IData)(vlSelf->tb__DOT__uut__DOT__y_1) 
                                       > (IData)(vlSelf->tb__DOT__uut__DOT__y_2))
                                       ? (IData)(vlSelf->tb__DOT__uut__DOT__y_1)
                                       : (IData)(vlSelf->tb__DOT__uut__DOT__y_2));
    }
}

VL_INLINE_OPT void Vtb___024root___nba_sequent__TOP__2(Vtb___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtb__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb___024root___nba_sequent__TOP__2\n"); );
    // Body
    vlSelf->tb__DOT__uut__DOT__y_0 = vlSelf->__Vdly__tb__DOT__uut__DOT__y_0;
    vlSelf->tb__DOT__uut__DOT__y_1 = vlSelf->__Vdly__tb__DOT__uut__DOT__y_1;
    vlSelf->tb__DOT__uut__DOT__y_2 = vlSelf->__Vdly__tb__DOT__uut__DOT__y_2;
}

void Vtb___024root___eval_nba(Vtb___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtb__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb___024root___eval_nba\n"); );
    // Body
    if (vlSelf->__VnbaTriggered.at(0U)) {
        Vtb___024root___nba_sequent__TOP__0(vlSelf);
    }
    if (vlSelf->__VnbaTriggered.at(1U)) {
        Vtb___024root___nba_sequent__TOP__1(vlSelf);
    }
    if (vlSelf->__VnbaTriggered.at(0U)) {
        Vtb___024root___nba_sequent__TOP__2(vlSelf);
    }
}

void Vtb___024root___eval_triggers__act(Vtb___024root* vlSelf);
#ifdef VL_DEBUG
VL_ATTR_COLD void Vtb___024root___dump_triggers__act(Vtb___024root* vlSelf);
#endif  // VL_DEBUG
void Vtb___024root___timing_resume(Vtb___024root* vlSelf);
#ifdef VL_DEBUG
VL_ATTR_COLD void Vtb___024root___dump_triggers__nba(Vtb___024root* vlSelf);
#endif  // VL_DEBUG

void Vtb___024root___eval(Vtb___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtb__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb___024root___eval\n"); );
    // Init
    VlTriggerVec<3> __VpreTriggered;
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
            Vtb___024root___eval_triggers__act(vlSelf);
            if (vlSelf->__VactTriggered.any()) {
                vlSelf->__VactContinue = 1U;
                if (VL_UNLIKELY((0x64U < vlSelf->__VactIterCount))) {
#ifdef VL_DEBUG
                    Vtb___024root___dump_triggers__act(vlSelf);
#endif
                    VL_FATAL_MT("tb.v", 1, "", "Active region did not converge.");
                }
                vlSelf->__VactIterCount = ((IData)(1U) 
                                           + vlSelf->__VactIterCount);
                __VpreTriggered.andNot(vlSelf->__VactTriggered, vlSelf->__VnbaTriggered);
                vlSelf->__VnbaTriggered.set(vlSelf->__VactTriggered);
                Vtb___024root___timing_resume(vlSelf);
                Vtb___024root___eval_act(vlSelf);
            }
        }
        if (vlSelf->__VnbaTriggered.any()) {
            __VnbaContinue = 1U;
            if (VL_UNLIKELY((0x64U < __VnbaIterCount))) {
#ifdef VL_DEBUG
                Vtb___024root___dump_triggers__nba(vlSelf);
#endif
                VL_FATAL_MT("tb.v", 1, "", "NBA region did not converge.");
            }
            __VnbaIterCount = ((IData)(1U) + __VnbaIterCount);
            Vtb___024root___eval_nba(vlSelf);
        }
    }
}

void Vtb___024root___timing_resume(Vtb___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtb__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb___024root___timing_resume\n"); );
    // Body
    if (vlSelf->__VactTriggered.at(2U)) {
        vlSelf->__VdlySched.resume();
    }
}

#ifdef VL_DEBUG
void Vtb___024root___eval_debug_assertions(Vtb___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtb__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb___024root___eval_debug_assertions\n"); );
}
#endif  // VL_DEBUG
