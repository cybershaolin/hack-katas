Once the CyberShaolin Learning environment has been launched, you should see a terminal where you can type in commands.

Generally the first thing we will do is to generate the passwords file, but for this learning activity, the password file (called `etc_passwords.db`) is provided for you. You can directly use that.
To crack (find out) the password, we will use the tool John The Ripper (JTR) or simply `john`. In the terminal window, type `john etc_passwords.db`{{execute}}. It may take a minute to crack, but the credentials should be displayed on the screen. If you missed or just want to see the credentials you can type `john etc_passwords.db --show`.

__How to Generate the Password Hash File?__

In a Linux OS, the password hashes are in the shadow file and the user information is in the passwd file. The `etc/passwd` stores all the data about the user and the `etc/shadow` is the hashed password value, and we will need both to crack the password. We would combine these two files using the `unshadow` command.

First navigate to the home folder by typing `cd home`{{execute}}. and then type `ls`{{execute}}    
You should see the name `reuben`. This is a user account. After that we are going to combine the two files using the unshadow command. Type `unshadow etc/passwd etc/shadow > /home/reuben/etc_passwords.db`{{execute}}. Now type `ls`{{execute}} you should see a file called `etc_passwords.db`.
