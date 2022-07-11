 Linux Assigment 3

1)  login into you linux terminal and check for IP address of your server. check if the server is reachable to outside world. Copy the ip address address and login using any of the client tools.

[nenda1@localhost ~]$ ping google.com -c 4
PING google.com (172.217.169.46) 56(84) bytes of data.
64 bytes from lhr48s08-in-f14.1e100.net (172.217.169.46): icmp_seq=1 ttl=128 time=142 ms
64 bytes from lhr48s08-in-f14.1e100.net (172.217.169.46): icmp_seq=2 ttl=128 time=145 ms
64 bytes from lhr48s08-in-f14.1e100.net (172.217.169.46): icmp_seq=3 ttl=128 time=143 ms
64 bytes from lhr48s08-in-f14.1e100.net (172.217.169.46): icmp_seq=4 ttl=128 time=152 ms

--- google.com ping statistics ---
4 packets transmitted, 4 received, 0% packet loss, time 3012ms
rtt min/avg/max/mdev = 142.529/145.772/152.407/3.969 ms
[nenda1@localhost ~]$ ifconfig
ens33: flags=4163<UP,BROADCAST,RUNNING,MULTICAST>  mtu 1500
        inet 192.168.122.129  netmask 255.255.255.0  broadcast 192.168.122.255
        inet6 fe80::2b59:da13:1b0d:ef12  prefixlen 64  scopeid 0x20<link>
        ether 00:0c:29:4b:f2:c3  txqueuelen 1000  (Ethernet)
        RX packets 455714  bytes 649825503 (619.7 MiB)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 88453  bytes 5545776 (5.2 MiB)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0

lo: flags=73<UP,LOOPBACK,RUNNING>  mtu 65536
        inet 127.0.0.1  netmask 255.0.0.0
        inet6 ::1  prefixlen 128  scopeid 0x10<host>
        loop  txqueuelen 1000  (Local Loopback)
        RX packets 20  bytes 1680 (1.6 KiB)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 20  bytes 1680 (1.6 KiB)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0

virbr0: flags=4099<UP,BROADCAST,MULTICAST>  mtu 1500
        inet 192.168.124.1  netmask 255.255.255.0  broadcast 192.168.124.255
        ether 52:54:00:f0:4a:fa  txqueuelen 1000  (Ethernet)
        RX packets 0  bytes 0 (0.0 B)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 0  bytes 0 (0.0 B)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0




2)  Check for login directory. Confirm if you are in user login home directory.  if not switch to root user and reboot

 [nenda1@localhost ~]$ whoami
nenda1
[nenda1@localhost ~]$ pwd
/home/nenda1



3) comfirm login user

 [nenda1@localhost ~]$ whoami
nenda1



4) Switch to root user home directory (/root)  (hint: su -  )

 [nenda1@localhost ~]$ su -
Password: 
Last login: Sat Jun 25 08:07:35 PDT 2022 on pts/0
[root@localhost ~]# 



5) Add a user called superuserluna and assign a password 

 bash-4.2$ su -
Password: 
Last login: Sat Jun 25 08:31:46 PDT 2022 on pts/0
[root@localhost ~]# useradd superuserluna
[root@localhost ~]# passwd superuserluna
Changing password for user superuserluna.
New password: 
Retype new password: 
passwd: all authentication tokens updated successfully.
[root@localhost ~]# 





6) As root user add superuserluna created above in sudoers file. NB: Don't use vi

 [root@localhost ~]# visudo
user    MACHINE=COMMANDS
##
## The COMMANDS section may have other options added to it.
##
## Allow root to run any commands anywhere
root    ALL=(ALL)       ALL
superuserluna  ALL=(ALL)    ALL

   



7) switch back to login  user using su - login_user or exit

[root@localhost ~]# exit
logout
[nenda1@localhost ~]$ 




8) confirm you are in home directory of login user

[nenda1@localhost ~]$ pwd
/home/nenda1
[nenda1@localhost ~]$ 




9) switch to supperuserluna created above

bash-4.2$ su superuserluna
Password: 
[superuserluna@localhost nenda1]$ 




10) confirm login user

