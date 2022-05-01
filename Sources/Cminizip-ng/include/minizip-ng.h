//
//  minizip-ng.h
//  
//
//  Created by Jaehong Kang on 2022/05/01.
//

#ifndef minizip_ng_h
#define minizip_ng_h

#include "../../../ThirdParty/minizip-ng/mz.h"
#include "../../../ThirdParty/minizip-ng/mz_os.h"
#include "../../../ThirdParty/minizip-ng/mz_crypt.h"
#include "../../../ThirdParty/minizip-ng/mz_strm.h"
#include "../../../ThirdParty/minizip-ng/mz_strm_buf.h"
#include "../../../ThirdParty/minizip-ng/mz_strm_mem.h"
#include "../../../ThirdParty/minizip-ng/mz_strm_split.h"
#include "../../../ThirdParty/minizip-ng/mz_strm_os.h"
#include "../../../ThirdParty/minizip-ng/mz_zip.h"
#include "../../../ThirdParty/minizip-ng/mz_zip_rw.h"

#ifdef HAVE_LIBCOMP
#include "../../ThirdParty/minizip-ng/mz_strm_libcomp.h"
#endif

#ifdef HAVE_ZLIB
#include "../../ThirdParty/minizip-ng/mz_strm_zlib.h"
#endif

#endif /* minizip_ng_h */
