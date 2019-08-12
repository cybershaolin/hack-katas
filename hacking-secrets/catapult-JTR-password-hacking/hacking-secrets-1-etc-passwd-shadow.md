The first thing we are going to do is hack the `etc/passwd` & `etc/shadow` file, this is where the users passwords are hashed and stored. The `etc/passwd` stores all the data about the user and the `etc/shadow` is the hashed password value, but you need both to crack the password.

The first step is to navigate to the home folder type `cd home`{{execute}}. and `ls`{{execute}}  

You should see the name reuben this is a user account. After that we are going to combine the two files using the unshadow command type `unshadow`  