[superuserluna@localhost nenda1]$ whoami
superuserluna
[superuserluna@localhost nenda1]$ 



11) confirm present working directory

[superuserluna@localhost nenda1]$ pwd
/home/nenda1



12) As superuserluna, create a user called superuserluna1 and assign password.

[superuserluna@localhost nenda1]$ sudo useradd superuserluna1

We trust you have received the usual lecture from the local System
Administrator. It usually boils down to these three things:

    #1) Respect the privacy of others.
    #2) Think before you type.
    #3) With great power comes great responsibility.

[sudo] password for superuserluna: 
[superuserluna@localhost nenda1]$ sudo passwd superuserluna1
Changing password for user superuserluna1.
New password: 
Retype new password: 
passwd: all authentication tokens updated successfully.




13) Create  a directory in superuserluna home director called  superuserlunadir

[superuserluna@localhost nenda1]$ sudo mkdir superuserlunadir




14) list and make sure the most resent directory is at the bottom .

[superuserluna@localhost nenda1]$ sudo ls -ltr
total 0
drwxr-xr-x. 2 nenda1 nenda1 6 Jun 22 17:10 Videos
drwxr-xr-x. 2 nenda1 nenda1 6 Jun 22 17:10 Templates
drwxr-xr-x. 2 nenda1 nenda1 6 Jun 22 17:10 Public
drwxr-xr-x. 2 nenda1 nenda1 6 Jun 22 17:10 Pictures
drwxr-xr-x. 2 nenda1 nenda1 6 Jun 22 17:10 Music
drwxr-xr-x. 2 nenda1 nenda1 6 Jun 22 17:10 Downloads
drwxr-xr-x. 2 nenda1 nenda1 6 Jun 22 17:10 Documents
drwxr-xr-x. 2 nenda1 nenda1 6 Jun 22 17:10 Desktop
drwxr-xr-x. 2 root   root   6 Jun 24 13:11 superuserdir
drwxr-xr-x. 2 root   root   6 Jun 24 13:15 superuserdir1
-rw-r--r--. 1 root   root   0 Jun 24 13:16 superuserfile1
-rw-rw-r--. 1 nenda1 nenda1 0 Jun 24 17:26 worryworry
drwxr-xr-x. 2 root   root   6 Jun 25 08:59 superuserlunadir

15) Change directory into superuserlunadir

[superuserluna@localhost nenda1]$ sudo cd superuserlunadir





16) confirm your present working directory

[superuserluna@localhost nenda1]$ pwd
/home/nenda1




17)  In superuserlunadir:   a) - create a directory called superuserlunadir1

           [superuserluna@localhost nenda1]$ sudo mkdir -pv superuserlunadir/superuserlunadir1
mkdir: created directory ‘superuserlunadir/superuserlunadir1




                                        b) - create a file using touch command called superuserlunafile1

                                      [superuserluna@localhost nenda1]$ sudo touch superuserlunafile1




                                       c) - create nested directory in superuserlunadir1 (hint=  mkdir -pv dir1/dir2/dir3/dir4)
                                        NB the nested directories should be created in superuserdir1

                                        [superuserluna@localhost nenda1]$ sudo mkdir -pv superuserlunadir/superuserlunadir1/dir1/dir2/dir3/dir4
mkdir: created directory ‘superuserlunadir/superuserlunadir1/dir1’
mkdir: created directory ‘superuserlunadir/superuserlunadir1/dir1/dir2’
mkdir: created directory ‘superuserlunadir/superuserlunadir1/dir1/dir2/dir3’
mkdir: created directory ‘superuserlunadir/superuserlunadir1/dir1/dir2/dir3/dir4



                                     d) - in your present working directory, create a file in dir3 called testfile3.txt
                                       (hint: touch dir1/dir2/dir3/testfile3)

                                       [superuserluna@localhost nenda1]$ sudo touch superuserlunadir/superuserlunadir1/dir1/dir2/dir3/testfile3.txt




                                    e)  list the content of dir3 from your present working directory

                                    [superuserluna@localhost nenda1]$ sudo ls -ltr superuserlunadir/superuserlunadir1/dir1/dir2/dir3
