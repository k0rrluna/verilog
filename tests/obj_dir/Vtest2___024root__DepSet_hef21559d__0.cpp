// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See Vtest2.h for the primary calling header

#include "verilated.h"

#include "Vtest2__Syms.h"
#include "Vtest2___024root.h"

VL_INLINE_OPT VlCoroutine Vtest2___024root___eval_initial__TOP__0(Vtest2___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtest2__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtest2___024root___eval_initial__TOP__0\n"); );
    // Init
    VlWide<3>/*95:0*/ __Vtemp_h8200ba1e__0;
    // Body
    __Vtemp_h8200ba1e__0[0U] = 0x2e766364U;
    __Vtemp_h8200ba1e__0[1U] = 0x73743276U;
    __Vtemp_h8200ba1e__0[2U] = 0x7465U;
    vlSymsp->_vm_contextp__->dumpfile(VL_CVT_PACK_STR_NW(3, __Vtemp_h8200ba1e__0));
    VL_PRINTF_MT("-Info: test2Tb.v:10: $dumpvar ignored, as Verilated without --trace\n");
    VL_WRITEF("Success!\n");
    co_await vlSelf->__VdlySched.delay(0xaU, "test2Tb.v", 
                                       12);
    VL_FINISH_MT("test2Tb.v", 13, "");
}

#ifdef VL_DEBUG
VL_ATTR_COLD void Vtest2___024root___dump_triggers__act(Vtest2___024root* vlSelf);
#endif  // VL_DEBUG

void Vtest2___024root___eval_triggers__act(Vtest2___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtest2__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtest2___024root___eval_triggers__act\n"); );
    // Body
    vlSelf->__VactTriggered.at(0U) = vlSelf->__VdlySched.awaitingCurrentTime();
#ifdef VL_DEBUG
    if (VL_UNLIKELY(vlSymsp->_vm_contextp__->debug())) {
        Vtest2___024root___dump_triggers__act(vlSelf);
    }
#endif
}
