#ifndef VERSION_H
#define VERSION_H

#ifndef VERSION_STR_POSTFIX
#define VERSION_STR_POSTFIX ""
#endif /* VERSION_STR_POSTFIX */

#ifndef REALTEK_WIFI_VENDOR
#define VERSION_STR "2.1-devel" VERSION_STR_POSTFIX
#else
#define VERSION_STR "(for rtl by rk 1.0) 2.1-devel" VERSION_STR_POSTFIX
#endif

#endif /* VERSION_H */
