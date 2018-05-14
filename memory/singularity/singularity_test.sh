#!/bin/bash
## Clean the filesystem cache
sync && free > tmp.out

for i in {1..10}
do
	 	sudo singularity exec stream.img stream_benchmark > tmp.out && sed -n '27,30 p' tmp.out >> docker_stream.out
			sync && free > tmp.out
		done