total 0
drwxr-xr-x. 2 root root 6 Jun 25 09:13 dir4
-rw-r--r--. 1 root root 0 Jun 25 09:16 testfile3.txt






18)  AS superuserluna1 add user superuserluna2  and assign password  (hint: useradd user_name)

  user    MACHINE=COMMANDS
##
## The COMMANDS section may have other options added to it.
##
## Allow root to run any commands anywhere
root    ALL=(ALL)       ALL
superuserluna  ALL=(ALL)    ALL
superuserluna1 ALL=(ALL)   ALL
## Allows members of the 'sys' group to run networking, software,
:wq!

[root@localhost ~]# visudo
[root@localhost ~]# exit
logout
[superuserluna@localhost nenda1]$ su superuserluna1
Password: 
[superuserluna1@localhost nenda1]$ 

[superuserluna1@localhost nenda1]$ sudo useradd superuserluna2

We trust you have received the usual lecture from the local System
Administrator. It usually boils down to these three things:

    #1) Respect the privacy of others.
    #2) Think before you type.
    #3) With great power comes great responsibility.

[sudo] password for superuserluna1: 

[sudo] password for superuserluna1: 
[superuserluna1@localhost nenda1]$ sudo passwd superuserluna2
Changing password for user superuserluna2.
New password: 
Retype new password: 
passwd: all authentication tokens updated successfully.




19) As superuserluna1 create a directory mysecondlunadir under root file system (root directory)

[superuserluna1@localhost nenda1]$ exit
exit
[superuserluna@localhost ~]$ cd /
[superuserluna@localhost /]$ su superuserluna1
Password: 
[superuserluna1@localhost /]$ pwd
/
[superuserluna1@localhost /]$ mkdir mysecondlunadir



20) Change ownership and group ownership of mysecondlunadir to superuserluna2 in one command

[superuserluna1@localhost /]$ sudo chown superuserluna2:superuserluna2 mysecondlunadir





21) As superuserluna1, create 2 files testfile3 and testfile4

[superuserluna1@localhost ~]$ touch testfile3 
[superuserluna1@localhost ~]$ touch testfile4




22) change the ownership of testfile3 to testuser5 and group to testuser6 (if these users don't exist, create them)

 [nenda1@localhost dir3]$ sudo chown testuser5:testuser6 testfile3.txt
[sudo] password for nenda1: 
[nenda1@localhost dir3]$ pwd
/home/nenda1/superuserlunadir/superuserlunadir1/dir1/dir2/dir3
[nenda1@localhost dir3]$ ll
total 0
drwxr-xr-x. 2 root      root      6 Jun 25 09:13 dir4
-rw-r--r--. 1 testuser5 testuser6 0 Jun 25 09:16 testfile3.txt





23)  change the ownership of dir2 to testuser5 and group to testuser5

 [nenda1@localhost dir2]$ pwd
/home/nenda1/superuserlunadir/superuserlunadir1/dir1/dir2
[nenda1@localhost dir2]$ cd ..
[nenda1@localhost dir1]$ ll
total 0
drwxr-xr-x. 3 root root 18 Jun 25 09:13 dir2
[nenda1@localhost dir1]$ sudo chown testuser5:testuser5 dir2
[nenda1@localhost dir1]$ pwd
/home/nenda1/superuserlunadir/superuserlunadir1/dir1
[nenda1@localhost dir1]$ ll
total 0
drwxr-xr-x. 3 testuser5 testuser5 18 Jun 25 09:13 dir2





24) create a file in root home directory called file1.txt

 [nenda1@localhost dir1]$ su -
Password: 
Last login: Sun Jun 26 21:23:35 PDT 2022 on pts/0
[root@localhost ~]# cd /
[root@localhost /]# touch file1.txt






25) Assign full permissions to owner,group and public on file1.txt

 [root@localhost /]# pwd
