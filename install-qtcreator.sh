DIRECTORY='/opt/Qt'
if [ ! -d "$DIRECTORY" ]; then
    wget https://download.qt.io/official_releases/qtcreator/4.14/4.14.1/qt-creator-opensource-linux-x86_64-4.14.1.run -O /tmp/qt-open-source-installer
    chmod +x /tmp/qt-open-source-installer

    echo ""
    echo "Use manual proxy 0.0.0.0.123 (for no account)"
    echo ""
    echo "Choose $DIRECTORY as install directory!"
    echo ""
    echo ""

    sudo /tmp/qt-open-source-installer
fi
