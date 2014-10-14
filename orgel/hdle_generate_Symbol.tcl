lappend auto_path "C:/lscc/diamond/3.3_x64/data/script"
package require symbol_generation

set ::bali::Para(MODNAME) top_layer
set ::bali::Para(PACKAGE) {"C:/lscc/diamond/3.3_x64/cae_library/vhdl_packages/vdbs"}
set ::bali::Para(PRIMITIVEFILE) {"C:/lscc/diamond/3.3_x64/cae_library/synthesis/vhdl/machxo2.vhd"}
set ::bali::Para(FILELIST) {"C:/Users/Spikee/Desktop/orgel/impl1/source/Clock_Generator.vhd=work" "C:/Users/Spikee/Desktop/orgel/impl1/source/Const_Key.vhd=work" "C:/Users/Spikee/Desktop/orgel/impl1/source/FleaFPGA_2v5_top.vhd=work" "C:/Users/Spikee/Desktop/orgel/impl1/source/Key2_Pulselenght.vhd=work" "C:/Users/Spikee/Desktop/orgel/impl1/source/Pulselenght2_Audio.vhd=work" "C:/Users/Spikee/Desktop/orgel/impl1/source/readkey.vhd=work" "C:/Users/Spikee/Desktop/orgel/impl1/source/showkey.vhd=work" "C:/Users/Spikee/Desktop/orgel/impl1/source/testbank.vhd=work" "C:/Users/Spikee/Desktop/orgel/impl1/source/Tone_Generator.vhd=work" "C:/Users/Spikee/Desktop/orgel/impl1/source/top_layer.vhd=work" }
set ::bali::Para(INCLUDEPATH) {}
puts "set parameters done"
::bali::GenerateSymbol
