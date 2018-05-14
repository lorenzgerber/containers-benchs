#!/bin/bash
echo "Iozone: Performance Test of File I/O" > docker_io.out
echo "Version $Revision: 3.465 $" >> docker_io.out
echo "Compiled for 64 bit mode." >> docker_io.out
echo "Build: linux-AMD64" >> docker_io.out
echo "	" >> docker_io.out
echo "                                                              random    random     bkwd    record    stride                                    
              kB  reclen    write  rewrite    read    reread    read     write     read   rewrite      read   fwrite frewrite    fread  freread" >> docker_io.out
for i in {1..10}
do
	docker run --rm --mount source=myvol,target=/tmp lorenzgerber/iozone ./iozone –Ra –g 2G -f /tmp/testfile > tmp.out && sed -n '26 p' tmp.out >> docker_io.out
done
