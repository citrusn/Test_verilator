#include <stdlib.h>
#include "obj_dir/Vcounter.h"

int main(int argc, char **argv) {
	// Initialize Verilators variables
	Verilated::commandArgs(argc, argv);

	// Create an instance of our module under test
	Vcounter *top_module = new Vcounter;

	// switch the clock
	int clock = 0;
	int num_cycles = 0;
	top_module->rst = 0;
	while( !Verilated::gotFinish() )
	{
		top_module->clk = clock;
		top_module->eval();
		printf("%d%02X\n", clock, top_module->q );
		clock ^= 1;
		num_cycles++;
		if( num_cycles==20 )
			break;
	}
	delete top_module;
	exit(EXIT_SUCCESS);
}