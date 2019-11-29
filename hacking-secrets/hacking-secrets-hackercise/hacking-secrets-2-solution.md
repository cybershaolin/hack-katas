`cat README.md`{{execute}}  

`cd home/`{{execute}}  

`ls`{{execute}}  

`cat DEBRIEF.md`{{execute}}  

`cd Duke`{{execute}}  

`ls`{{execute}}  

`cat README.md`{{execute}}  

`john etc_passwords.db --show`{{execute}}  

`unzip hampshire.zip`{{execute}} (use account password: blackpanther)  

`cd hampshire`{{execute}}  

`cat shh.msg`{{execute}}  

`john -wordlist=spy_cities.txt ssh_duke.hash`{{execute}}  

`unzip emails.zip`{{execute}} (use shh_duke.hash password: bermuda)

`cd emails`{{execute}}  

`cat hack.msg`{{execute}}  

(visit localhost:8099 on browser)  

`cat password_hint.txt`{{execute}}

`steghide extract -sf TheBlackPanther.jpg`{{execute}} (using chameleon)  

`cat realHack.msg`{{execute}}  

`base64 -d realHack.msg`{{execute}}  