/
[root@localhost /]# ll
total 28
lrwxrwxrwx.   1 root           root              7 Jun 22 16:41 bin -> usr/bin
dr-xr-xr-x.   5 root           root           4096 Jun 22 17:07 boot
drwxr-xr-x.  19 root           root           3280 Jun 24 12:46 dev
drwxr-xr-x. 144 root           root           8192 Jun 26 21:24 etc
-rw-r--r--.   1 root           root              0 Jun 26 21:38 file1.txt
drwxr-xr-x.  14 root           root            222 Jun 25 11:14 home
lrwxrwxrwx.   1 root           root              7 Jun 22 16:41 lib -> usr/lib
lrwxrwxrwx.   1 root           root              9 Jun 22 16:41 lib64 -> usr/lib64
drwxr-xr-x.   2 root           root              6 Apr 10  2018 media
drwxr-xr-x.   2 root           root              6 Apr 10  2018 mnt
drwxr-xr-x.   2 superuserluna2 superuserluna2    6 Jun 25 10:06 mysecondlunadir
drwxr-xr-x.   3 root           root             16 Jun 22 16:53 opt
dr-xr-xr-x. 225 root           root              0 Jun 24 12:45 proc
dr-xr-x---.   7 root           root           4096 Jun 26 21:11 root
drwxr-xr-x.  43 root           root           1280 Jun 26 21:06 run
lrwxrwxrwx.   1 root           root              8 Jun 22 16:41 sbin -> usr/sbin
drwxr-xr-x.   2 root           root              6 Apr 10  2018 srv
dr-xr-xr-x.  13 root           root              0 Jun 24 12:45 sys
drwxrwxrwt.  26 root           root           4096 Jun 26 21:06 tmp
drwxr-xr-x.  13 root           root            155 Jun 22 16:41 usr
drwxr-xr-x.  21 root           root           4096 Jun 22 17:08 var
[root@localhost /]# sudo chown testuser6:superuserluna1 file1.txt
[root@localhost /]# ll
total 28
lrwxrwxrwx.   1 root           root              7 Jun 22 16:41 bin -> usr/bin
dr-xr-xr-x.   5 root           root           4096 Jun 22 17:07 boot
drwxr-xr-x.  19 root           root           3280 Jun 24 12:46 dev
drwxr-xr-x. 144 root           root           8192 Jun 26 21:24 etc
-rw-r--r--.   1 testuser6      superuserluna1    0 Jun 26 21:38 file1.txt
drwxr-xr-x.  14 root           root            222 Jun 25 11:14 home
lrwxrwxrwx.   1 root           root              7 Jun 22 16:41 lib -> usr/lib
lrwxrwxrwx.   1 root           root              9 Jun 22 16:41 lib64 -> usr/lib64
drwxr-xr-x.   2 root           root              6 Apr 10  2018 media
drwxr-xr-x.   2 root           root              6 Apr 10  2018 mnt
drwxr-xr-x.   2 superuserluna2 superuserluna2    6 Jun 25 10:06 mysecondlunadir
drwxr-xr-x.   3 root           root             16 Jun 22 16:53 opt
dr-xr-xr-x. 225 root           root              0 Jun 24 12:45 proc
dr-xr-x---.   7 root           root           4096 Jun 26 21:11 root
drwxr-xr-x.  43 root           root           1280 Jun 26 21:06 run
lrwxrwxrwx.   1 root           root              8 Jun 22 16:41 sbin -> usr/sbin
drwxr-xr-x.   2 root           root              6 Apr 10  2018 srv
dr-xr-xr-x.  13 root           root              0 Jun 24 12:45 sys
drwxrwxrwt.  26 root           root           4096 Jun 26 21:06 tmp
drwxr-xr-x.  13 root           root            155 Jun 22 16:41 usr
drwxr-xr-x.  21 root           root           4096 Jun 22 17:08 var




25)  change the ownship and group ownership of dir1 and its subdirectories to superuser1 and superuser2 respectively in one command  (hint:
chown -r)

[nenda1@localhost superuserlunadir1]$ sudo chown -R testuser5:testuser6 dir1
[nenda1@localhost superuserlunadir1]$ ls -l
total 0
drwxr-xr-x. 3 testuser5 testuser6 18 Jun 25 09:13 dir1





26) In user login home directory, create a file called file.txt1 and a directory called testdir1

 [nenda1@localhost ~]$ touch file.txt1
