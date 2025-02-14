# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

file(MAKE_DIRECTORY
  "C:/Users/agras/pico/pico-examples/universal/wrapper"
  "C:/Users/agras/pico/pico-examples/build/universal/blink_universal/rp2350-riscv/wrapper"
  "C:/Users/agras/pico/pico-examples/build/universal/pioasm"
  "C:/Users/agras/pico/pico-examples/build/universal/pioasm/tmp"
  "C:/Users/agras/pico/pico-examples/build/universal/pioasm/src/blink_universal_rp2350-riscv-stamp"
  "C:/Users/agras/pico/pico-examples/build/universal/pioasm/src"
  "C:/Users/agras/pico/pico-examples/build/universal/pioasm/src/blink_universal_rp2350-riscv-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "C:/Users/agras/pico/pico-examples/build/universal/pioasm/src/blink_universal_rp2350-riscv-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "C:/Users/agras/pico/pico-examples/build/universal/pioasm/src/blink_universal_rp2350-riscv-stamp${cfgdir}") # cfgdir has leading slash
endif()
