Once the CyberShaolin Learning environment has been launched, you should see a terminal where you can type in commands.

First navigate to the home folder by typing `cd home`{{execute}}. and then type `ls`{{execute}}    
You should see the name `reuben`. This is a user account.

Generally the first thing we will do is to generate the passwords file, but for this learning activity, the password file (called `etc_passwords.db`) is provided for you. You can directly use that.
To crack (find out) the password, we will use the tool John The Ripper (JTR) or simply `john`. In the terminal window, type `john etc_passwords.db`{{execute}}. It may take a minute to crack, but the credentials should be displayed on the screen. If you missed or just want to see the credentials you can type `john etc_passwords.db --show`.
