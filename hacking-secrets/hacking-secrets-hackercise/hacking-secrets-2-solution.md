`cat README.md`{{execute}}
`cd home/`{{execute}}
`ls`{{execute}}
`cat DEBRIEF.md`{{execute}}
`cd Duke`{{execute}}
`ls`{{execute}}
`cat README.md`{{execute}}
`john etc_passwords.db --show`{{execute}}
`unzip hampshire.zip (use account password: blackpanther)`{{execute}}`
`cd hampshire`{{execute}}
`cat shh.msg`{{execute}}
`john -wordlist=spy_cities.txt ssh_duke.hash`{{execute}}
`unzip emails.zip (use shh_duke.hash password: bermuda)`{{execute}}
`cd emails`{{execute}}
`cat hack.msg`{{execute}}
(visit localhost:8080 on browser)
`steghide extract -sf TheBlackPanther.jpg (using chameleon)`{{execute}}
`cat realHack.msg`{{execute}}
`base64 -d realHack.msg`{{execute}}