[nenda1@localhost ~]$ mkdir testdir1
[nenda1@localhost ~]$ pwd
/home/nenda1
[nenda1@localhost ~]$ ls -ltr
total 0
drwxr-xr-x. 2 nenda1 nenda1  6 Jun 22 17:10 Videos
drwxr-xr-x. 2 nenda1 nenda1  6 Jun 22 17:10 Templates
drwxr-xr-x. 2 nenda1 nenda1  6 Jun 22 17:10 Public
drwxr-xr-x. 2 nenda1 nenda1  6 Jun 22 17:10 Pictures
drwxr-xr-x. 2 nenda1 nenda1  6 Jun 22 17:10 Music
drwxr-xr-x. 2 nenda1 nenda1  6 Jun 22 17:10 Downloads
drwxr-xr-x. 2 nenda1 nenda1  6 Jun 22 17:10 Documents
drwxr-xr-x. 2 nenda1 nenda1  6 Jun 22 17:10 Desktop
drwxr-xr-x. 2 root   root    6 Jun 24 13:11 superuserdir
drwxr-xr-x. 2 root   root    6 Jun 24 13:15 superuserdir1
-rw-r--r--. 1 root   root    0 Jun 24 13:16 superuserfile1
-rw-rw-r--. 1 nenda1 nenda1  0 Jun 24 17:26 worryworry
drwxr-xr-x. 3 root   root   31 Jun 25 09:09 superuserlunadir
-rw-r--r--. 1 root   root    0 Jun 25 09:10 superuserlunafile1
-rw-rw-r--. 1 nenda1 nenda1  0 Jun 26 22:18 file.txt1
drwxrwxr-x. 2 nenda1 nenda1  6 Jun 26 22:18 testdir1





27) grant full permissions to owner, read/write to group and no permissions to public on testdir1

 drwxrwxr-x. 2 nenda1 nenda1  6 Jun 26 22:18 testdir1
[nenda1@localhost ~]$ sudo chmod 760 testdir1
[sudo] password for nenda1: 
[nenda1@localhost ~]$ ls -ltr
total 0
drwxr-xr-x. 2 nenda1 nenda1  6 Jun 22 17:10 Videos
drwxr-xr-x. 2 nenda1 nenda1  6 Jun 22 17:10 Templates
drwxr-xr-x. 2 nenda1 nenda1  6 Jun 22 17:10 Public
drwxr-xr-x. 2 nenda1 nenda1  6 Jun 22 17:10 Pictures
drwxr-xr-x. 2 nenda1 nenda1  6 Jun 22 17:10 Music
drwxr-xr-x. 2 nenda1 nenda1  6 Jun 22 17:10 Downloads
drwxr-xr-x. 2 nenda1 nenda1  6 Jun 22 17:10 Documents
drwxr-xr-x. 2 nenda1 nenda1  6 Jun 22 17:10 Desktop
drwxr-xr-x. 2 root   root    6 Jun 24 13:11 superuserdir
drwxr-xr-x. 2 root   root    6 Jun 24 13:15 superuserdir1
-rw-r--r--. 1 root   root    0 Jun 24 13:16 superuserfile1
-rw-rw-r--. 1 nenda1 nenda1  0 Jun 24 17:26 worryworry
drwxr-xr-x. 3 root   root   31 Jun 25 09:09 superuserlunadir
-rw-r--r--. 1 root   root    0 Jun 25 09:10 superuserlunafile1
-rw-rw-r--. 1 nenda1 nenda1  0 Jun 26 22:18 file.txt1
drwxrw----. 2 nenda1 nenda1  6 Jun 26 22:18 testdir1

28) Make backups of file.txt1 and testdir1 (backups should end with .bk_data_of_today)

 [nenda1@localhost ~]$ pwd
