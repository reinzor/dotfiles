alias sb='source ~/.bashrc'
alias cf="find . -name '*.h' -or -name '*.hpp' -or -name '*.cpp' | xargs clang-format-11 -i -style=file $1"
alias qtcreator=/opt/Qt/bin/qtcreator
alias ping=prettyping
alias cat="batcat -p"
alias top=htop
alias grep="ag --follow"
alias last="now=\$(date '+%H:%M'); last | grep 'system boot' | head -n 5 | sed 's/.*-generic //' | sed \"s/  still running/- \$now/\""
