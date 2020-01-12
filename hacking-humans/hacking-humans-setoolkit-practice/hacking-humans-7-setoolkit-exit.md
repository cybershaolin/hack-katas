__setoolkit Exit__

To exit out of the setoolkit program and see the harvester log file, using the keyboard shortcut, press <kbd>Ctrl</kbd>+<kbd>C</kbd> on the terminal window.

You will get a notice stating that though you are exiting the program, the social engineering credential harvester request is still running and logging as shown below. `[*] Exiting the menu - note that everything is still running and logging under your web directory path: /var/www/html
{Press return to continue}`  

Press the `enter` key or `return` key to continue.

Then type `exit`{{execute}} in the prompt `set:webattack>` to get out of the setoolkit tool.  

Go to the next step.  
In the command prompt, type `cd /var/www/html`{{execute}} to navigate to directory where the log files are.  

Now go back to the `Terminal` window. Type `ls -la`{{execute}} and see that there is a harvester file with a new timestamp. E.g., `harvester_2020-01-11 21:39:55.714597.txt` The credentials we hacked will be in this file.  

You can read the contents of this file using the `cat` command. `cat` the harvester file with the latest timestamp.  
`Example: cat harvester_2020-01-11 21:39:55.714597.txt`

Once you `cat` that file, you should see something like with the credentials that got hacked in it.
`(
    [username_or_email] => CyberShaolin
    [password] => cyb3rn1nja
)`  

You have learned how to successfully social engineer and hack someone!  
