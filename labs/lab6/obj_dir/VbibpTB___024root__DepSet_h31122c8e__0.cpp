// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See VbibpTB.h for the primary calling header

#include "verilated.h"

#include "VbibpTB___024root.h"

VlCoroutine VbibpTB___024root___eval_initial__TOP__0(VbibpTB___024root* vlSelf);

void VbibpTB___024root___eval_initial(VbibpTB___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VbibpTB__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VbibpTB___024root___eval_initial\n"); );
    // Body
    VbibpTB___024root___eval_initial__TOP__0(vlSelf);
}

VL_INLINE_OPT void VbibpTB___024root___act_sequent__TOP__0(VbibpTB___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VbibpTB__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VbibpTB___024root___act_sequent__TOP__0\n"); );
    // Init
    CData/*4:0*/ bibpTB__DOT__sonuc;
    bibpTB__DOT__sonuc = 0;
    // Body
    VL_WRITEF("%2#\n%2#\n%2#\n",4,(0xfU & ((IData)(vlSelf->bibpTB__DOT__buyruk) 
                                           >> 4U)),
              4,(0xfU & (IData)(vlSelf->bibpTB__DOT__buyruk)),
              4,(0xfU & (((IData)(vlSelf->bibpTB__DOT__buyruk) 
                          >> 4U) - (IData)(vlSelf->bibpTB__DOT__buyruk))));
    bibpTB__DOT__sonuc = ((0x400U & (IData)(vlSelf->bibpTB__DOT__buyruk))
                           ? 0x1fU : (0x1fU & ((0x200U 
                                                & (IData)(vlSelf->bibpTB__DOT__buyruk))
                                                ? (
                                                   (0x100U 
                                                    & (IData)(vlSelf->bibpTB__DOT__buyruk))
                                                    ? 0x1fU
                                                    : 
                                                   ((0x80U 
                                                     & (IData)(vlSelf->bibpTB__DOT__buyruk))
                                                     ? 0x1fU
                                                     : 
                                                    ((0xfU 
                                                      & ((IData)(vlSelf->bibpTB__DOT__buyruk) 
                                                         >> 4U)) 
                                                     ^ 
                                                     (0xfU 
                                                      & (IData)(vlSelf->bibpTB__DOT__buyruk)))))
                                                : (
                                                   (0x100U 
                                                    & (IData)(vlSelf->bibpTB__DOT__buyruk))
                                                    ? 
                                                   ((0x80U 
                                                     & (IData)(vlSelf->bibpTB__DOT__buyruk))
                                                     ? 
                                                    (0xfU 
                                                     & (((IData)(vlSelf->bibpTB__DOT__buyruk) 
                                                         >> 4U) 
                                                        | (IData)(vlSelf->bibpTB__DOT__buyruk)))
                                                     : 
                                                    (0xfU 
                                                     & (((IData)(vlSelf->bibpTB__DOT__buyruk) 
                                                         >> 4U) 
                                                        & (IData)(vlSelf->bibpTB__DOT__buyruk))))
                                                    : 
                                                   ((0x80U 
                                                     & (IData)(vlSelf->bibpTB__DOT__buyruk))
                                                     ? 
                                                    ((0xfU 
                                                      & ((IData)(vlSelf->bibpTB__DOT__buyruk) 
                                                         >> 4U)) 
                                                     - 
                                                     (0xfU 
                                                      & (IData)(vlSelf->bibpTB__DOT__buyruk)))
                                                     : 
                                                    ((0xfU 
                                                      & ((IData)(vlSelf->bibpTB__DOT__buyruk) 
                                                         >> 4U)) 
                                                     + 
                                                     (0xfU 
                                                      & (IData)(vlSelf->bibpTB__DOT__buyruk))))))));
    VL_WRITEF("%2#\n",5,bibpTB__DOT__sonuc);
}

void VbibpTB___024root___eval_act(VbibpTB___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VbibpTB__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VbibpTB___024root___eval_act\n"); );
    // Body
    if (vlSelf->__VactTriggered.at(0U)) {
        VbibpTB___024root___act_sequent__TOP__0(vlSelf);
    }
}

void VbibpTB___024root___eval_nba(VbibpTB___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VbibpTB__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VbibpTB___024root___eval_nba\n"); );
    // Body
    if (vlSelf->__VnbaTriggered.at(0U)) {
        VbibpTB___024root___act_sequent__TOP__0(vlSelf);
    }
}

void VbibpTB___024root___eval_triggers__act(VbibpTB___024root* vlSelf);
#ifdef VL_DEBUG
VL_ATTR_COLD void VbibpTB___024root___dump_triggers__act(VbibpTB___024root* vlSelf);
#endif  // VL_DEBUG
void VbibpTB___024root___timing_resume(VbibpTB___024root* vlSelf);
#ifdef VL_DEBUG
VL_ATTR_COLD void VbibpTB___024root___dump_triggers__nba(VbibpTB___024root* vlSelf);
#endif  // VL_DEBUG

void VbibpTB___024root___eval(VbibpTB___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VbibpTB__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VbibpTB___024root___eval\n"); );
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
            VbibpTB___024root___eval_triggers__act(vlSelf);
            if (vlSelf->__VactTriggered.any()) {
                vlSelf->__VactContinue = 1U;
                if (VL_UNLIKELY((0x64U < vlSelf->__VactIterCount))) {
#ifdef VL_DEBUG
                    VbibpTB___024root___dump_triggers__act(vlSelf);
#endif
                    VL_FATAL_MT("bibpTB.v", 1, "", "Active region did not converge.");
                }
                vlSelf->__VactIterCount = ((IData)(1U) 
                                           + vlSelf->__VactIterCount);
                __VpreTriggered.andNot(vlSelf->__VactTriggered, vlSelf->__VnbaTriggered);
                vlSelf->__VnbaTriggered.set(vlSelf->__VactTriggered);
                VbibpTB___024root___timing_resume(vlSelf);
                VbibpTB___024root___eval_act(vlSelf);
            }
        }
        if (vlSelf->__VnbaTriggered.any()) {
            __VnbaContinue = 1U;
            if (VL_UNLIKELY((0x64U < __VnbaIterCount))) {
#ifdef VL_DEBUG
                VbibpTB___024root___dump_triggers__nba(vlSelf);
#endif
                VL_FATAL_MT("bibpTB.v", 1, "", "NBA region did not converge.");
            }
            __VnbaIterCount = ((IData)(1U) + __VnbaIterCount);
            VbibpTB___024root___eval_nba(vlSelf);
        }
    }
}

void VbibpTB___024root___timing_resume(VbibpTB___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VbibpTB__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VbibpTB___024root___timing_resume\n"); );
    // Body
    if (vlSelf->__VactTriggered.at(0U)) {
        vlSelf->__VdlySched.resume();
    }
}

#ifdef VL_DEBUG
void VbibpTB___024root___eval_debug_assertions(VbibpTB___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VbibpTB__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VbibpTB___024root___eval_debug_assertions\n"); );
}
#endif  // VL_DEBUG
