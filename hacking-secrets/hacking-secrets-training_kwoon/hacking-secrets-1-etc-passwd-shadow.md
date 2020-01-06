Once the CyberShaolin Learning environment has been launched, you should see a terminal where you can type in commands.

First navigate to the home folder by typing `cd home`{{execute}}. and then type `ls`{{execute}}    
You should see the name `reuben`. This is a user account.
Now navigate into the `reuben` directory using the `cd reuben`{{execute}} and press enter. Then type the list command to list out the files in that directory. Type `ls`{{execute}} and press enter.

Generally the first thing we will do is to generate the passwords file, but for this learning activity, the password file (called `etc_passwords.db`) is provided for you. You can directly use that.
To crack (find out) the password, we will use the tool John The Ripper (JTR) or simply `john`. In the terminal window, type `john etc_passwords.db`{{execute}}. It may take a minute to crack. When the password is cracked (known), you will see a message on the screen which says reads `Loaded 1 password hash`. To see the credentials (in this case password) on the screen, you can use the `--show` switch with your `john` command. Type `john etc_passwords.db --show` and press enter.
You will see that the password from the `etc_password.db` file is displayed on the screen. 
