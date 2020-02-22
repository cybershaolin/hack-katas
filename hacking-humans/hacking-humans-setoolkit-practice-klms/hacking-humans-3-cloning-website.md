You should see a prompt that says `set:webattack> Enter the url to clone:        `

The website you will be cloning today is https://skyward.pfisd.net/StudentSTS/. If you try to just enter this website into the suggested prompt box it will not work, because Skyward has some security measures built into place.

So what we did was we copied the HTML code from Skyward, removed the security measures and created a fake clone of Skyward.

Now to social engineer someone you still can't send them this fake cloned Skyward, because there is no code to harvest the credentials (username and password) just yet. So now we have to clone the clone to harvest the credentials.

So click on the tab that says Skyward. This is the cloned website which we are going to duplicate within the social engineering toolkit to harvest credentials. The URL for this website is `[[HOST_SUBDOMAIN]]-80-[[KATACODA_HOST]].environments.katacoda.com`{{copy}}

Then copy this link and paste it where it says `set:webattack> Enter the url to clone: `

Once you have pasted your prompt should look like ```set:webattack> Enter the url to clone: [[HOST_SUBDOMAIN]]-80-[[KATACODA_HOST]].environments.katacoda.com```

You will see a message as shown below:
```
[*] Cloning the website:
https://[[HOST_SUBDOMAIN]]-80-[[KATACODA_HOST]].environments.katacoda.com
[*] This could take a little bit...

The best way to use this attack is if username and password form fields are available. Regardless, this captures all POSTs on a website.

[*] You may need to copy /var/www/* into /var/www/html depending on where your directory structure is.
Press {return} if you understand what we're saying here.
```   

Press the `enter` or `return` key to continue.  

Go to the next step.  
