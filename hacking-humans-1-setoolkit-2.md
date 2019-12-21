In the previous lessons you learned about what phishing is. This lesson will use a tool called setoolkit to create a fake cloned website and harvest their credentials.

Normally, the first thing we will do is to start setoolkit you can do this by typing './setoolkit' within the 'set' folder, but we have already do that for you.

You should see a list of different options we can choose from.  

Since we are going to be tricking the user into giving secretive information of theirs away. We are going to be executing a `Social Engineering Attack` or option number `1`{{execute}}.  

Because we are creating a fake cloned website we will select the `Website Attack Vectors` option type `2`{{execute}}.  

We are going to be stealing the victims username and password otherwise known as `Credential Harvesting` type option number `3`{{execute}}.  

We will be creating a site that looks and seems exactly like another website. Select the `Site Cloner` choice number `2`{{execute}}.  

__IP Address__
The IP address also known as the internet protocol address is a unique series of numbers that shows your device is either a host network or connected to a host network so you can browse and search the internet. Our computer is provided this IP address by the router and internet network we are connected to.  

The reason why we need to type in our IP address in setoolkit is because when the user types in their credentials and the username and password have been stolen the faked cloned website needs to send the credentials back to our computer. The only way to do that is by using our unique internet protocol identifier (IP address). Also our IP address will be hosting the cloned website so that is what the user will be connecting to.

The IP address we will be using the IP address of the webserver where the setoolkit is running. DON'T use localhost:8099 which we would use if we were testing it locally.  
In our case, since the instance is running within our learning environment, we will use the URL and specify that as the IP address. This includes the domain, port, host and environment information. To find out this URL, click on the Tab will says 'Hacker Website' and it will open a page in your local browser.

Copy the URL address that is displayed and paste it into a text editor like Notepad (in Windows) or TextEdit in Mac so you can delete the words "https://" and the last training forward slash ("/") at the end of the URL address you copied.
NOTE: Your URL may be different, but it should look something like when you paste it `https://2886795365-8099-cykoria01.environments.katacoda.com/`. It should be changed to `2886795365-8099-cykoria01.environments.katacoda.com`
Now copy this URL and paste it into the setoolkit window where it asks for IP Address
NOTE: The reason we do the step of using a text editor to strip out the unneeded protocol ("https://") and trailing forward slash ("/") is because it is difficult to edit within the setoolkit window once the URL is pasted.

Press enter to continue.

Now you should be prompted with a text that talks about the website we will be cloning. Type in `https://twitter.com/login`{{execute}}. This is the website we will be cloning.

You will see a message like
`[*] Cloning the website: https://twitter.com/login
[*] This could take a little bit...

The best way to use this attack is if username and password form
fields are available. Regardless, this captures all POSTs on a website.
[*] You may need to copy /var/www/* into /var/www/html depending on where your directory structure is.
Press {return} if you understand what we're saying here.`

Press `enter` or `return` {{exectue}}

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

Let us go to that folder, type Ctrl-C then enter and then type `exit`{{execute}} to get out of the setoolkit tool. Now `cd /var/www/html` to navigate to that directory.

Let's pretend that you sent the victim with an email saying to check out a cool new post and you gave them this link. You can go even to the extent of masking the IP so the link looks legitimate like twitter.com (for time purposes we won't though). Normally people would click on it. Now that we have the attackers side set up let us play the victim.

Click on the `Hacker Website` tab. It will open up the page and show the cloned (fake) website. You should see a website that looks likes the exact same as the real http://www.twitter.com/login. Type in a fake username and password it can be anything. An example would be klms_student (username) and klmsR0x (password).  

Now go back to the `Terminal` window. Type `ls -la`{{execute}} and see that there is a harvester file with a new timestamp. The credentials we hacked will be in this file. The harvester may be different for all of us, but you can `cat` your unique harvester file. Once you cat it you should see something like with the credentials that got hacked. 
`(
    [username_or_email] => klms_student
    [password] => klmsR0x
)`
