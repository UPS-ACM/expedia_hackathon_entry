# expedia_hackathon_entry
##Setup
###Setup git, rvm, ruby, and rails 

####(if you have all these things, skip to the last instruction, otherwise, if you have git, skip the first part, otherwise, do all):

* Git:

    * if on windows, you’ll need to download & install [git for windows](https://git-for-windows.github.io/) which comes with a basic bash emulator. Use the bash emulator as a terminal from now on

    * if on osx

        * make sure you have homebrew

            * if not, paste this into terminal: 

            * /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

        * type "brew doctor"

        * "brew update"

        * "brew install git"

    * if on debian-based linux, type "sudo apt-get install git"

* RVM with ruby and rails 4.2.5:

    * For osx and linux:

        * "gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3"

        * "\curl -sSL https://get.rvm.io | bash -s stable --with-default-gems="rails haml"" 

        * follow on-screen instructions if it works

        * For issues: on osx, consult: https://www.moncefbelyamani.com/how-to-install-xcode-homebrew-git-rvm-ruby-on-mac/

    * For windows:

        * abandon RVM, just download ruby v.2.2.2 via: [http://dl.bintray.com/oneclick/rubyinstaller/rubyinstaller-2.2.2-x64.exe](http://dl.bintray.com/oneclick/rubyinstaller/rubyinstaller-2.2.2-x64.exe)

    * download rails via "gem install rails"

        * On debian-based linux, if issues, try running "sudo apt-get install build-essential bison openssl libreadline6 libreadline6-dev curl git-core zlib1g zlib1g-dev libssl-dev libyaml-dev libxml2-dev autoconf libc6-dev ncurses-dev automake libtool libgmp-dev libgmp3-dev“ then doing a “gem install rails"

* On OSX and Linux, set your ruby version to 2.2.2 with:

    * "rvm install ruby-2.2.2**"**

    * **"**rvm use 2.2.2 --default”

###Make git work without typing ur password everytime

* In terminal, if you don’t already have an ssh key:

    * run "ssh-keygen" and note the location of the resulting key file

* goto https://github.com/settings/ssh

    * click add new key

    * enter your hostname/computername as the name

    * from terminal:

        * if on unix, type "cat ~/id_rsa.pub" or “cat (the location)”

        * elif on windows, type "type (the location from before)"

    * copy the output and paste as the key into github

###Clone the project directory for your own coding use

* from the terminal, pick a directory where you want your project

    * "cd ~" for your home folder on unix

    * "dir ~" for your home folder on windows

* enter "git clone git@github.com:UPS-ACM/expedia_hackathon_entry.git"

* if it requires your password, you’ve got issues with your ssh-agent, see https://help.github.com/articles/generating-an-ssh-key/

###Get a text editor working (I recommend sublime)


##Git commands that are useful:
* When ready to start working after/before finishing a feature, branch from the master branch using “bundle update; bundle install; git checkout -b YOUR_BRANCH_NAME”
* While working, frequently do “git push origin”
* When done with a feature (ANY TANGIBLE, COMPLETE ADDITION TO THE APP), and you’ve gotten to a good stopping point where other people can work with ur code, and ready to update it with everyone else, do “git checkout master; git pull; bundle update; bundle install; git checkout YOUR_BRANCH_NAME”, then “git merge YOUR_BRANCH_NAME”, resolve merge conflicts, then “git push origin YOUR_BRANCH_NAME:master”, finally "git branch -d YOUR_BRANCH_NAME"


##Technologies that we'll be using:
* Ruby on Rails for the general web framework
* Bootstrap for a nice-looking CSS framework
* Hammer.js to perform web-friendly gestures on the site