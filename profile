# # # # # # # # # # # # # # # # # # # # # # # # #
#
# .profile file for K. Beck
#
# # # # # # # # # # # # # # # # # # # # # # # # # 

# read other profile files where appropriate
if [ -f /Korflab/Shared_config_files/korflab_profile ]; then 
        source /Korflab/Shared_config_files/korflab_profile
else
        if [ -f /Volumes/Data/Korflab/Shared_config_files/korflab_profile ]; then 
        source /Volumes/Data/Korflab/Shared_config_files/korflab_profile
        fi
fi


# intro
mydate=`date "+%H:%M:%S %m/%d/%y"`
echo "Welcome $USER, the current time is $mydate"

# set prompt and title bar name
PS1="\\[\\033]0;\\h\:\\u\:\\w\\007\\]\\u@\\h \W$ "


# # # # # # # # # # # # # # # # # # #
# Set up paths
# # # # # # # # # # # # # # # # # # #

#Set up main location of code
MAINCODE=$HOME/Work/bin/

#Set up KorfLabGit
KORFGIT=$HOME/Work/KorfLabGit/LearnGit/scripts/

# Set up unix and Perl stuff 
UNIXANDPERL=$HOME/Work/Unix_and_Perl_course/Code_UPC/

# Set up ShortTerm code directory
SHORTTERM=$HOME/Work/Code/ShortTerm/

# Add local code directories to path
export PATH=$PATH":$MAINCODE:$UNIXANDPERL:$KORFGIT:$SHORTTERM:."

# add local code directory to Perl library path
export PERL5LIB=$PERL5LIB:$UNIXANDPERL:$HOME/Work/lib

# MySQL and DBI and Perl need to talk to one another ## TEST ##
export DYLD_LIBRARY_PATH="~/Work/BioinformaticsPackages/MySQL/mysql/lib/:$DYLD_LIBRARY_PATH"



# # # # # # # # # # # # # # # # # # #
# Set up history
# # # # # # # # # # # # # # # # # # #
# increase default size of history file and get all shells to append to the same history
# also prevent some common commands from being added to the history
alias h="history"
alias popular="cut -f1 -d\" \" ~/.bash_history | sort | uniq -c | sort -nr | head -n 30"
export HISTSIZE=20000
# ignore duplicates and commands starting with a space
export HISTCONTROL=ignoreboth
export HISTIGNORE="&:h:l:ls:w:m:p:exit:cd"
# append to history file rather than overwriting it
shopt -s histappend
#export PROMPT_COMMAND="history -a ; history -n"

############
#
# ALIASES
#
############
# temporary aliases for grading BIS180L
alias ff="awk '/KB|JNM/ {sum+=\$2; print} END {print \"\n__Score:__ \" sum+75 \"/75\"}' ./Final/*.Rmd"


# general command line short-cuts
alias tw="open -a TextWrangler.app"

# better display of directories
alias ls="ls -F"
alias ..="cd .."

#cd aliases
alias milk="cd $HOME/Work/1_Milk/"
alias rh="cd $HOME/Work/2_RH_Map/"
alias code="cd $HOME/Work/Code/"

# don't accidentally delete or overwrite anything
alias rm="rm -i"
alias mv="mv -i"
alias cp="cp -i" 

# clean screen
alias cls="clear;ls"

# look at system log
alias log="less /var/log/system.log"
alias lognow="tail -n 1000 /var/log/system.log"
alias logstrong="tail -n 1000 /var/log/secure.log"

# machine aliases
alias socrates="ssh kbeck527@socrates.genomecenter.ucdavis.edu"
alias merlot="ssh kbeck527@merlot.genomecenter.ucdavis.edu"
alias raiden="ssh kristen@raiden.genomecenter.ucdavis.edu"
alias saetta="ssh kristen@saetta.genomecenter.ucdavis.edu"
alias thunderbolt="ssh kristen@thunderbolt.genomecenter.ucdavis.edu"
alias isner="ssh kristen@isner.genomecenter.ucdavis.edu"

## Other Helpful Aliases
#convert line returns with maybe a new line to only a single new line
alias to_unix='perl -pe '\''s/\r\n?/\n/g'\'''

# MacPorts Installer addition on 2012-04-10_at_09:10:41: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.


##
# Your previous /Users/kristenbeck/.profile file was backed up as /Users/kristenbeck/.profile.macports-saved_2012-11-27_at_09:37:03
##

# MacPorts Installer addition on 2012-11-27_at_09:37:03: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

