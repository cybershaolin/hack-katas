__Harvested or Logged Credentials__

The setoolkit also logs the same information that you see displayed on the terminal window into a log file or harvester file. This harvester file is in the `/var/www/html` directory. The file is named with with the timestamp when the credential harvester attack was initiated.

In the command prompt, type `cd /var/www/html`{{execute}} to navigate to directory where the log files are.  

Type `ls -la`{{execute}} and see that there is a harvester file with a new timestamp - it should be the harvester file with the current date. E.g., `harvester_2020-01-11 21:39:55.714597.txt` The credentials we hacked will be in this file.  

Note: There may be other harvester files in that directory and so make sure that you see the one created with the timestamp when you were running the attack.

Go to the next step.

You can read the contents of this file using the `cat` command. `cat` the harvester file with the latest timestamp.  
`Example: cat harvester_2020-01-11 21:39:55.714597.txt`

Once you `cat` that file, you should see something like with the credentials that got hacked in it.
`(
    [username_or_email] => CyberShaolin
    [password] => cyb3rn1nja
)`  

You have learned how to successfully social engineer and hack someone!  
