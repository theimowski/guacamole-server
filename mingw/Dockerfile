FROM centos:centos7

ENV \
    LC_ALL=en_US.UTF-8                \
    MINGW_HOME=/usr/i686-w64-mingw32/sys-root/mingw \
    BUILD_DEPENDENCIES="              \
        autoconf                      \
        automake                      \
        libtool                       \
        make                          \
        mingw32-cairo                 \
        mingw32-dlfcn                 \
        mingw32-gcc                   \
        mingw32-libjpeg-turbo         \
        mingw32-libpng                \
        uuid-devel"

COPY . /guac

RUN yum -y update                        && \
    yum -y install epel-release          && \
    yum -y install $BUILD_DEPENDENCIES   && \
    yum clean all                        && \
    cp /guac/mingw/libuuid-16.dll $MINGW_HOME/lib/libuuid.dll.a && \
    cp /usr/include/uuid.h $MINGW_HOME/include && \
    cd /guac/mingw && \
    ./build.sh
