In the previous lessons you learned about what phishing is. This lesson will use a tool called setoolkit to create a fake cloned website and harvest their credentials.

The first thing we are going to do is start setoolkit you can do this by typing `setoolkit`{{execute}}  

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

Now you should be prompted with a text that talks about the website we will be cloning. Type in `https://twitter.com/login`{{execute}}. This is the website we will be cloning. Once you have typed it in you will see a message about 3 lines up saying `All files are located under the Apache web root directory: /var/www/html` Let us go to that folder, type Ctrl-C then enter and then type `exit`{{execute}} to get out of the setoolkit tool. Now `cd /var/www/html` and navigate to that directory so once we act like the victim we can see the credentials

Let's pretend that you sent the victim with an email saying to check out a cool new post and you gave them this link. You can go even to the extent of masking the IP so the link looks legitimate like twitter.com (for time purposes we won't though). Normally people would click on it. Now that we have the attackers side set up let us play the victim. Go to your computers browser chrome or safari now type in the address bar the attackers ip address `localhost:8099`. You should see a website that looks likes the exact same as the real http://www.twitter.com/login. Type in a fake username and password it can be anything. An example would be klms_student (username) and klmsR0x (password).  

If we go back to the attackers box now we can `ls`{{execute}} and see that there is a harvester file the credentials will be in this file. The harvester may be different for all of us, but you have to cat your unique harvester file. Once you cat it you should see
        `(
            [username_or_email] => klms_student
            [password] => klmsR0x
        )`
