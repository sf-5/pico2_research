# == DO NOT EDIT THE FOLLOWING LINES for the Raspberry Pi Pico VS Code Extension to work ==
if(WIN32)
    set(USERHOME $ENV{USERPROFILE})
else()
    set(USERHOME $ENV{HOME})
endif()
set(sdkVersion 2.1.0)
set(toolchainVersion 13_3_Rel1)
set(picotoolVersion 2.1.0)
set(picoVscode ${USERHOME}/.pico-sdk/cmake/pico-vscode.cmake)
if (EXISTS ${picoVscode})
    include(${picoVscode})
endif()
# ====================================================================================
set(PICO_BOARD pico CACHE STRING "Board type")

add_executable(hello_universal
        hello_universal.c
        )

# pull in common dependencies
target_link_libraries(hello_universal pico_stdlib)

# enable usb output and uart output
pico_enable_stdio_uart(hello_universal 1)
pico_enable_stdio_usb(hello_universal 1)

# create map/bin/hex/uf2 file etc.
pico_add_extra_outputs(hello_universal)
