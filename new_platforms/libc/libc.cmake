set(LIBC_MALLOC_FLAGS
    -include stddef.h
    -DHAVE_MMAP=0
    -DMORECORE=sbrk
    -DLACKS_UNISTD_H
    -DLACKS_SYS_PARAM_H
    -DLACKS_SYS_TYPES_H
    -DLACKS_TIME_H
    -DLACKS_STDLIB_H
    -DLACKS_STRING_H
    -DUSE_LOCKS=0
    -Dsize_t=size_t
    -Dptrdiff_t=ptrdiff_t)
string(REPLACE ";" " " LIBC_MALLOC_FLAGS "${LIBC_MALLOC_FLAGS}" PARENT_SCOPE)

set(LIBC_S_SRC
    ${MUSL_SRC}/src/fenv/aarch64/fenv.s
    ${MUSL_SRC}/src/setjmp/aarch64/longjmp.s
    ${MUSL_SRC}/src/setjmp/aarch64/setjmp.s)
set(LIBC_S_SRC ${LIBC_S_SRC} PARENT_SCOPE)

set(LIBC_C_SRC
    ${DLMALLOC_SRC}/malloc.c
    ${MUSL_SRC}/src/complex/cabs.c
    ${MUSL_SRC}/src/complex/cabsf.c
    ${MUSL_SRC}/src/complex/cabsl.c
    ${MUSL_SRC}/src/complex/cacosf.c
    ${MUSL_SRC}/src/complex/cacoshf.c
    ${MUSL_SRC}/src/complex/carg.c
    ${MUSL_SRC}/src/complex/cargf.c
    ${MUSL_SRC}/src/complex/cargl.c
    ${MUSL_SRC}/src/complex/casinf.c
    ${MUSL_SRC}/src/complex/casinhf.c
    ${MUSL_SRC}/src/complex/catan.c
    ${MUSL_SRC}/src/complex/catanf.c
    ${MUSL_SRC}/src/complex/catanh.c
    ${MUSL_SRC}/src/complex/catanhf.c
    ${MUSL_SRC}/src/complex/catanhl.c
    ${MUSL_SRC}/src/complex/catanl.c
    ${MUSL_SRC}/src/complex/ccos.c
    ${MUSL_SRC}/src/complex/ccosf.c
    ${MUSL_SRC}/src/complex/ccosh.c
    ${MUSL_SRC}/src/complex/ccoshf.c
    ${MUSL_SRC}/src/complex/ccoshl.c
    ${MUSL_SRC}/src/complex/ccosl.c
    ${MUSL_SRC}/src/complex/__cexp.c
    ${MUSL_SRC}/src/complex/cexp.c
    ${MUSL_SRC}/src/complex/__cexpf.c
    ${MUSL_SRC}/src/complex/cexpf.c
    ${MUSL_SRC}/src/complex/cexpl.c
    ${MUSL_SRC}/src/complex/cimag.c
    ${MUSL_SRC}/src/complex/cimagf.c
    ${MUSL_SRC}/src/complex/cimagl.c
    ${MUSL_SRC}/src/complex/clog.c
    ${MUSL_SRC}/src/complex/clogf.c
    ${MUSL_SRC}/src/complex/clogl.c
    ${MUSL_SRC}/src/complex/conj.c
    ${MUSL_SRC}/src/complex/conjf.c
    ${MUSL_SRC}/src/complex/conjl.c
    ${MUSL_SRC}/src/complex/cproj.c
    ${MUSL_SRC}/src/complex/cprojf.c
    ${MUSL_SRC}/src/complex/cprojl.c
    ${MUSL_SRC}/src/complex/creal.c
    ${MUSL_SRC}/src/complex/crealf.c
    ${MUSL_SRC}/src/complex/creall.c
    ${MUSL_SRC}/src/complex/csin.c
    ${MUSL_SRC}/src/complex/csinf.c
    ${MUSL_SRC}/src/complex/csinh.c
    ${MUSL_SRC}/src/complex/csinhf.c
    ${MUSL_SRC}/src/complex/csinhl.c
    ${MUSL_SRC}/src/complex/csinl.c
    ${MUSL_SRC}/src/complex/csqrtf.c
    ${MUSL_SRC}/src/complex/ctan.c
    ${MUSL_SRC}/src/complex/ctanf.c
    ${MUSL_SRC}/src/complex/ctanh.c
    ${MUSL_SRC}/src/complex/ctanhf.c
    ${MUSL_SRC}/src/complex/ctanhl.c
    ${MUSL_SRC}/src/complex/ctanl.c
    ${MUSL_SRC}/src/ctype/__ctype_b_loc.c
    ${MUSL_SRC}/src/ctype/__ctype_get_mb_cur_max.c
    ${MUSL_SRC}/src/ctype/__ctype_tolower_loc.c
    ${MUSL_SRC}/src/ctype/__ctype_toupper_loc.c
    ${MUSL_SRC}/src/ctype/isalnum.c
    ${MUSL_SRC}/src/ctype/isalpha.c
    ${MUSL_SRC}/src/ctype/isascii.c
    ${MUSL_SRC}/src/ctype/isblank.c
    ${MUSL_SRC}/src/ctype/iscntrl.c
    ${MUSL_SRC}/src/ctype/isdigit.c
    ${MUSL_SRC}/src/ctype/isgraph.c
    ${MUSL_SRC}/src/ctype/islower.c
    ${MUSL_SRC}/src/ctype/isprint.c
    ${MUSL_SRC}/src/ctype/ispunct.c
    ${MUSL_SRC}/src/ctype/isspace.c
    ${MUSL_SRC}/src/ctype/isupper.c
    ${MUSL_SRC}/src/ctype/iswalnum.c
    ${MUSL_SRC}/src/ctype/iswalpha.c
    ${MUSL_SRC}/src/ctype/iswblank.c
    ${MUSL_SRC}/src/ctype/iswcntrl.c
    ${MUSL_SRC}/src/ctype/iswctype.c
    ${MUSL_SRC}/src/ctype/iswdigit.c
    ${MUSL_SRC}/src/ctype/iswgraph.c
    ${MUSL_SRC}/src/ctype/iswlower.c
    ${MUSL_SRC}/src/ctype/iswprint.c
    ${MUSL_SRC}/src/ctype/iswpunct.c
    ${MUSL_SRC}/src/ctype/iswspace.c
    ${MUSL_SRC}/src/ctype/iswupper.c
    ${MUSL_SRC}/src/ctype/iswxdigit.c
    ${MUSL_SRC}/src/ctype/isxdigit.c
    ${MUSL_SRC}/src/ctype/toascii.c
    ${MUSL_SRC}/src/ctype/tolower.c
    ${MUSL_SRC}/src/ctype/toupper.c
    ${MUSL_SRC}/src/ctype/towctrans.c
    ${MUSL_SRC}/src/ctype/wcswidth.c
    ${MUSL_SRC}/src/ctype/wctrans.c
    ${MUSL_SRC}/src/ctype/wcwidth.c
    ${MUSL_SRC}/src/dirent/opendir.c
    ${MUSL_SRC}/src/dirent/closedir.c
    ${MUSL_SRC}/src/dirent/readdir.c
    ${MUSL_SRC}/src/dirent/readdir_r.c
    ${MUSL_SRC}/src/fcntl/open.c
    ${MUSL_SRC}/src/env/clearenv.c
    ${MUSL_SRC}/src/env/__environ.c
    ${MUSL_SRC}/src/env/getenv.c
    ${MUSL_SRC}/src/env/putenv.c
    ${MUSL_SRC}/src/env/setenv.c
    ${MUSL_SRC}/src/env/unsetenv.c
    ${MUSL_SRC}/src/exit/assert.c
    ${MUSL_SRC}/src/fenv/fegetexceptflag.c
    ${MUSL_SRC}/src/fenv/feholdexcept.c
    ${MUSL_SRC}/src/fenv/fesetexceptflag.c
    ${MUSL_SRC}/src/fenv/fesetround.c
    ${MUSL_SRC}/src/fenv/feupdateenv.c
    ${MUSL_SRC}/src/fenv/__flt_rounds.c
    ${MUSL_SRC}/src/internal/floatscan.c
    ${MUSL_SRC}/src/internal/intscan.c
    ${MUSL_SRC}/src/internal/libc.c
    ${MUSL_SRC}/src/internal/shgetc.c
    ${MUSL_SRC}/src/internal/syscall_ret.c
    ${MUSL_SRC}/src/legacy/getpagesize.c
    ${MUSL_SRC}/src/locale/bind_textdomain_codeset.c
    ${MUSL_SRC}/src/locale/catclose.c
    ${MUSL_SRC}/src/locale/catgets.c
    ${MUSL_SRC}/src/locale/catopen.c
    ${MUSL_SRC}/src/locale/c_locale.c
    ${MUSL_SRC}/src/locale/dcngettext.c
    ${MUSL_SRC}/src/locale/duplocale.c
    ${MUSL_SRC}/src/locale/iconv.c
    ${MUSL_SRC}/src/locale/iconv_close.c
    ${MUSL_SRC}/src/locale/langinfo.c
    ${MUSL_SRC}/src/locale/__lctrans.c
    ${MUSL_SRC}/src/locale/locale_map.c
    ${MUSL_SRC}/src/locale/__mo_lookup.c
    ${MUSL_SRC}/src/locale/pleval.c
    ${MUSL_SRC}/src/locale/strcoll.c
    ${MUSL_SRC}/src/locale/strfmon.c
    ${MUSL_SRC}/src/locale/strxfrm.c
    ${MUSL_SRC}/src/locale/textdomain.c
    ${MUSL_SRC}/src/locale/wcscoll.c
    ${MUSL_SRC}/src/locale/wcsxfrm.c
    ${MUSL_SRC}/src/math/acos.c
    ${MUSL_SRC}/src/math/acosf.c
    ${MUSL_SRC}/src/math/acosh.c
    ${MUSL_SRC}/src/math/acoshf.c
    ${MUSL_SRC}/src/math/acoshl.c
    ${MUSL_SRC}/src/math/asin.c
    ${MUSL_SRC}/src/math/asinf.c
    ${MUSL_SRC}/src/math/asinh.c
    ${MUSL_SRC}/src/math/asinhf.c
    ${MUSL_SRC}/src/math/asinhl.c
    ${MUSL_SRC}/src/math/atan2.c
    ${MUSL_SRC}/src/math/atan2f.c
    ${MUSL_SRC}/src/math/atan2l.c
    ${MUSL_SRC}/src/math/atan.c
    ${MUSL_SRC}/src/math/atanf.c
    ${MUSL_SRC}/src/math/atanh.c
    ${MUSL_SRC}/src/math/atanhf.c
    ${MUSL_SRC}/src/math/atanhl.c
    ${MUSL_SRC}/src/math/atanl.c
    ${MUSL_SRC}/src/math/cbrt.c
    ${MUSL_SRC}/src/math/cbrtf.c
    ${MUSL_SRC}/src/math/cbrtl.c
    ${MUSL_SRC}/src/math/ceil.c
    ${MUSL_SRC}/src/math/ceilf.c
    ${MUSL_SRC}/src/math/ceill.c
    ${MUSL_SRC}/src/math/copysign.c
    ${MUSL_SRC}/src/math/copysignf.c
    ${MUSL_SRC}/src/math/copysignl.c
    ${MUSL_SRC}/src/math/__cos.c
    ${MUSL_SRC}/src/math/cos.c
    ${MUSL_SRC}/src/math/__cosdf.c
    ${MUSL_SRC}/src/math/cosf.c
    ${MUSL_SRC}/src/math/cosh.c
    ${MUSL_SRC}/src/math/coshf.c
    ${MUSL_SRC}/src/math/coshl.c
    ${MUSL_SRC}/src/math/__cosl.c
    ${MUSL_SRC}/src/math/cosl.c
    ${MUSL_SRC}/src/math/erf.c
    ${MUSL_SRC}/src/math/erff.c
    ${MUSL_SRC}/src/math/erfl.c
    ${MUSL_SRC}/src/math/exp10.c
    ${MUSL_SRC}/src/math/exp10f.c
    ${MUSL_SRC}/src/math/exp10l.c
    ${MUSL_SRC}/src/math/exp2.c
    ${MUSL_SRC}/src/math/exp2f.c
    ${MUSL_SRC}/src/math/exp.c
    ${MUSL_SRC}/src/math/expf.c
    ${MUSL_SRC}/src/math/expl.c
    ${MUSL_SRC}/src/math/expm1.c
    ${MUSL_SRC}/src/math/expm1f.c
    ${MUSL_SRC}/src/math/expm1l.c
    ${MUSL_SRC}/src/math/__expo2.c
    ${MUSL_SRC}/src/math/__expo2f.c
    ${MUSL_SRC}/src/math/fabs.c
    ${MUSL_SRC}/src/math/fabsf.c
    ${MUSL_SRC}/src/math/fabsl.c
    ${MUSL_SRC}/src/math/fdim.c
    ${MUSL_SRC}/src/math/fdimf.c
    ${MUSL_SRC}/src/math/fdiml.c
    ${MUSL_SRC}/src/math/finite.c
    ${MUSL_SRC}/src/math/finitef.c
    ${MUSL_SRC}/src/math/floor.c
    ${MUSL_SRC}/src/math/floorf.c
    ${MUSL_SRC}/src/math/floorl.c
    ${MUSL_SRC}/src/math/fma.c
    ${MUSL_SRC}/src/math/fmaf.c
    ${MUSL_SRC}/src/math/fmal.c
    ${MUSL_SRC}/src/math/fmax.c
    ${MUSL_SRC}/src/math/fmaxf.c
    ${MUSL_SRC}/src/math/fmaxl.c
    ${MUSL_SRC}/src/math/fmin.c
    ${MUSL_SRC}/src/math/fminf.c
    ${MUSL_SRC}/src/math/fminl.c
    ${MUSL_SRC}/src/math/fmod.c
    ${MUSL_SRC}/src/math/fmodf.c
    ${MUSL_SRC}/src/math/fmodl.c
    ${MUSL_SRC}/src/math/__fpclassify.c
    ${MUSL_SRC}/src/math/__fpclassifyf.c
    ${MUSL_SRC}/src/math/__fpclassifyl.c
    ${MUSL_SRC}/src/math/frexp.c
    ${MUSL_SRC}/src/math/frexpf.c
    ${MUSL_SRC}/src/math/frexpl.c
    ${MUSL_SRC}/src/math/hypot.c
    ${MUSL_SRC}/src/math/hypotf.c
    ${MUSL_SRC}/src/math/hypotl.c
    ${MUSL_SRC}/src/math/ilogb.c
    ${MUSL_SRC}/src/math/ilogbf.c
    ${MUSL_SRC}/src/math/ilogbl.c
    ${MUSL_SRC}/src/math/__invtrigl.c
    ${MUSL_SRC}/src/math/j0.c
    ${MUSL_SRC}/src/math/j0f.c
    ${MUSL_SRC}/src/math/j1.c
    ${MUSL_SRC}/src/math/j1f.c
    ${MUSL_SRC}/src/math/jn.c
    ${MUSL_SRC}/src/math/jnf.c
    ${MUSL_SRC}/src/math/ldexp.c
    ${MUSL_SRC}/src/math/ldexpf.c
    ${MUSL_SRC}/src/math/ldexpl.c
    ${MUSL_SRC}/src/math/lgamma.c
    ${MUSL_SRC}/src/math/lgammaf.c
    ${MUSL_SRC}/src/math/lgammaf_r.c
    ${MUSL_SRC}/src/math/lgammal.c
    ${MUSL_SRC}/src/math/lgamma_r.c
    ${MUSL_SRC}/src/math/llrint.c
    ${MUSL_SRC}/src/math/llrintf.c
    ${MUSL_SRC}/src/math/llrintl.c
    ${MUSL_SRC}/src/math/llround.c
    ${MUSL_SRC}/src/math/llroundf.c
    ${MUSL_SRC}/src/math/llroundl.c
    ${MUSL_SRC}/src/math/log10.c
    ${MUSL_SRC}/src/math/log10f.c
    ${MUSL_SRC}/src/math/log10l.c
    ${MUSL_SRC}/src/math/log1p.c
    ${MUSL_SRC}/src/math/log1pf.c
    #${MUSL_SRC}src//math/log1pl.c
    ${MUSL_SRC}/src/math/log2.c
    ${MUSL_SRC}/src/math/log2f.c
    #${MUSL_SRC}src//math/log2l.c
    ${MUSL_SRC}/src/math/logb.c
    ${MUSL_SRC}/src/math/logbf.c
    ${MUSL_SRC}/src/math/logbl.c
    ${MUSL_SRC}/src/math/log.c
    ${MUSL_SRC}/src/math/logf.c
    #${MUSL_SRC}src//math/logl.c
    ${MUSL_SRC}/src/math/lrint.c
    ${MUSL_SRC}/src/math/lrintf.c
    ${MUSL_SRC}/src/math/lrintl.c
    ${MUSL_SRC}/src/math/lround.c
    ${MUSL_SRC}/src/math/lroundf.c
    ${MUSL_SRC}/src/math/lroundl.c
    ${MUSL_SRC}/src/math/modf.c
    ${MUSL_SRC}/src/math/modff.c
    ${MUSL_SRC}/src/math/modfl.c
    ${MUSL_SRC}/src/math/nan.c
    ${MUSL_SRC}/src/math/nanf.c
    ${MUSL_SRC}/src/math/nanl.c
    ${MUSL_SRC}/src/math/nearbyint.c
    ${MUSL_SRC}/src/math/nearbyintf.c
    ${MUSL_SRC}/src/math/nearbyintl.c
    ${MUSL_SRC}/src/math/nextafter.c
    ${MUSL_SRC}/src/math/nextafterf.c
    ${MUSL_SRC}/src/math/nextafterl.c
    ${MUSL_SRC}/src/math/nexttoward.c
    ${MUSL_SRC}/src/math/nexttowardf.c
    ${MUSL_SRC}/src/math/nexttowardl.c
    ${MUSL_SRC}/src/math/__polevll.c
    ${MUSL_SRC}/src/math/pow.c
    ${MUSL_SRC}/src/math/powf.c
    ${MUSL_SRC}/src/math/powl.c
    ${MUSL_SRC}/src/math/remainder.c
    ${MUSL_SRC}/src/math/remainderf.c
    ${MUSL_SRC}/src/math/remainderl.c
    ${MUSL_SRC}/src/math/__rem_pio2.c
    ${MUSL_SRC}/src/math/__rem_pio2f.c
    ${MUSL_SRC}/src/math/__rem_pio2_large.c
    ${MUSL_SRC}/src/math/__rem_pio2l.c
    ${MUSL_SRC}/src/math/remquo.c
    ${MUSL_SRC}/src/math/remquof.c
    ${MUSL_SRC}/src/math/remquol.c
    ${MUSL_SRC}/src/math/rint.c
    ${MUSL_SRC}/src/math/rintf.c
    ${MUSL_SRC}/src/math/rintl.c
    ${MUSL_SRC}/src/math/round.c
    ${MUSL_SRC}/src/math/roundf.c
    ${MUSL_SRC}/src/math/roundl.c
    ${MUSL_SRC}/src/math/scalb.c
    ${MUSL_SRC}/src/math/scalbf.c
    ${MUSL_SRC}/src/math/scalbln.c
    ${MUSL_SRC}/src/math/scalblnf.c
    ${MUSL_SRC}/src/math/scalblnl.c
    ${MUSL_SRC}/src/math/scalbn.c
    ${MUSL_SRC}/src/math/scalbnf.c
    ${MUSL_SRC}/src/math/scalbnl.c
    ${MUSL_SRC}/src/math/__signbit.c
    ${MUSL_SRC}/src/math/__signbitf.c
    ${MUSL_SRC}/src/math/__signbitl.c
    ${MUSL_SRC}/src/math/signgam.c
    ${MUSL_SRC}/src/math/significand.c
    ${MUSL_SRC}/src/math/significandf.c
    ${MUSL_SRC}/src/math/__sin.c
    ${MUSL_SRC}/src/math/sin.c
    ${MUSL_SRC}/src/math/sincos.c
    ${MUSL_SRC}/src/math/sincosf.c
    ${MUSL_SRC}/src/math/sincosl.c
    ${MUSL_SRC}/src/math/__sindf.c
    ${MUSL_SRC}/src/math/sinf.c
    ${MUSL_SRC}/src/math/sinh.c
    ${MUSL_SRC}/src/math/sinhf.c
    ${MUSL_SRC}/src/math/sinhl.c
    ${MUSL_SRC}/src/math/__sinl.c
    ${MUSL_SRC}/src/math/sinl.c
    ${MUSL_SRC}/src/math/__tan.c
    ${MUSL_SRC}/src/math/tan.c
    ${MUSL_SRC}/src/math/__tandf.c
    ${MUSL_SRC}/src/math/tanf.c
    ${MUSL_SRC}/src/math/tanh.c
    ${MUSL_SRC}/src/math/tanhf.c
    ${MUSL_SRC}/src/math/tanhl.c
    ${MUSL_SRC}/src/math/__tanl.c
    ${MUSL_SRC}/src/math/tanl.c
    ${MUSL_SRC}/src/math/tgamma.c
    ${MUSL_SRC}/src/math/tgammaf.c
    ${MUSL_SRC}/src/math/tgammal.c
    ${MUSL_SRC}/src/math/trunc.c
    ${MUSL_SRC}/src/math/truncf.c
    ${MUSL_SRC}/src/math/truncl.c
    ${MUSL_SRC}/src/misc/basename.c
    ${MUSL_SRC}/src/misc/dirname.c
    ${MUSL_SRC}/src/mman/mmap.c
    ${MUSL_SRC}/src/mman/munmap.c
    ${MUSL_SRC}/src/multibyte/btowc.c
    ${MUSL_SRC}/src/multibyte/c16rtomb.c
    ${MUSL_SRC}/src/multibyte/c32rtomb.c
    ${MUSL_SRC}/src/multibyte/internal.c
    ${MUSL_SRC}/src/multibyte/mblen.c
    ${MUSL_SRC}/src/multibyte/mbrlen.c
    ${MUSL_SRC}/src/multibyte/mbrtoc16.c
    ${MUSL_SRC}/src/multibyte/mbrtoc32.c
    ${MUSL_SRC}/src/multibyte/mbrtowc.c
    ${MUSL_SRC}/src/multibyte/mbsinit.c
    ${MUSL_SRC}/src/multibyte/mbsnrtowcs.c
    ${MUSL_SRC}/src/multibyte/mbsrtowcs.c
    ${MUSL_SRC}/src/multibyte/mbstowcs.c
    ${MUSL_SRC}/src/multibyte/mbtowc.c
    ${MUSL_SRC}/src/multibyte/wcrtomb.c
    ${MUSL_SRC}/src/multibyte/wcsnrtombs.c
    ${MUSL_SRC}/src/multibyte/wcsrtombs.c
    ${MUSL_SRC}/src/multibyte/wcstombs.c
    ${MUSL_SRC}/src/multibyte/wctob.c
    ${MUSL_SRC}/src/multibyte/wctomb.c
    ${MUSL_SRC}/src/network/ntohl.c
    ${MUSL_SRC}/src/network/ntohs.c
    ${MUSL_SRC}/src/prng/drand48.c
    ${MUSL_SRC}/src/prng/lcong48.c
    ${MUSL_SRC}/src/prng/lrand48.c
    ${MUSL_SRC}/src/prng/mrand48.c
    ${MUSL_SRC}/src/prng/__rand48_step.c
    #${MUSL_SRC}/src/prng/rand.c
    ${MUSL_SRC}/src/prng/random.c
    ${MUSL_SRC}/src/prng/rand_r.c
    ${MUSL_SRC}/src/prng/__seed48.c
    ${MUSL_SRC}/src/prng/seed48.c
    ${MUSL_SRC}/src/prng/srand48.c
    #${MUSL_SRC}src//regex/fnmatch.c
    #${MUSL_SRC}src//regex/glob.c
    #${MUSL_SRC}src//regex/regcomp.c
    #${MUSL_SRC}src//regex/regerror.c
    #${MUSL_SRC}src//regex/regexec.c
    #${MUSL_SRC}src//regex/tre-mem.c
    ${MUSL_SRC}/src/search/hsearch.c
    ${MUSL_SRC}/src/search/insque.c
    ${MUSL_SRC}/src/search/lsearch.c
    ${MUSL_SRC}/src/search/tsearch_avl.c
    ${MUSL_SRC}/src/stat/stat.c
    ${MUSL_SRC}/src/stdio/asprintf.c
    ${MUSL_SRC}/src/stdio/asprintf.c
    ${MUSL_SRC}/src/stdio/clearerr.c
    ${MUSL_SRC}/src/stdio/dprintf.c
    ${MUSL_SRC}/src/stdio/ext2.c
    ${MUSL_SRC}/src/stdio/ext.c
    ${MUSL_SRC}/src/stdio/fclose.c
    ${MUSL_SRC}/src/stdio/__fclose_ca.c
    ${MUSL_SRC}/src/stdio/__fdopen.c
    ${MUSL_SRC}/src/stdio/feof.c
    ${MUSL_SRC}/src/stdio/ferror.c
    ${MUSL_SRC}/src/stdio/fflush.c
    ${MUSL_SRC}/src/stdio/fgetc.c
    ${MUSL_SRC}/src/stdio/fgetln.c
    ${MUSL_SRC}/src/stdio/fgetpos.c
    ${MUSL_SRC}/src/stdio/fgets.c
    ${MUSL_SRC}/src/stdio/fgetwc.c
    ${MUSL_SRC}/src/stdio/fgetws.c
    ${MUSL_SRC}/src/stdio/fileno.c
    ${MUSL_SRC}/src/stdio/flockfile.c
    ${MUSL_SRC}/src/stdio/fmemopen.c
    ${MUSL_SRC}/src/stdio/__fmodeflags.c
    ${MUSL_SRC}/src/stdio/fopen.c
    ${MUSL_SRC}/src/stdio/fopencookie.c
    ${MUSL_SRC}/src/stdio/__fopen_rb_ca.c
    ${MUSL_SRC}/src/stdio/fprintf.c
    ${MUSL_SRC}/src/stdio/fputc.c
    ${MUSL_SRC}/src/stdio/fputs.c
    ${MUSL_SRC}/src/stdio/fputwc.c
    ${MUSL_SRC}/src/stdio/fputws.c
    ${MUSL_SRC}/src/stdio/fread.c
    ${MUSL_SRC}/src/stdio/freopen.c
    ${MUSL_SRC}/src/stdio/fscanf.c
    ${MUSL_SRC}/src/stdio/fseek.c
    ${MUSL_SRC}/src/stdio/fsetpos.c
    ${MUSL_SRC}/src/stdio/ftell.c
    ${MUSL_SRC}/src/stdio/ftrylockfile.c
    ${MUSL_SRC}/src/stdio/funlockfile.c
    ${MUSL_SRC}/src/stdio/fwide.c
    ${MUSL_SRC}/src/stdio/fwprintf.c
    ${MUSL_SRC}/src/stdio/fwrite.c
    ${MUSL_SRC}/src/stdio/fwscanf.c
    ${MUSL_SRC}/src/stdio/getc.c
    ${MUSL_SRC}/src/stdio/getchar.c
    ${MUSL_SRC}/src/stdio/getchar_unlocked.c
    ${MUSL_SRC}/src/stdio/getc_unlocked.c
    ${MUSL_SRC}/src/stdio/getdelim.c
    ${MUSL_SRC}/src/stdio/getline.c
    ${MUSL_SRC}/src/stdio/gets.c
    ${MUSL_SRC}/src/stdio/getw.c
    ${MUSL_SRC}/src/stdio/getwc.c
    ${MUSL_SRC}/src/stdio/getwchar.c
    ${MUSL_SRC}/src/stdio/__lockfile.c
    ${MUSL_SRC}/src/stdio/ofl_add.c
    ${MUSL_SRC}/src/stdio/ofl.c
    ${MUSL_SRC}/src/stdio/open_memstream.c
    ${MUSL_SRC}/src/stdio/open_wmemstream.c
    ${MUSL_SRC}/src/stdio/__overflow.c
    ${MUSL_SRC}/src/stdio/pclose.c
    ${MUSL_SRC}/src/stdio/perror.c
    ${MUSL_SRC}/src/stdio/printf.c
    ${MUSL_SRC}/src/stdio/putc.c
    ${MUSL_SRC}/src/stdio/putchar.c
    ${MUSL_SRC}/src/stdio/putchar_unlocked.c
    ${MUSL_SRC}/src/stdio/putc_unlocked.c
    ${MUSL_SRC}/src/stdio/puts.c
    ${MUSL_SRC}/src/stdio/putw.c
    ${MUSL_SRC}/src/stdio/putwc.c
    ${MUSL_SRC}/src/stdio/putwchar.c
    ${MUSL_SRC}/src/stdio/remove.c
    ${MUSL_SRC}/src/stdio/rename.c
    ${MUSL_SRC}/src/stdio/rewind.c
    ${MUSL_SRC}/src/stdio/scanf.c
    ${MUSL_SRC}/src/stdio/setbuf.c
    ${MUSL_SRC}/src/stdio/setbuffer.c
    ${MUSL_SRC}/src/stdio/setlinebuf.c
    ${MUSL_SRC}/src/stdio/setvbuf.c
    ${MUSL_SRC}/src/stdio/snprintf.c
    ${MUSL_SRC}/src/stdio/sprintf.c
    ${MUSL_SRC}/src/stdio/sscanf.c
    ${MUSL_SRC}/src/stdio/stderr.c
    ${MUSL_SRC}/src/stdio/stdin.c
    ${MUSL_SRC}/src/stdio/__stdio_close.c
    ${MUSL_SRC}/src/stdio/__stdio_exit.c
    ${MUSL_SRC}/src/stdio/__stdio_read.c
    ${MUSL_SRC}/src/stdio/__stdio_seek.c
    ${MUSL_SRC}/src/stdio/__stdio_write.c
    ${MUSL_SRC}/src/stdio/stdout.c
    ${MUSL_SRC}/src/stdio/__stdout_write.c
    ${MUSL_SRC}/src/stdio/__string_read.c
    ${MUSL_SRC}/src/stdio/swprintf.c
    ${MUSL_SRC}/src/stdio/swscanf.c
    ${MUSL_SRC}/src/stdio/__toread.c
    ${MUSL_SRC}/src/stdio/__towrite.c
    ${MUSL_SRC}/src/stdio/__uflow.c
    ${MUSL_SRC}/src/stdio/ungetc.c
    ${MUSL_SRC}/src/stdio/ungetwc.c
    ${MUSL_SRC}/src/stdio/vasprintf.c
    ${MUSL_SRC}/src/stdio/vdprintf.c
    ${MUSL_SRC}/src/stdio/vfprintf.c
    ${MUSL_SRC}/src/stdio/vfscanf.c
    ${MUSL_SRC}/src/stdio/vfwprintf.c
    ${MUSL_SRC}/src/stdio/vfwscanf.c
    ${MUSL_SRC}/src/stdio/vprintf.c
    ${MUSL_SRC}/src/stdio/vscanf.c
    ${MUSL_SRC}/src/stdio/vsnprintf.c
    ${MUSL_SRC}/src/stdio/vsprintf.c
    ${MUSL_SRC}/src/stdio/vsscanf.c
    ${MUSL_SRC}/src/stdio/vswprintf.c
    ${MUSL_SRC}/src/stdio/vswscanf.c
    ${MUSL_SRC}/src/stdio/vwprintf.c
    ${MUSL_SRC}/src/stdio/vwscanf.c
    ${MUSL_SRC}/src/stdio/wprintf.c
    ${MUSL_SRC}/src/stdio/wscanf.c
    ${MUSL_SRC}/src/stdlib/abs.c
    ${MUSL_SRC}/src/stdlib/atof.c
    ${MUSL_SRC}/src/stdlib/atoi.c
    ${MUSL_SRC}/src/stdlib/atol.c
    ${MUSL_SRC}/src/stdlib/atoll.c
    ${MUSL_SRC}/src/stdlib/bsearch.c
    ${MUSL_SRC}/src/stdlib/labs.c
    ${MUSL_SRC}/src/stdlib/llabs.c
    ${MUSL_SRC}/src/stdlib/qsort.c
    ${MUSL_SRC}/src/stdlib/strtod.c
    ${MUSL_SRC}/src/stdlib/strtol.c
    ${MUSL_SRC}/src/stdlib/wcstod.c
    ${MUSL_SRC}/src/stdlib/wcstol.c
    ${MUSL_SRC}/src/string/bcmp.c
    ${MUSL_SRC}/src/string/bcopy.c
    ${MUSL_SRC}/src/string/bzero.c
    ${MUSL_SRC}/src/string/index.c
    ${MUSL_SRC}/src/string/memccpy.c
    ${MUSL_SRC}/src/string/memchr.c
    ${MUSL_SRC}/src/string/memcmp.c
    ${MUSL_SRC}/src/string/memcpy.c
    ${MUSL_SRC}/src/string/memmem.c
    ${MUSL_SRC}/src/string/memmove.c
    ${MUSL_SRC}/src/string/mempcpy.c
    ${MUSL_SRC}/src/string/memrchr.c
    ${MUSL_SRC}/src/string/memset.c
    ${MUSL_SRC}/src/string/rindex.c
    ${MUSL_SRC}/src/string/stpcpy.c
    ${MUSL_SRC}/src/string/stpncpy.c
    ${MUSL_SRC}/src/string/strcasecmp.c
    ${MUSL_SRC}/src/string/strcasestr.c
    ${MUSL_SRC}/src/string/strcat.c
    ${MUSL_SRC}/src/string/strchr.c
    ${MUSL_SRC}/src/string/strchrnul.c
    ${MUSL_SRC}/src/string/strcmp.c
    ${MUSL_SRC}/src/string/strcpy.c
    ${MUSL_SRC}/src/string/strcspn.c
    ${MUSL_SRC}/src/string/strdup.c
    ${MUSL_SRC}/src/string/strerror_r.c
    ${MUSL_SRC}/src/string/strlcat.c
    ${MUSL_SRC}/src/string/strlcpy.c
    ${MUSL_SRC}/src/string/strlen.c
    ${MUSL_SRC}/src/string/strncasecmp.c
    ${MUSL_SRC}/src/string/strncat.c
    ${MUSL_SRC}/src/string/strncmp.c
    ${MUSL_SRC}/src/string/strncpy.c
    ${MUSL_SRC}/src/string/strndup.c
    ${MUSL_SRC}/src/string/strnlen.c
    ${MUSL_SRC}/src/string/strpbrk.c
    ${MUSL_SRC}/src/string/strrchr.c
    ${MUSL_SRC}/src/string/strsep.c
    ${MUSL_SRC}/src/string/strspn.c
    ${MUSL_SRC}/src/string/strstr.c
    ${MUSL_SRC}/src/string/strtok.c
    ${MUSL_SRC}/src/string/strtok_r.c
    ${MUSL_SRC}/src/string/strverscmp.c
    ${MUSL_SRC}/src/string/swab.c
    ${MUSL_SRC}/src/string/wcpcpy.c
    ${MUSL_SRC}/src/string/wcpncpy.c
    ${MUSL_SRC}/src/string/wcscasecmp.c
    ${MUSL_SRC}/src/string/wcscasecmp_l.c
    ${MUSL_SRC}/src/string/wcscat.c
    ${MUSL_SRC}/src/string/wcschr.c
    ${MUSL_SRC}/src/string/wcscmp.c
    ${MUSL_SRC}/src/string/wcscpy.c
    ${MUSL_SRC}/src/string/wcscspn.c
    ${MUSL_SRC}/src/string/wcsdup.c
    ${MUSL_SRC}/src/string/wcslen.c
    ${MUSL_SRC}/src/string/wcsncasecmp.c
    ${MUSL_SRC}/src/string/wcsncasecmp_l.c
    ${MUSL_SRC}/src/string/wcsncat.c
    ${MUSL_SRC}/src/string/wcsncmp.c
    ${MUSL_SRC}/src/string/wcsncpy.c
    ${MUSL_SRC}/src/string/wcsnlen.c
    ${MUSL_SRC}/src/string/wcspbrk.c
    ${MUSL_SRC}/src/string/wcsrchr.c
    ${MUSL_SRC}/src/string/wcsspn.c
    ${MUSL_SRC}/src/string/wcsstr.c
    ${MUSL_SRC}/src/string/wcstok.c
    ${MUSL_SRC}/src/string/wcswcs.c
    ${MUSL_SRC}/src/string/wmemchr.c
    ${MUSL_SRC}/src/string/wmemcmp.c
    ${MUSL_SRC}/src/string/wmemcpy.c
    ${MUSL_SRC}/src/string/wmemmove.c
    ${MUSL_SRC}/src/string/wmemset.c
    ${MUSL_SRC}/src/thread/__lock.c
    ${MUSL_SRC}/src/thread/__wait.c
    ${MUSL_SRC}/src/time/clock_gettime.c
    ${MUSL_SRC}/src/time/gettimeofday.c
    ${MUSL_SRC}/src/time/gmtime.c
    ${MUSL_SRC}/src/time/gmtime_r.c
    ${MUSL_SRC}/src/time/__map_file.c
    ${MUSL_SRC}/src/time/__month_to_secs.c
    ${MUSL_SRC}/src/time/mktime.c
    ${MUSL_SRC}/src/time/nanosleep.c
    ${MUSL_SRC}/src/time/__secs_to_tm.c
    ${MUSL_SRC}/src/time/__tz.c
    ${MUSL_SRC}/src/time/time.c
    ${MUSL_SRC}/src/time/__tm_to_secs.c
    ${MUSL_SRC}/src/time/__year_to_secs.c
    ${MUSL_SRC}/src/unistd/close.c
    ${MUSL_SRC}/src/unistd/dup.c
    ${MUSL_SRC}/src/unistd/dup3.c
    ${CMAKE_CURRENT_LIST_DIR}/enc/optee/errno.c
    ${CMAKE_CURRENT_LIST_DIR}/enc/optee/sbrk.c
    ${CMAKE_CURRENT_LIST_DIR}/enc/optee/strerror.c
    ${CMAKE_CURRENT_LIST_DIR}/enc/optee/syscalls.c
    ${CMAKE_CURRENT_LIST_DIR}/enc/optee/sysconf.c)
set(LIBC_C_SRC ${LIBC_C_SRC} PARENT_SCOPE)
