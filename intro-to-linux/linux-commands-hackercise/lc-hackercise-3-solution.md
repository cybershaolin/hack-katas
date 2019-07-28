Solution - Linux Commands Hackercise

The solution to the hackercise is given below, but we highly recommend that you try to 'hack' and solve it with the knowledge of Linux Commands that you have gained. If you are stuck, you can obviously look at the command(s) to run, but first try on your own.

Let us start by finding out where we are by using the __Print Working Directory__ command.  
`pwd`{{execute}}  
You will find out that you are in the `/` directory.

Now let us list the contents of this `/` directory using the __list__ command.  
`ls`{{execute}}
You notice that there is a file called `starting_scroll` in that directory along with many other directories as shown below.
`bin   dev  home  lib64  mnt  proc  run   srv              sys  training_hall  var
boot  etc  lib   media  opt  root  sbin  starting_scroll  tmp  usr`  

That looks like a good starting point. Let us read the contents of that file using the __cat__ command as shown below.
`cat starting_scroll`{{execute}}
When you read the contents of the `starting_scroll`, you will see a welcome message (as shown below) with the objective of this hackercise, which is to find the legendary Linux Command Dragon scroll. The message also instructs you to start by first locating Tiger.
`Welcome to the Cyber Dragon Warrior Linux Command Hackercise!
You are the Dragon Warrior and the only way to unlock your
full potential is by finding the Legendary Linux Command Dragon Scroll.
You might want to start by locating Tiger.
She knows where the Dragon Scroll is kept,
but she may not be to happy to see you.`

Let us try and find out where Tiger is by using the __locate__ command.
`locate Tiger`{{execute}}
You will see the following message displayed on the screen
`locate: warning: database '/var/cache/locate/locatedb' is more than 8 days old (actual age is 17.8 days)
/home/Tiger
/home/Tiger/message_from_tiger`
You may see a warning message saying that the locatedb database has not been updated in the past 8 days. You can safely ignore this warning. You will also see that the `Tiger` directory is in the `/home` directory and inside that `Tiger` directory is a file named message_from_tiger.  

__cd__


`cd home/Tiger`{{execute}}

`ls`{{execute}}

`cat message_from_tiger`{{execute}}

`locate training_hall`{{execute}}

`cd ../../training_hall`{{execute}}

`grep 'scroll' training_equipment`{{execute}}

`locate Monkey`{{execute}}

`cd ../home/Monkey/`{{execute}}

`ls`{{execute}}

`cat message_from_monkey`{{execute}}

`cd ../Mantis/`{{execute}}

`ls`{{execute}}

`cat message_from_mantis`{{execute}}

`tar -xvzf jars.tar`{{execute}}

`cd jars/`{{execute}}

`ls`{{execute}}

`tar -xvzf scrolls.tar`{{execute}}

`cd scrolls`{{execute}}

`ls`{{execute}}

`cat note_from_viper`{{execute}}

`cd ../../../Viper`{{execute}}

`ls`{{execute}}

`cat message_from_viper`{{execute}}

`cd scrolls`{{execute}}

`ls -la`{{execute}}

`cat scroll_7.txt`{{execute}}

`cd ../../Crane`{{execute}}

`ls`{{execute}}

`cat message_from_crane.txt`{{execute}}

`cd scrolls`{{execute}}

`diff3 scroll_1.txt scroll_2.txt scroll_3.txt`{{execute}}

`locate Shifu`{{execute}}

`cd /root/.Shifu/`{{execute}}

`ls`{{execute}}

`cat the_dragon_scroll.txt`{{execute}}