/home/nenda1
[nenda1@localhost ~]$ cp file.txt1 file.txt1.bk_data_of_today
[nenda1@localhost ~]$ ls -ltr
total 0
drwxr-xr-x. 2 nenda1 nenda1  6 Jun 22 17:10 Videos
drwxr-xr-x. 2 nenda1 nenda1  6 Jun 22 17:10 Templates
drwxr-xr-x. 2 nenda1 nenda1  6 Jun 22 17:10 Public
drwxr-xr-x. 2 nenda1 nenda1  6 Jun 22 17:10 Pictures
drwxr-xr-x. 2 nenda1 nenda1  6 Jun 22 17:10 Music
drwxr-xr-x. 2 nenda1 nenda1  6 Jun 22 17:10 Downloads
drwxr-xr-x. 2 nenda1 nenda1  6 Jun 22 17:10 Documents
drwxr-xr-x. 2 nenda1 nenda1  6 Jun 22 17:10 Desktop
drwxr-xr-x. 2 root   root    6 Jun 24 13:11 superuserdir
drwxr-xr-x. 2 root   root    6 Jun 24 13:15 superuserdir1
-rw-r--r--. 1 root   root    0 Jun 24 13:16 superuserfile1
-rw-rw-r--. 1 nenda1 nenda1  0 Jun 24 17:26 worryworry
drwxr-xr-x. 3 root   root   31 Jun 25 09:09 superuserlunadir
-rw-r--r--. 1 root   root    0 Jun 25 09:10 superuserlunafile1
-rw-rw-r--. 1 nenda1 nenda1  0 Jun 26 22:18 file.txt1
drwxrw----. 2 nenda1 nenda1  6 Jun 26 22:18 testdir1
-rw-rw-r--. 1 nenda1 nenda1  0 Jun 26 22:24 file.txt1.bk_data_of_today
[nenda1@localhost ~]$ cp -r testdir1 testdir1.bk_data_of_today
[
[nenda1@localhost ~]$ ls -ltr
total 0
drwxr-xr-x. 2 nenda1 nenda1  6 Jun 22 17:10 Videos
drwxr-xr-x. 2 nenda1 nenda1  6 Jun 22 17:10 Templates
drwxr-xr-x. 2 nenda1 nenda1  6 Jun 22 17:10 Public
drwxr-xr-x. 2 nenda1 nenda1  6 Jun 22 17:10 Pictures
drwxr-xr-x. 2 nenda1 nenda1  6 Jun 22 17:10 Music
drwxr-xr-x. 2 nenda1 nenda1  6 Jun 22 17:10 Downloads
drwxr-xr-x. 2 nenda1 nenda1  6 Jun 22 17:10 Documents
drwxr-xr-x. 2 nenda1 nenda1  6 Jun 22 17:10 Desktop
drwxr-xr-x. 2 root   root    6 Jun 24 13:11 superuserdir
drwxr-xr-x. 2 root   root    6 Jun 24 13:15 superuserdir1
-rw-r--r--. 1 root   root    0 Jun 24 13:16 superuserfile1
-rw-rw-r--. 1 nenda1 nenda1  0 Jun 24 17:26 worryworry
drwxr-xr-x. 3 root   root   31 Jun 25 09:09 superuserlunadir
-rw-r--r--. 1 root   root    0 Jun 25 09:10 superuserlunafile1
-rw-rw-r--. 1 nenda1 nenda1  0 Jun 26 22:18 file.txt1
drwxrw----. 2 nenda1 nenda1  6 Jun 26 22:18 testdir1
-rw-rw-r--. 1 nenda1 nenda1  0 Jun 26 22:24 file.txt1.bk_data_of_today
drwxrw----. 2 nenda1 nenda1  6 Jun 26 22:24 testdir1.bk_data_of_today




29) copy testdir1 to dir3 with same name (hint cp -r )

 [nenda1@localhost ~]$ sudo cp -r testdir1 superuserlunadir/superuserlunadir1/dir1/dir2/dir3/testdir1
[sudo] password for nenda1: 
[nenda1@localhost ~]$ cd superuserlunadir
[nenda1@localhost superuserlunadir]$ ls
superuserlunadir1
[nenda1@localhost superuserlunadir]$ cd superuserlunadir1
[nenda1@localhost superuserlunadir1]$ ls
dir1
[nenda1@localhost superuserlunadir1]$ cd dir1
[nenda1@localhost dir1]$ ls
dir2
[nenda1@localhost dir1]$ cd dir2
[nenda1@localhost dir2]$ ls
dir3
[nenda1@localhost dir2]$ cd dir3
[nenda1@localhost dir3]$ ls
dir4  testdir1  testfile3.txt
[nenda1@localhost dir3]$ 





