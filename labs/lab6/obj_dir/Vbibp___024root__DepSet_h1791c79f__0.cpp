// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See Vbibp.h for the primary calling header

#include "verilated.h"

#include "Vbibp__Syms.h"
#include "Vbibp___024root.h"

VL_INLINE_OPT VlCoroutine Vbibp___024root___eval_initial__TOP__0(Vbibp___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vbibp__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vbibp___024root___eval_initial__TOP__0\n"); );
    // Init
    VlWide<3>/*95:0*/ __Vtemp_h84e83511__0;
    // Body
    __Vtemp_h84e83511__0[0U] = 0x2e766364U;
    __Vtemp_h84e83511__0[1U] = 0x62696270U;
    __Vtemp_h84e83511__0[2U] = 0x76U;
    vlSymsp->_vm_contextp__->dumpfile(VL_CVT_PACK_STR_NW(3, __Vtemp_h84e83511__0));
    VL_PRINTF_MT("-Info: bibpTB.v:11: $dumpvar ignored, as Verilated without --trace\n");
    vlSelf->bibpTB__DOT__buyruk = 0x754U;
    co_await vlSelf->__VdlySched.delay(0xaU, "bibpTB.v", 
                                       13);
    VL_FINISH_MT("bibpTB.v", 14, "");
}

#ifdef VL_DEBUG
VL_ATTR_COLD void Vbibp___024root___dump_triggers__act(Vbibp___024root* vlSelf);
#endif  // VL_DEBUG

void Vbibp___024root___eval_triggers__act(Vbibp___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vbibp__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vbibp___024root___eval_triggers__act\n"); );
    // Body
    vlSelf->__VactTriggered.at(0U) = vlSelf->__VdlySched.awaitingCurrentTime();
#ifdef VL_DEBUG
    if (VL_UNLIKELY(vlSymsp->_vm_contextp__->debug())) {
        Vbibp___024root___dump_triggers__act(vlSelf);
    }
#endif
}
