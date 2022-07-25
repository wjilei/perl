cmake_minimum_required(VERSION 3.0)

project(PERL)

MESSAGE(STATUS "This is BINARY dir " ${PERL_BINARY_DIR})
MESSAGE(STATUS "This is SOURCE dir " ${PERL_SOURCE_DIR})

add_custom_target(install_deps ALL
COMMAND cpanm  --verbose -n -L extlib --with-develop --mirror http://mirrors.163.com/cpan --mirror-only --installdeps ..
DEPENDS ${PERL_SOURCE_DIR}/cpanfile
)