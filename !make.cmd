set path=%path%;D:\SPC\verilator\bin
set PERL=D:/Spc/Git/usr/bin
set VERILATOR_ROOT=d:\SPC\verilator

verilator -CFLAGS -Dmain=SDL_main -LDFLAGS "-lmingw32 -lSDL2main -lSDL2 -mwindows" --cc top_bounce.sv 
rem verilator --cc %1 
cd obj_dir
rem mingw32-make -f Vtop_square.mk
 mingw32-make -f Vtop_bounce.mk
rem mingw32-make -f Vcounter.mk 

cd ..
rem g++ -o counter.exe  -Iinclude main_counter.cpp include/verilated.cpp ^
rem obj_dir/Vcounter__ALL.a
g++ -o  top_bounce.exe  -Iinclude main_bounce.cpp include/verilated.cpp ^
	-lmingw32 -lSDL2main -lSDL2 -mwindows obj_dir/Vtop_bounce__ALL.a 