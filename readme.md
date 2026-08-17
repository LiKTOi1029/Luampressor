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
### 2026 8 17
I have been doing some research on exactly how I am supposed to do compression, and not gonna lie I really don't 
think the huffman compression algorithm is the most efficient way to do it. I am going to try something different. 
What I am thinking of doing is to come up with my own recipe for compression. The first, simplest idea that I have 
concocted in my freetime is this: What if I were to encode two bytes (or more if possible) into a single byte of 
compressed information? Well, I was pouring over the math and I don't think it's actually impossible. However, it 
is all about the algorithm which is compression the given information. The first thing we must consider is that 
the full range of visible characters able to be inputted from the standard keyboard excluding alt codes is a total 
of 95 different characters ` ;:'"[{]}\|,<.>/?-_=+~\!\@\#\$\%\^\&\*\(\)1234567890abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ` 
(note this list is missing \`, I don't know how to insert that using escape characters in markdown deal with it) 
I believe that these are all of the keystrokes which most users, programmers and not, use. Of course, there is one 
problem: I cannot encode images and videos like this perfectly and losslessly. The main caveat with the system 
I will propose now is that it is entirely catered towards text compression. Thus, if we were to move this immediately 
to the context of a video or image, we find that in fact the image and vidoe are not the same thing as readable, 
human language. Bytes in a computer's memory representing an image, for instance, are unable to be simplified 
down into some known-letters (as far as I know) and work based on the spelling restraints of said alphabet in the 
same way. I will explain more later in this readme update. Let us get on with some of the basic variables.\
\
Let us consider the variable $L$ as the number of $L$etters in the alphabet
