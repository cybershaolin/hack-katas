__What is Steganography?__  
Steganography comes from the greek words `steganos` which means 'covered' or 'concealed' and `graphine` which means writing. Hence, Steganography means concealed writing.  

Steganography is the technique of hiding secretive data in ordinary non-secret messages most commonly in images or audio files. The secret data is then extracted using steganography extraction methods.  

Stegenography is a very common technique used by spies they use this to communicate stealthily.    

__steghide__  

We are going to be using a tool called steghide that can hide data in images or extract data that are hidden in images.  


First navigate into the `stego` folder in the is in nested under the folder called `reuben` in the `home` directory.  

Type `cd ..`{{execute}} and press enter to navigate to the parent (previous) directory.  
Then type `ls`{{execute}} and type enter to list the contents of that directory.  

You will notice that there is a directory called `stego` in there. Now navigate to that `stego` directory by using the `cd` command. Type `cd stego` from the `reuben` directory.
Then type `ls`{{execute}} and type enter to list the contents of that directory.  

__The hacker bros - More than what meets the eye__  
You should see a image named `hacker_bros.png`. In order to see the image, there are a few things you can do.
Click on the Tab that says `HackerBros Website`. This should open up your default browser and display a web page with the image in it.

The web page will give you a description about the image and then inform you that `There is more to this than what meets the eye` and that there is a `hidden message` that you must try to uncover.  

This informs you that Steganography is being used to hide a message inside the `hacker_bros.png` image file, some information is hidden in the image.

To find out what the `hidden message` is, we need to extract the message from the image itself.  

__An enigma__  
Usually a secret steganography message would require a password to extract the data/message. In this case the password is `enigma`.  

To extract the message, we need to specify the steganography file (-sf), a password (-p) and the file to extract the message/data to i.e., the extracted file (-xf).  

Type `steghide extract -sf hacker_bros.png -p enigma -xf message.txt`{{execute}} and press enter.   

Now type `ls`{{execute}}. You should see a file called `message.txt`.  

Try reading the contents of the `message.txt` file using the `cat` command.   

Type `cat message.txt`{{execute}} and press enter.  

You should see some garbled text that looks like this.    
`CkFsd2F5cyB1c2UgeW91ciBjeWJlciBza2lsbHMgZm9yIHRoZSBnb29kIG9mIGh1bWFuaXR5LiAKClJldWJlbiBSQVBzdDRyIFBhdWwgYWthIFRoZSBDeWJlciBOaW5qYQoK`  

__Something Basic - An encoded secret__    
The content of the `message.txt` look garbled and is not humanly intelligible because it is either encrypted or encoded. In this case, the message is encoded.  

So to read the message, we will use the `base64 -d` command which will decode the encoded text.  

Type `base64 -d message.txt`{{execute}} and press enter.
The dash d (-d) stands for decode.  

If the command runs successfully, you should see a quote that says.  
`Always use your cyber skills for the good of humanity.

Reuben RAPst4r Paul aka The Cyber Ninja`.  
