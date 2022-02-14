MAKEFLAGS+="-j -l $(shell grep -c ^processor /proc/cpuinfo) "

x86_compile:
	gcc ./helloworld.cpp -lstdc++ -o helloworld.x86

arm_compile:
	aarch64-linux-gnu-gcc ./helloworld.cpp -lstdc++ -o helloworld.arm

example:
	rm -rf ./temp
	git clone git@github.com:strace/strace.git ./temp
	cd ./temp && \
	   ./bootstrap && \
	   ./configure --build x86_64-pc-linux-gnu --host aarch64-linux-gnu LDFLAGS="-static -pthread" --enable-mpers=check && \
	   make && \
	   mv ./src/strace ../
	rm -rf ./temp

clean:
	rm -f ./*.arm
	rm -f ./*.x86
