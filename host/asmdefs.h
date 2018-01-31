#ifndef _ASMDEFS_H
#define _ASMDEFS_H

#ifndef __ASSEMBLER__
#include <openenclave/types.h>
#include <stdint.h>
#include <openenclave/bits/context.h>
#endif

#ifdef __ASSEMBLER__
# define ENCLU_EENTER 2
# define ENCLU_ERESUME 3
#endif

#define ThreadBinding_tcs 0
#define OE_WORDSIZE 8
#define	OE_OCALL_CODE 3
#define OE_Enter __morestack

#ifndef __ASSEMBLER__
void OE_Enter(
    void* tcs,
    void (*aep)(void),
    uint64_t arg1,
    uint64_t arg2,
    uint64_t* arg3,
    uint64_t* arg4);

void OE_AEP(void);
#endif

#ifndef __ASSEMBLER__
void OE_EnterSim(
    void* tcs,
    void (*aep)(void),
    uint64_t arg1,
    uint64_t arg2,
    uint64_t* arg3,
    uint64_t* arg4);
#endif

#ifndef __ASSEMBLER__
int __OE_DispatchOCall(
    uint64_t arg1,
    uint64_t arg2,
    uint64_t* arg1Out,
    uint64_t* arg2Out,
    void* tcs,
    void* rsp);
#endif

#ifndef __ASSEMBLER__
int _OE_HostStackBridge(
    uint64_t arg1,
    uint64_t arg2,
    uint64_t* arg1Out,
    uint64_t* arg2Out,
    void* tcs,
    void* rsp);

typedef
struct __OE_HostOCallFrame
{
    uint64_t previous_rbp;
    uint64_t return_address;
}_OE_HostOCallFrame;

void _OE_NotifyOCallStart(
    _OE_HostOCallFrame* frame_pointer,
    void* tcs);

void _OE_NotifyOCallEnd(
    _OE_HostOCallFrame* frame_pointer,
    void* tcs);
#endif

#endif /* _ASMDEFS_H */
