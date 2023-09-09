#!/bin/bash
# Assemble-header function(s) support

# check cc65 compiler
check_cc65_env
# check lua vm
check_lua_env

# :: create a copy of previous compiled version
if [ -f "!${NES_OUTPUT_SIMPLE_NAME}.nes" ]; then
    cp -f !${NES_OUTPUT_SIMPLE_NAME}.nes !${NES_OUTPUT_SIMPLE_NAME}.old
fi

# :: launch preparation script and wait until finished
# need to install lua-5.3.x and configuration system environment variables!
lua preparations.lua
Return

# :: -U = no need to use .import
# :: -l = create listing file
# :: -g = create debug file
for cp_bank_asm in `ls copy_bank_*.asm`; do
	sign=0
	if  [[ "${NES_IGNORE_COMPILE_ASM_ARRAY}" != "" ]]; then
		for ignore in ${NES_IGNORE_COMPILE_ASM_ARRAY[@]}; do
			if [[ "${cp_bank_asm}" == "${ignore}" ]]; then
				sign=1
			fi
		done
	fi

	# nothing to do, ignore this .asm file! otherwise maybe has been occured error!
	if [[ "${sign}" -eq 1 ]]; then
		echowarn "${cp_bank_asm} has been ignored!";
		continue
	fi

    cp_bank_asm_without_suffix=${cp_bank_asm%.*}
    ca65 -U -l ${cp_bank_asm_without_suffix}.lst ${cp_bank_asm_without_suffix}.asm
done
