`cd` stands for Change Directory.  

In the previous step, you created a folder called `myGames`  

Now let us get into that directory. To do that, you will need to change your directory from where you are (in this case `/root`) to the `myGames` directory.  

Type `cd myGames`{{execute}} and press enter.  

You are now in the `myGames` directory.  

To be sure that you are in the `myGames` directory, what directory command do you think you can use.    

If you said, `pwd`, you got that right. The `pwd` or Print Working Directory command will show you that you are in the `myGames` directory.  

Now you can go ahead and create your favorite game files in this folder, but are we getting ahead of ourselves?  

To create files in this folder you can use the `touch` command. The `touch` command technically is to change the timestamp of existing files but we will use it for creating files.  

Type `touch fortnite.txt clashOfClans.txt halo.txt minecraft.txt borderlands.txt`{{execute}} and press enter.  

If the `touch` command runs successfully, it would create the files named in the command. To find out if it did, you can use the `ls`{{execute}} command in the `myGames` directory and that will show you the files you just created.  

__cd and ../(DotDotSlash))__  
In order to go to the previous folder, you can use the shortform `../` (DotDotSlash) along with the `cd` command.  
Since you are in the `myGames` directory now, you can go to the previous directory using the `cd ../`{{execute}} command.
