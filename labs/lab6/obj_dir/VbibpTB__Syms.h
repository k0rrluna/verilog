// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Symbol table internal header
//
// Internal details; most calling programs do not need this header,
// unless using verilator public meta comments.

#ifndef VERILATED_VBIBPTB__SYMS_H_
#define VERILATED_VBIBPTB__SYMS_H_  // guard

#include "verilated.h"

// INCLUDE MODEL CLASS

#include "VbibpTB.h"

// INCLUDE MODULE CLASSES
#include "VbibpTB___024root.h"

// SYMS CLASS (contains all model state)
class VbibpTB__Syms final : public VerilatedSyms {
  public:
    // INTERNAL STATE
    VbibpTB* const __Vm_modelp;
    bool __Vm_didInit = false;

    // MODULE INSTANCE STATE
    VbibpTB___024root              TOP;

    // CONSTRUCTORS
    VbibpTB__Syms(VerilatedContext* contextp, const char* namep, VbibpTB* modelp);
    ~VbibpTB__Syms();

    // METHODS
    const char* name() { return TOP.name(); }
} VL_ATTR_ALIGNED(VL_CACHE_LINE_BYTES);

#endif  // guard
