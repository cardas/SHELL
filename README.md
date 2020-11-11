# How do I run .sh file shell script in Linux?
# How do I Install dialog command?
 
![Bash Image](https://www.cyberciti.biz/media/new/faq/2007/09/how-do-i-run-.sh-files-on-linux-unix-system.001.jpeg)

## The procedure to run the .sh file shell script on Linux is as follows:

--

## Set execute permission on your script:
## chmod +x script-name-here.sh

## To run your script, enter:
### ./script-name-here.sh
or
### sh script-name-here.sh
or
### bash script-name-here.sh

## Install dialog command

![install dialog bash](https://linuxcommand.org/images/adventure_dialog-mc.png)

Type the following command to install the dialog command line utility under Debian or Ubuntu Linux:
### First Of All Use 
- sudo apt-get update
![install dialog bash](https://i.pinimg.com/originals/e1/e2/00/e1e2003af1f61a879e0063ec6dee5ccf.jpg)

### After That For:
### Ubuntu
- sudo apt-get install dialog
### Debian
- apt-get install dialog
### Red hat
- yum install dialog
### Suse
- zypper install dialog

![install dialog bash](https://bash.cyberciti.biz/uploads/bashwiki/9/9e/Bash-shell-dialog-msgbox-output.png)

## GUI method to run .sh file

Select the file using mouse.
Right-click on the file.
Choose Properties:

![Bash Image](https://www.cyberciti.biz/media/new/faq/2007/09/How-to-run-.sh-file-in-Linux.jpg)


Click Permissions tab.
Select Allow executing file as a program:

![Bash Image](https://www.cyberciti.biz/media/new/faq/2007/09/How-do-I-run-.sh-files-in-Linux-or-Unix.jpg)


Now click the file name and you will be prompted. Select “Run in the terminal” and it will get executed in the terminal.

# How do I run .sh in Windows ?

##  Execute Shell Script using Ubuntu on Windows 10

Make sure you have Ubuntu or any other Linux distros installed.  Ubuntu will mount or make all your Windows directories available under /mnt. So the C drive is available at /mnt/C.  So if the desktop will be available at /mnt/c/users/<username>/desktop.

![Bash Image](https://www.thewindowsclub.com/wp-content/uploads/2019/07/Run-Script-files-in-Windows-via-Ubuntu.png)


--

### Now follow these steps

- Launch Ubuntu or any other Linux distros installed.
- Navigate to the folder using “cd” command to the folder where the scripts are available. (use cd and ls commands)
- Type “./zmones.sh" or  "sh zmones.sh" or "bash zmones.sh” and hit enter.
#### zmones.sh i mean eq ==> zmones_LTU.sh or zmones_ENG.sh

It will execute the script, and if they have a dependency on any of core Linux features.



