FROM centos:centos7

ENV \
    LC_ALL=en_US.UTF-8                \
    BUILD_DEPENDENCIES="              \
        autoconf                      \
        automake                      \
        libtool                       \
        mingw32-cairo                 \
        mingw32-dlfcn                 \
        mingw32-gcc                   \
        mingw32-libjpeg-turbo         \
        mingw32-libpng"

COPY . /guac

RUN yum -y update                        && \
    yum -y install epel-release          && \
    yum -y install $BUILD_DEPENDENCIES   && \
    yum clean all