30) move testdir1 to dir4 with a different 

 [nenda1@localhost ~]$ sudo mv testdir1 testdir1_new superuserlunadir/superuserlunadir1/dir1/dir2/dir3/dir4





31) create testdir4 from backup that was taken. Make sure backup is present after creating testdir4.

 [nenda1@localhost ~]$ sudo cp -R testdir1.bk_data_of_today testdir4
[nenda1@localhost ~]$ ls -l
total 0
drwxr-xr-x. 2 nenda1 nenda1  6 Jun 22 17:10 Desktop
drwxr-xr-x. 2 nenda1 nenda1  6 Jun 22 17:10 Documents
drwxr-xr-x. 2 nenda1 nenda1  6 Jun 22 17:10 Downloads
-rw-rw-r--. 1 nenda1 nenda1  0 Jun 26 22:18 file.txt1
-rw-rw-r--. 1 nenda1 nenda1  0 Jun 26 22:24 file.txt1.bk_data_of_today
drwxr-xr-x. 2 nenda1 nenda1  6 Jun 22 17:10 Music
drwxr-xr-x. 2 nenda1 nenda1  6 Jun 22 17:10 Pictures
drwxr-xr-x. 2 nenda1 nenda1  6 Jun 22 17:10 Public
drwxr-xr-x. 2 root   root    6 Jun 24 13:11 superuserdir
drwxr-xr-x. 2 root   root    6 Jun 24 13:15 superuserdir1
-rw-r--r--. 1 root   root    0 Jun 24 13:16 superuserfile1
drwxr-xr-x. 3 root   root   31 Jun 25 09:09 superuserlunadir
-rw-r--r--. 1 root   root    0 Jun 25 09:10 superuserlunafile1
drwxr-xr-x. 2 nenda1 nenda1  6 Jun 22 17:10 Templates
drwxrw----. 2 nenda1 nenda1  6 Jun 26 22:24 testdir1.bk_data_of_today
drwxr-----. 2 root   root    6 Jun 26 22:56 testdir4
drwxr-xr-x. 2 nenda1 nenda1  6 Jun 22 17:10 Videos
-rw-rw-r--. 1 nenda1 nenda1  0 Jun 24 17:26 worryworry





32) add some content in file.txt1

[nenda1@localhost ~]$ vi file.txt1
 this has been a wonderful journey this far. we thank God
~                                                                                                                              
~                                                                                                                              
                                                                                                                             
~                                                                                                                              
-- INSERT --        



                                                                                         1,57          All

33) view the firsr 3 lines of the content in file.txt1

 [nenda1@localhost ~]$ cat file.txt1 | head -n 3
this has been a wonderful journey this far. we thank God
this has been a wonderful journey this far. we thank God
this has been a wonderful journey this far. we thank God




34) view last 2 lines of the content in file.txt1

 [nenda1@localhost ~]$ cat file.txt1 | tail -n 2
this has been a wonderful journey this far. we thank God
this has been a wonderful journey this far. we thank God yes





35) count the number of words, line and characters in file.txt1

 [nenda1@localhost ~]$ wc file.txt1
 16 177 916 file.txt1





36) move file.txt1 to dir2 with a different name

 [nenda1@localhost ~]$ sudo mv superuserlunadir/superuserlunadir1/dir1/dir2/file.txt12 file.txt22
