#!/bin/bash

vol=1
cap=2


#link

link=https://cdn.mangaworld.io/chapters/under-ninja-5f9f88409c5b631f15d58702/volume-01-5f9f88821eeb781e533160a3/capitolo-02-5f9f88821eeb781e533160a5/


for i in {30..500}
do
	
	wget $link/$i.png
	
	if [[ $? -ne 0 ]]; then
  	  echo "FINISHED"
			mkdir vol.$vol
			mkdir vol.$vol/cap.$cap
			convert *.png -auto-orient vol.$vol.cap.$cap.pdf
			mv vol.$vol.cap.$cap.pdf $PWD/vol.$vol/cap.$cap
			mv *.png $PWD/vol.$vol/cap.$cap
			notify-send "FINITO vol$vol cap$cap"
    	exit 1; 
	fi

done

