`rmdir` stands for Remove directory.  

Sometimes you may want to or have to delete a directory or folder. Say you created a temporary directory called `tmp` or a top secret folder called `mySecretFiles` that will hold some secret files for a short amount of time. Once you no longer need those files or the directory, you can delete (or remove) it. This is where the `rmdir` command can help.  

If you are in the `myGames` directory, the type `cd ../`{{execute}} to go to its parent directory (e.g., `/root` or `/home`) so that you can delete the `myGames` directory that you created.  

Now type `rmdir myGames`{{execute}} and press enter.

Since you have the files that you created inside the directory, this command will fail and you will see something like  
`rmdir: failed to remove 'myGames/': Directory not empty`

To delete directory that have content inside them, you can use the `rm` command along with a switch called `-rf` which stands for recursive flush.

Try `rm -rf myGames`{{execute}} and press enter.  

__The DeathStars of the rm Commands__
Never ever, never ever, never ever run the following command   
`rm -rf *.*`  
unless you absolutely know that you are in the directory from which you want to delete ALL folders and files.   
The `*.*` here is a wildcard syntax to mean any files of any type.
