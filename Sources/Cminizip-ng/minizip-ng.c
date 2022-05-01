//
//  minizip-ng.c
//  
//
//  Created by Jaehong Kang on 2022/05/01.
//

#include "../../ThirdParty/minizip-ng/mz_crypt.c"
#include "../../ThirdParty/minizip-ng/mz_os.c"
#include "../../ThirdParty/minizip-ng/mz_strm.c"
#include "../../ThirdParty/minizip-ng/mz_strm_buf.c"
#include "../../ThirdParty/minizip-ng/mz_strm_mem.c"
#include "../../ThirdParty/minizip-ng/mz_strm_split.c"
#include "../../ThirdParty/minizip-ng/mz_zip.c"
#include "../../ThirdParty/minizip-ng/mz_zip_rw.c"

#ifdef HAVE_LIBCOMP
#include "../../ThirdParty/minizip-ng/mz_strm_libcomp.c"
#endif

#ifdef HAVE_ZLIB
#include "../../ThirdParty/minizip-ng/mz_strm_zlib.c"
#endif

#if __APPLE__
#include "../../ThirdParty/minizip-ng/mz_crypt_apple.c"
#else
#include "../../ThirdParty/minizip-ng/mz_crypt_openssl.c"
#endif

#ifdef HAVE_PKCRYPT
#include "../../ThirdParty/minizip-ng/mz_strm_pkcrypt.c"
#endif

#ifdef HAVE_WZAES
#include "../../ThirdParty/minizip-ng/mz_strm_wzaes.c"
#endif

#if __has_include(<unistd.h>)
#include "../../ThirdParty/minizip-ng/mz_os_posix.c"
#include "../../ThirdParty/minizip-ng/mz_strm_os_posix.c"
#endif

#ifdef HAVE_BZIP2
#include "../../ThirdParty/minizip-ng/mz_strm_bzip.c"
#endif
