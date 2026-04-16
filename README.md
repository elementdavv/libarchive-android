## libarchive-android

Extracted from [zhanghai's libarchive-android](https://github.com/zhanghai/libarchive-android)

[libarchive](https://github.com/libarchive/libarchive) bundled with
[libz](https://developer.android.com/ndk/guides/stable_apis#zlib_compression),
[libbz2](https://gitlab.com/bzip2/bzip2), [liblzma](https://github.com/tukaani-project/xz),
[liblz4](https://github.com/lz4/lz4), [libzstd](https://github.com/facebook/zstd) and
[libmbedcrypto](https://github.com/Mbed-TLS/mbedtls).

Built by Android NDK producing a shared c library(.so).
Useful in Android JNI project that need to call libarchive functions in C level.

### Usage
After configuring Android SDK, create the shared library(.so)

for debug version:
```
make
```
for release version:
```
make r
```
In a Android JNI build file(Android.mk or CMakeLists.txt), import libarchive as a new module,
for example:
```
include $(CLEAR_VARS)
LOCAL_MODULE += libarchive
LOCAL_SRC_FILES += $(libarchive_root)/build/intermediates/cmake/debug/obj/arm64-v8a/libarchive.so
include $(PREBUILT_SHARED_LIBRARY)
```
In main module:
```
...
LOCAL_C_INCLUDES += $(libarchive_root)/src/main/jni/external/libarchive/libarchive
LOCAL_SHARED_LIBRARIES := libarchive
...
```
then in source file of main module, libarchive's methods are all available.
