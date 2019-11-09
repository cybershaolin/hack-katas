Once the CyberShaolin Learning environment has been


The first thing we are going to do is hack the `etc/passwd` & `etc/shadow` file, this is where the users passwords are hashed and stored. The `etc/passwd` stores all the data about the user and the `etc/shadow` is the hashed password value, but you need both to crack the password.  

The first step is to navigate to the home folder type `cd home`{{execute}}. and `ls`{{execute}}    

You should see the name reuben this is a user account. After that we are going to combine the two files using the unshadow command type `unshadow etc/passwd etc/shadow > /home/reuben/etc_passwords.db`{{execute}}. Now type `ls`{{execute}} you should see a file called `etc_passwords.db`.  

Finally we will use john to crack the password type `john etc_passwords.db`{{execute}} it may take a minute to crack, but the credentials should be displayed on the screen. If you missed or just want to see the credentials you can type `john etc_passwords.db --show`.  
