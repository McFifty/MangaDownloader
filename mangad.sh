#!/bin/bash

#link for jojo stone ocean

cap3=https://cdn.mangaworld.io/chapters/jojos-bizarre-adventure-part-6-stone-ocean-official-colored-5fa8d61524c23a71c88d88ac/volume-01-5fa8d6d66af12c711b46b39e/capitolo-03-5fa8d6d66af12c711b46b3a1
cap2=https://cdn.mangaworld.io/chapters/jojos-bizarre-adventure-part-6-stone-ocean-official-colored-5fa8d61524c23a71c88d88ac/volume-01-5fa8d6d66af12c711b46b39e/capitolo-02-5fa8d6d66af12c711b46b3a0
cap4=https://cdn.mangaworld.io/chapters/jojos-bizarre-adventure-part-6-stone-ocean-official-colored-5fa8d61524c23a71c88d88ac/volume-01-5fa8d6d66af12c711b46b39e/capitolo-04-5fa8d6d66af12c711b46b3a2
cap5=https://cdn.mangaworld.io/chapters/jojos-bizarre-adventure-part-6-stone-ocean-official-colored-5fa8d61524c23a71c88d88ac/volume-01-5fa8d6d66af12c711b46b39e/capitolo-05-5fa8d6d66af12c711b46b3a3
cap6=https://cdn.mangaworld.io/chapters/jojos-bizarre-adventure-part-6-stone-ocean-official-colored-5fa8d61524c23a71c88d88ac/volume-01-5fa8d6d66af12c711b46b39e/capitolo-06-5fa8d6d66af12c711b46b3a4
cap7=https://cdn.mangaworld.io/chapters/jojos-bizarre-adventure-part-6-stone-ocean-official-colored-5fa8d61524c23a71c88d88ac/volume-01-5fa8d6d66af12c711b46b39e/capitolo-07-5fa8d6d66af12c711b46b3a5
cap8=https://cdn.mangaworld.io/chapters/jojos-bizarre-adventure-part-6-stone-ocean-official-colored-5fa8d61524c23a71c88d88ac/volume-01-5fa8d6d66af12c711b46b39e/capitolo-08-5fa8d6d66af12c711b46b3a6

vol=1
cap=5

for i in {1..500}
do
	
	wget $cap5/$i.jpg
	
	if [[ $? -ne 0 ]]; then
  	  echo "FINISHED"
			mkdir vol.$vol
			mkdir vol.$vol/cap.$cap
			convert *.jpg -auto-orient vol.$vol.cap.$cap.pdf
			mv vol.$vol.cap.$cap.pdf $PWD/vol.$vol/cap.$cap
			mv *.jpg $PWD/vol.$vol/cap.$cap
			notify-send "FINITO vol$vol cap$cap"
    	exit 1; 
	fi

done
