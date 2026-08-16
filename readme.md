# Luampressor
Luampressor is just a program I am building to learn about compression algorithms and their inner workings. 
I aim to build a fully functioning compression algorithm for text files specifically, although I am also 
going to try my hand at compressing images, audio, video, etc in the near future.\
\
For the time being I will stick to my text compression. I will document my programming here starting today. 
Do keep in mind I added this repo two days into development. I will simply start from where I have left off. 
There will most likely also be experimatation in these and unstable builds. If there is no release build, that 
means I have not released a stable version yet. When I do release a stable version trust me you'll see it. 
One more important note, I am not an expert at anything. I just do things for fun.
### 2026 8 16
I decided to build a new input processing system for counting how many different kinds of words there are 
between each and every space, but I am going to organize them in another table so that the most common words 
are sorted from most-common being at the very top and least common being at the very bottom. I additionally will 
also add a counter for how long each of the most common words are (I.E. there is very little gain out of 
compressing a 1 letter word such as `I` or `a` in my opinion, but who knows I'm still bad at compression as we 
speak).