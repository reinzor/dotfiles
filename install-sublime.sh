DIRECTORY='/opt/sublime_text_3'
if [ ! -d "$DIRECTORY" ]; then
    wget https://download.sublimetext.com/sublime_text_3_build_3207_x64.tar.bz2 -O /tmp/sublime_text_3.tar.bz2
    sudo tar -xvf /tmp/sublime_text_3.tar.bz2 -C /opt/
fi
