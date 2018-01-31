#ifndef _ASMDEFS_H
#define _ASMDEFS_H

#ifndef __ASSEMBLER__
#include <openenclave/enclave.h>
#endif

#define ENCLU_EENTER 2
#define ENCLU_EEXIT 4

#define PAGE_SIZE 4096
#define STATIC_STACK_SIZE 8*100
#define OE_WORD_SIZE 8

#define CODE_ERET 0x200000000

/* Offsets into TD structure */
#define TD_self_addr            0
#define TD_last_sp              8
#define TD_magic                168
#define TD_depth                (TD_magic + 8)
#define TD_initialized          (TD_depth + 8)
#define TD_host_rcx             (TD_initialized + 8)
#define TD_host_rdx             (TD_host_rcx + 8)
#define TD_host_r8              (TD_host_rdx + 8)
#define TD_host_r9              (TD_host_r8 + 8)
#define TD_host_r10             (TD_host_r9 + 8)
#define TD_host_r11             (TD_host_r10 + 8)
#define TD_host_r12             (TD_host_r11 + 8)
#define TD_host_r13             (TD_host_r12 + 8)
#define TD_host_r14             (TD_host_r13 + 8)
#define TD_host_r15             (TD_host_r14 + 8)
#define TD_host_rsp             (TD_host_r15 + 8)
#define TD_host_rbp             (TD_host_rsp + 8)
#define TD_host_stack_base      (TD_host_rbp + 8)
#define TD_oret_func            (TD_host_stack_base + 8)
#define TD_oret_arg             (TD_oret_func + 8)
#define TD_callsites            (TD_oret_arg + 8)
#define TD_simulate             (TD_callsites + 8)

#define OE_Exit __morestack
#ifndef __ASSEMBLER__
void OE_Exit(uint64_t arg1, uint64_t arg2);
#endif

#ifndef __ASSEMBLER__
void __OE_HandleMain(
    uint64_t arg1,
    uint64_t arg2,
    uint64_t cssa,
    void* tcs,
    uint64_t *outputArg1,
    uint64_t *outputArg2);

void OE_ExceptionDispatcher(
    void* context);
#endif

#ifndef __ASSEMBLER__
void _OE_NotifyNestedExistStart(
    uint64_t arg1,
    OE_OCallContext* ocallContext
);
#endif
#endif /* _ASMDEFS_H */
