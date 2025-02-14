# create linker script to run from elsewhere in SRAM
file(READ ${PICO_LINKER_SCRIPT_PATH}/memmap_no_flash.ld LINKER_SCRIPT)
string(REPLACE "RAM(rwx) : ORIGIN =  0x20000000, LENGTH = 512k" "RAM(rwx) : ORIGIN =  ${origin}, LENGTH = ${length}" LINKER_SCRIPT "${LINKER_SCRIPT}")
file(WRITE ${output_file} "${LINKER_SCRIPT}")
