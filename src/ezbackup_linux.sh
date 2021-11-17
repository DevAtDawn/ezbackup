sudo tar -X exclude.txt -zcpvf etc-backup.tgz domains
sudo tar -X exclude.txt -zcpvf etc-backup.tgz --one-file-system domains


sudo tar -X exclude.txt -zcpvf backup_home.tgz --one-file-system home

/home/backup_home.tar.gz
/home/backup_sys.tar.gz
/home/backup_home.tgz
/home/backup_sys.tgz
/home/dd/Downloads/back0
/home/*/.gvfs
/home/*/.cache
/home/*/.local/share/Trash 
/home/dd/.gvfs
/home/dd/.cache 
/home/dd/.local/share/Trash

home/backup_home.tar.gz
home/backup_sys.tar.gz
home/backup_home.tgz
home/backup_sys.tgz
home/dd/Downloads/back0
home/*/.gvfs
home/*/.cache
home/*/.local/share/Trash 
home/dd/.gvfs
home/dd/.cache 
home/dd/.local/share/Trash


--exclude=/backuphome.tar.gz \
--exclude=/home/dd/Downloads/back0 \
--exclude=/home/*/.gvfs \
--exclude=/home/*/.cache \ 
--exclude=/home/*/.local/share/Trash \
domainss.tar.gz --one-file-system /domains
/


cd /
sudo tar -cvpzf backuphome.tar.gz /home --one-file-system \
--exclude=/backuphome.tar.gz \
--exclude=/home/dd/Downloads/back0 \
--exclude=/home/dd/.gvfs \
--exclude=/home/dd/.cache \ 
--exclude=/home/dd/.local/share/Trash /


sudo tar czf /backup.tar.gz\
 --exclude=/backup.tar.gz\
 --exclude=/dev\
 --exclude=/mnt\
 --exclude=/proc\
 --exclude=/sys\
 --exclude=/tmp\
 --exclude=/lost+found\
 /

#Add more --exclude= parameters if you need to
#to restore files, 
#boot a Live CD. 
#Mount old system under /media or /mnt 
#run 
# tar xf /path/to/drive/with/backup.tar.gz -C /mnt (or /media).

cd / # THIS CD IS IMPORTANT THE FOLLOWING LONG COMMAND IS RUN FROM /
tar -cvpzf backup.tar.gz \
--exclude=/backup.tar.gz \
--exclude=/proc \
--exclude=/tmp \
--exclude=/mnt \
--exclude=/dev \
--exclude=/sys \
--exclude=/run \ 
--exclude=/media \ 
--exclude=/var/log \
--exclude=/var/cache/apt/archives \
--exclude=/usr/src/linux-headers* \ 
--exclude=/home/*/.gvfs \
--exclude=/home/*/.cache \ 
--exclude=/home/*/.local/share/Trash /

mkdir /proc /sys /mnt /media 
sudo tar -xvpzf /path/to/backup.tar.gz -C /media/whatever --numeric-owner
split -d -b 3900m /path/to/backup.tar.gz /name/of/backup.tar.gz. 
tar -cvpzf backup.tar.gz --exclude=/backup.tar.gz --one-file-system / 
sudo tar -cvpf  system-back.tar  /home/name
sudo tar -zcvpf system-back.tgz /home/linuxtechi /etc /opt

Refs:
https://help.ubuntu.com/community/BackupYourSystem/TAR
https://www.linuxtechi.com/create-backups-tar-command-linux/
https://www.ionos.ca/digitalguide/server/tools/tar-backup-how-to-create-an-archive-with-linux/
https://itectec.com/ubuntu/ubuntu-how-to-use-tar-for-full-backup-and-restore-with-system-on-ssd-and-home-on-hdd/
https://askubuntu.com/questions/7809/how-to-back-up-my-entire-system
