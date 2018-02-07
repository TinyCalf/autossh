# AUTOSSH
You can use autossh to connect to multiple servers through termial with just one simple command like `sv 2`

# install
clone this repository in ideal path
```bash
git clone ...
```
install expect on linux
```bash
apt install expect
```
install autossh
```bash
cd path/to/autossh/
./install
```
add your remote servers' information in ssh.config like
```
1   user    11.11.11.11  password     22    myserverA
2   user2   22.12.12.11  password2    22    myserverB
```
use autossh to connect to server. If you want to connect to myserverA above, type:
```bash
sv 1
```
All done, just that simple!
