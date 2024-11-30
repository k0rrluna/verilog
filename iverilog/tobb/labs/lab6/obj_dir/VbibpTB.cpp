// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Model implementation (design independent parts)

#include "VbibpTB.h"
#include "VbibpTB__Syms.h"

//============================================================
// Constructors

VbibpTB::VbibpTB(VerilatedContext* _vcontextp__, const char* _vcname__)
    : VerilatedModel{*_vcontextp__}
    , vlSymsp{new VbibpTB__Syms(contextp(), _vcname__, this)}
    , rootp{&(vlSymsp->TOP)}
{
    // Register model with the context
    contextp()->addModel(this);
}

VbibpTB::VbibpTB(const char* _vcname__)
    : VbibpTB(Verilated::threadContextp(), _vcname__)
{
}

//============================================================
// Destructor

VbibpTB::~VbibpTB() {
    delete vlSymsp;
}

//============================================================
// Evaluation function

#ifdef VL_DEBUG
void VbibpTB___024root___eval_debug_assertions(VbibpTB___024root* vlSelf);
#endif  // VL_DEBUG
void VbibpTB___024root___eval_static(VbibpTB___024root* vlSelf);
void VbibpTB___024root___eval_initial(VbibpTB___024root* vlSelf);
void VbibpTB___024root___eval_settle(VbibpTB___024root* vlSelf);
void VbibpTB___024root___eval(VbibpTB___024root* vlSelf);

void VbibpTB::eval_step() {
    VL_DEBUG_IF(VL_DBG_MSGF("+++++TOP Evaluate VbibpTB::eval_step\n"); );
#ifdef VL_DEBUG
    // Debug assertions
    VbibpTB___024root___eval_debug_assertions(&(vlSymsp->TOP));
#endif  // VL_DEBUG
    if (VL_UNLIKELY(!vlSymsp->__Vm_didInit)) {
        vlSymsp->__Vm_didInit = true;
        VL_DEBUG_IF(VL_DBG_MSGF("+ Initial\n"););
        VbibpTB___024root___eval_static(&(vlSymsp->TOP));
        VbibpTB___024root___eval_initial(&(vlSymsp->TOP));
        VbibpTB___024root___eval_settle(&(vlSymsp->TOP));
    }
    // MTask 0 start
    VL_DEBUG_IF(VL_DBG_MSGF("MTask0 starting\n"););
    Verilated::mtaskId(0);
    VL_DEBUG_IF(VL_DBG_MSGF("+ Eval\n"););
    VbibpTB___024root___eval(&(vlSymsp->TOP));
    // Evaluate cleanup
    Verilated::endOfThreadMTask(vlSymsp->__Vm_evalMsgQp);
    Verilated::endOfEval(vlSymsp->__Vm_evalMsgQp);
}

//============================================================
// Events and timing
bool VbibpTB::eventsPending() { return !vlSymsp->TOP.__VdlySched.empty(); }

uint64_t VbibpTB::nextTimeSlot() { return vlSymsp->TOP.__VdlySched.nextTimeSlot(); }

//============================================================
// Utilities

const char* VbibpTB::name() const {
    return vlSymsp->name();
}

//============================================================
// Invoke final blocks

void VbibpTB___024root___eval_final(VbibpTB___024root* vlSelf);

VL_ATTR_COLD void VbibpTB::final() {
    VbibpTB___024root___eval_final(&(vlSymsp->TOP));
}

//============================================================
// Implementations of abstract methods from VerilatedModel

const char* VbibpTB::hierName() const { return vlSymsp->name(); }
const char* VbibpTB::modelName() const { return "VbibpTB"; }
unsigned VbibpTB::threads() const { return 1; }
