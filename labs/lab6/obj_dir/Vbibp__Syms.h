// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Symbol table internal header
//
// Internal details; most calling programs do not need this header,
// unless using verilator public meta comments.

#ifndef VERILATED_VBIBP__SYMS_H_
#define VERILATED_VBIBP__SYMS_H_  // guard

#include "verilated.h"

// INCLUDE MODEL CLASS

#include "Vbibp.h"

// INCLUDE MODULE CLASSES
#include "Vbibp___024root.h"

// SYMS CLASS (contains all model state)
class Vbibp__Syms final : public VerilatedSyms {
  public:
    // INTERNAL STATE
    Vbibp* const __Vm_modelp;
    bool __Vm_didInit = false;

    // MODULE INSTANCE STATE
    Vbibp___024root                TOP;

    // CONSTRUCTORS
    Vbibp__Syms(VerilatedContext* contextp, const char* namep, Vbibp* modelp);
    ~Vbibp__Syms();

    // METHODS
    const char* name() { return TOP.name(); }
} VL_ATTR_ALIGNED(VL_CACHE_LINE_BYTES);

#endif  // guard
