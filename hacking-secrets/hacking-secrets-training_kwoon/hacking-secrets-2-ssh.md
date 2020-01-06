The way ssh (secure shell) works is it encrypts data (we will be encrypting with the RSA algorithim) using a encryption key. This encryption key has two parts the public key and the the private key. You can think about it this way half of the key is the public key and the other half is the private key to form the whole key you need both so you can unlock the door.  

Make sure that you are in the `reuben` folder. If you are not already there, then you can use the `cd home/reuben` command to get into that directory. Now Type `ls`{{execute}} and press enter. You will see a folder named `ssh_keys`. Navigate into that director by typing `cd ssh_keys`{{execute}}, and then type `ls`{{execute}} and press enter to list the contents of that directory.  

JTR actually has a program called `ssh2john` that will combine the public and private key making the hash file that we can crack, but we already did that for you. So you should see a hash file called `reuben_rsa.hash`.  

The next step is to crack the password by which this `reuben_rsa.hash` file is secured. We are going to use JTR, but this time we are going to input our own wordlist. JTR has a default wordlist that it uses if a wordlist is not provided.
 It is important to know how to use your own wordlists in case you need to crack a password that does not appear in the default wordlist. There are wordlists on the web that you can download for free or pay for. For this exercise, we have edited a wordlist on US cities. Note: Reuben and his family like to travel a lot and have been blessed to travel to nearly 30 countries and given keynote talks in over 10 of those 30 countries as of 2020.  So Reuben's password maybe a US city or one that he has made up.
 To crack that password, type in `john --wordlist=/usr/local/share/john/wordlists/us_cities.txt reuben_rsa.hash`{{execute}} and press enter.
 You will see that Reuben's password is a made up US city called 'Wolverine Lake'. 
