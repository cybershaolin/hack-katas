As a hacker, once the victim enters their username and password, we will want to capture that information. In order to do so, we will have to post that information to a location where we can access it. This is the postback IP address or the IP address of the server where the fake cloned website is running.

Normally, we can use `ifconfig` to find the IP address of the webserver, but since we are using a cloud learning environment, we will use the URL that is generated for us when the learning environment is setup.

<!-- This URL is `[[HOST_SUBDOMAIN]]-8099-[[KATACODA_HOST]].environments.katacoda.com`{{copy}} -->
This URL is {{TRAFFIC_HOST1_8099}}

You can click on the URL above to `copy` it or you can also select the URL shown above and copy it using the keyboard shortcut (<kbd>Ctrl</kbd>+<kbd>C</kbd>) if you are using Windows keyboard or <kbd>Cmd</kbd>+<kbd>C</kbd> if you are using Mac keyboard.  

Now in the terminal, where it asks for IP address, using the keyboard shortcuts, (<kbd>Ctrl</kbd>+<kbd>V</kbd> for Windows or <kbd>Cmd</kbd>+<kbd>V</kbd> for Macs), paste that copied URL.  

Then press the `enter` or `return` key to continue.  

Go to the next step.  
