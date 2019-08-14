Stegenography comes from the greek words stegenos which stands for covered or concealed and graphine which means writing (concealed writing). It is the technique of hiding secretive data in ordinary non-secret messages most commonly in images, the secretive data is then extracted and can be seen. Stegenography is very common amongst spies they use this to communicate stealthily and effectively.  

We are going to be using a tool called steghide which can hide data in images or extract that data from images and see hidden data. The first thing we have to do is change directories to the stego folder in the user reuben type `cd /home/reuben/stego`{{execute}} then type `ls`{{execute}} to list the contents of that directory. You should see a image named `hacker_bros.png` if you would like to see the image go on your browser and navigate to the localhost.  

Now let us extract the data. Usually to extract the data from the image a password is needed to do so. In this case the password is enigma. Before we type in the last step let us understand what the command actually does. The first part of the command is `steghide extract -sf hacker_bros.png` this is saying use the tool steghide to extract from the image `hacker_bros.png`. The next part says `-p enigma` this is saying use the password `enigma` to extract the data. The last part of the command is says `-xf message.txt` this means extract the hidden message to a file called `message.txt`. Lastly let us put it together and type in `steghide extract -sf hacker_bros.png -p enigma -xf message.txt`{{execute}}.  

If you try to `cat message.txt`{{execute}} you will see garbled text that looks like this.  
`CkFsd2F5cyB1c2UgeW91ciBjeWJlciBza2lsbHMgZm9yIHRoZSBnb29kIG9mIGh1bWFuaXR5LiAKClJldWJlbiBSQVBzdDRyIFBhdWwgYWthIFRoZSBDeWJlciBOaW5qYQoK

`  
This is because it is base64 encoded. To decode it you have to use the `base64` command type `base64 -d message.txt`{{execute}} the dash d stands for decode the `message.txt`. You should see a quote that says.  
`Always use your cyber skills for the good of humanity.

Reuben RAPst4r Paul aka The Cyber Ninja`.
