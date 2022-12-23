DropBox
=======

DropBox is a file sharing utility. It is used primarily to help you
keep files in sync between multiple machines, and a place in the 
cloud. You can also share read-only or read-write copies of your
folders with one or more people. DropBox is especially well suited
for sharing files between desktop machines and your tablet or phone.

DropBox is not designed to be a source control tool. If you want to
track source code, you should use Git or Mercurial.

On Windows, Linux and the Mac, there are relatively painless
automated installs of DropBox:

<https://www.dropbox.com/install>

Here is a script you can run to install DropBox on
a headless server such as Ubuntu Server and/or an EC2
instance of a Linux Server:

	# Script for downloading and installing DropBox on Linux server
	# and on other headless Linux boxes that have no GUI frontend.
	# You can use dropbox.py to help you manage dropbox.
	# I recommend running this script from $HOME/bin

	dropBoxName=dropbox.tar.gz
	wget -O dropbox.py "https://www.dropbox.com/download?dl=packages/dropbox.py"
	wget -O $dropBoxName "https://www.dropbox.com/download?plat=lnx.x86"
	tar xzf $dropBoxName
	if [ ! -e ~/.dropbox-dist/dropboxd ]
	then
		mv .dropbox-dist ~/.
	else
		echo "I see that /home/$USER/.dropbox-dist already exists."
		echo "I did not expect that. I am going to exit and let you"
		echo "handle this manually."
		exit
	fi
	~/.dropbox-dist/dropboxd

Save the above file in your $HOME/bin directory as DropBoxOnLinuxServer.sh. Run it 
like this: 

    sh DropBoxOnLInuxServer.sh

After the install, you can help maintain your instance by running the *dropbox.py*
script:

sh dropbox.py
	
You can also find this script on GitHub:

<https://github.com/charliecalvert/JsObjects/tree/master/Utilities/DropBox>

During the install, you will be prompted to copy a URL and paste it into 
a browser. You will then be prompted to enter your DropBox password. If you
get errors during this process about their being an instance of dropbox
already running, use *dropbox.py* to stop your instance:

sh dropbox.py stop

Now run the DropBox demon again:

    ~/.dropbox-dist/dropboxd
	
This will again present you with the URL. Copy the URL. Don't press Ctrl-C to
copy it, as that may stop the demon. Try right clicking instead. Paste the
URL into your browser and enter your password again. If all goes well, you
should see the following back in your Linux shell:

    Please visit https://www.dropbox.com/cli_link?host_id=SomeLongValue to link this machine.
    Client successfully linked, Welcome Charlie!

Your prompt will look something like the above, though the first line may be repeated
multiple times, and there will be a long hex value where I have written SomeLongNumber.
Of course, if all goes well, you will be greeted by your own name, and not mine.