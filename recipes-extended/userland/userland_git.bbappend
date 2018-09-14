
SRCREV = "409dfcd90bae0a09b1b8c1f718a532728d26cde2"

# Use the date of the above commit as the package version. Update this when
# SRCREV is changed.
PV = "20180702"

FILESEXTRAPATHS_prepend := "${THISDIR}/userland:"

SRC_URI = "\
    git://github.com/${SRCFORK}/userland.git;protocol=git;branch=${SRCBRANCH} \
    file://0001-Allow-applications-to-set-next-resource-handle.patch \
    file://0002-wayland-Add-support-for-the-Wayland-winsys.patch \
    file://0003-wayland-Add-Wayland-example.patch \
    file://0004-wayland-egl-Add-bcm_host-to-dependencies.patch \
    file://0005-interface-remove-faulty-assert-to-make-weston-happy-.patch \
    file://0006-zero-out-wl-buffers-in-egl_surface_free.patch \
    file://0007-initialize-front-back-wayland-buffers.patch \
    file://0008-Remove-RPC_FLUSH.patch \
    file://0009-fix-cmake-dependency-race.patch \
    file://0010-Fix-for-framerate-with-nested-composition.patch \
    file://0011-build-shared-library-for-vchostif.patch \
    file://0012-implement-buffer-wrapping-interface-for-dispmanx.patch \
    file://0013-Implement-triple-buffering-for-wayland.patch \
    file://0014-GLES2-gl2ext.h-Define-GL_R8_EXT-and-GL_RG8_EXT_append.patch \
    file://0015-EGL-glplatform.h-define-EGL_CAST.patch \
    file://0016-Allow-multiple-wayland-compositor-state-data-per-pro.patch \
    file://0017-khronos-backport-typedef-for-EGL_EXT_image_dma_buf_i_append.patch \
    file://0018-Add-EGL_IMG_context_priority-related-defines_append.patch \
"
