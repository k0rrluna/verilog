// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Model implementation (design independent parts)

#include "Vbibp.h"
#include "Vbibp__Syms.h"

//============================================================
// Constructors

Vbibp::Vbibp(VerilatedContext* _vcontextp__, const char* _vcname__)
    : VerilatedModel{*_vcontextp__}
    , vlSymsp{new Vbibp__Syms(contextp(), _vcname__, this)}
    , rootp{&(vlSymsp->TOP)}
{
    // Register model with the context
    contextp()->addModel(this);
}

Vbibp::Vbibp(const char* _vcname__)
    : Vbibp(Verilated::threadContextp(), _vcname__)
{
}

//============================================================
// Destructor

Vbibp::~Vbibp() {
    delete vlSymsp;
}

//============================================================
// Evaluation function

#ifdef VL_DEBUG
void Vbibp___024root___eval_debug_assertions(Vbibp___024root* vlSelf);
#endif  // VL_DEBUG
void Vbibp___024root___eval_static(Vbibp___024root* vlSelf);
void Vbibp___024root___eval_initial(Vbibp___024root* vlSelf);
void Vbibp___024root___eval_settle(Vbibp___024root* vlSelf);
void Vbibp___024root___eval(Vbibp___024root* vlSelf);

void Vbibp::eval_step() {
    VL_DEBUG_IF(VL_DBG_MSGF("+++++TOP Evaluate Vbibp::eval_step\n"); );
#ifdef VL_DEBUG
    // Debug assertions
    Vbibp___024root___eval_debug_assertions(&(vlSymsp->TOP));
#endif  // VL_DEBUG
    if (VL_UNLIKELY(!vlSymsp->__Vm_didInit)) {
        vlSymsp->__Vm_didInit = true;
        VL_DEBUG_IF(VL_DBG_MSGF("+ Initial\n"););
        Vbibp___024root___eval_static(&(vlSymsp->TOP));
        Vbibp___024root___eval_initial(&(vlSymsp->TOP));
        Vbibp___024root___eval_settle(&(vlSymsp->TOP));
    }
    // MTask 0 start
    VL_DEBUG_IF(VL_DBG_MSGF("MTask0 starting\n"););
    Verilated::mtaskId(0);
    VL_DEBUG_IF(VL_DBG_MSGF("+ Eval\n"););
    Vbibp___024root___eval(&(vlSymsp->TOP));
    // Evaluate cleanup
    Verilated::endOfThreadMTask(vlSymsp->__Vm_evalMsgQp);
    Verilated::endOfEval(vlSymsp->__Vm_evalMsgQp);
}

//============================================================
// Events and timing
bool Vbibp::eventsPending() { return !vlSymsp->TOP.__VdlySched.empty(); }

uint64_t Vbibp::nextTimeSlot() { return vlSymsp->TOP.__VdlySched.nextTimeSlot(); }

//============================================================
// Utilities

const char* Vbibp::name() const {
    return vlSymsp->name();
}

//============================================================
// Invoke final blocks

void Vbibp___024root___eval_final(Vbibp___024root* vlSelf);

VL_ATTR_COLD void Vbibp::final() {
    Vbibp___024root___eval_final(&(vlSymsp->TOP));
}

//============================================================
// Implementations of abstract methods from VerilatedModel

const char* Vbibp::hierName() const { return vlSymsp->name(); }
const char* Vbibp::modelName() const { return "Vbibp"; }
unsigned Vbibp::threads() const { return 1; }