[nenda1@localhost ~]$ pwd
/home/nenda1
[nenda1@localhost ~]$ ll
total 0
drwxr-xr-x. 2 nenda1 nenda1  6 Jun 22 17:10 Desktop
drwxr-xr-x. 2 nenda1 nenda1  6 Jun 22 17:10 Documents
drwxr-xr-x. 2 nenda1 nenda1  6 Jun 22 17:10 Downloads
-rw-rw-r--. 1 nenda1 nenda1  0 Jun 26 22:24 file.txt1.bk_data_of_today
-rw-rw-r--. 1 nenda1 nenda1  0 Jun 27 00:03 file.txt22
drwxr-xr-x. 2 nenda1 nenda1  6 Jun 22 17:10 Music
drwxr-xr-x. 2 nenda1 nenda1  6 Jun 22 17:10 Pictures
drwxr-xr-x. 2 nenda1 nenda1  6 Jun 22 17:10 Public
drwxr-xr-x. 2 root   root    6 Jun 24 13:11 superuserdir
drwxr-xr-x. 2 root   root    6 Jun 24 13:15 superuserdir1
-rw-r--r--. 1 root   root    0 Jun 24 13:16 superuserfile1
drwxr-xr-x. 3 root   root   31 Jun 25 09:09 superuserlunadir
-rw-r--r--. 1 root   root    0 Jun 25 09:10 superuserlunafile1
drwxr-xr-x. 2 nenda1 nenda1  6 Jun 22 17:10 Templates
drwxrw----. 2 nenda1 nenda1  6 Jun 26 22:24 testdir1.bk_data_of_today
drwxr-----. 2 root   root    6 Jun 26 22:56 testdir4
drwxr-xr-x. 2 nenda1 nenda1  6 Jun 22 17:10 Videos
-rw-rw-r--. 1 nenda1 nenda1  0 Jun 24 17:26 worryworry
[nenda1@localhost ~]$ cd superuserlunadir/superuserlunadir1/dir1/dir2/
[nenda1@localhost dir2]$ ll
total 4
drwxr-xr-x. 4 testuser5 testuser6  55 Jun 26 22:30 dir3
-rw-rw-r--. 1 nenda1    nenda1    912 Jun 26 23:02 file.txt1
-rw-r--r--. 1 root      root        0 Jun 26 23:52 file.txt22





37) create file.txt1 from backup. 

 [nenda1@localhost ~]$ sudo cp -r superuserfile1 superuserfile1.bk_data_of_today
[sudo] password for nenda1: 
[nenda1@localhost ~]$ pwd
/home/nenda1
[nenda1@localhost ~]$ ll
total 0
drwxr-xr-x. 2 nenda1 nenda1  6 Jun 22 17:10 Desktop
drwxr-xr-x. 2 nenda1 nenda1  6 Jun 22 17:10 Documents
drwxr-xr-x. 2 nenda1 nenda1  6 Jun 22 17:10 Downloads
-rw-rw-r--. 1 nenda1 nenda1  0 Jun 26 22:24 file.txt1.bk_data_of_today
-rw-rw-r--. 1 nenda1 nenda1  0 Jun 27 00:03 file.txt22
drwxr-xr-x. 2 nenda1 nenda1  6 Jun 22 17:10 Music
drwxr-xr-x. 2 nenda1 nenda1  6 Jun 22 17:10 Pictures
drwxr-xr-x. 2 nenda1 nenda1  6 Jun 22 17:10 Public
drwxr-xr-x. 2 root   root    6 Jun 24 13:11 superuserdir
drwxr-xr-x. 2 root   root    6 Jun 24 13:15 superuserdir1
-rw-r--r--. 1 root   root    0 Jun 24 13:16 superuserfile1
-rw-r--r--. 1 root   root    0 Jun 27 14:29 superuserfile1.bk_data_of_today
drwxr-xr-x. 3 root   root   31 Jun 25 09:09 superuserlunadir
-rw-r--r--. 1 root   root    0 Jun 25 09:10 superuserlunafile1
drwxr-xr-x. 2 nenda1 nenda1  6 Jun 22 17:10 Templates
drwxrw----. 2 nenda1 nenda1  6 Jun 26 22:24 testdir1.bk_data_of_today
drwxr-----. 2 root   root    6 Jun 26 22:56 testdir4
drwxr-xr-x. 2 nenda1 nenda1  6 Jun 22 17:10 Videos
-rw-rw-r--. 1 nenda1 nenda1  0 Jun 24 17:26 worryworry




38) make sure two servers are up and running. user ssh command to login to the other server. The following is required
     1) IP address of remote server
     2) user name (user must exist in remote server)
     3) password of remote user or login user
      (hint: ssh user_name@ip_of_remote_server)

      [nenda1@localhost ~]$ ssh nkwatoh1@192.168.122.131
Last login: Mon Jun 27 14:33:33 2022
[nkwatoh1@localhost ~]$ 
    