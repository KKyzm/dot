if status is-interactive
    set -x PATH ~/.local/bin $PATH
    set -x PATH ~/go/bin $PATH
    set -x PATH ~/workshop/tasks/omnetpp-6.0.2/bin $PATH
    set -x PATH ~/workshop/tools/scripts $PATH
    set -x PATH ~/.local/share/gem/ruby/3.0.0/bin $PATH

    # spark and hadoop
    set -x SPARK_HOME /opt/spark
    set -x HADOOP_HOME /opt/spark
    set -x PATH $PATH $SPARK_HOME/bin $SPARK_HOME/sbin

    # java
    set -x JAVA_HOME /usr/lib/jvm/default
    set -x PATH $PATH $JAVA_HOME/bin

    # vcpkg
    set -x VCPKG_ROOT ~/workshop/tools/vcpkg
    set -x PATH $VCPKG_ROOT:$PATH

    # set python virtual environment path
    set VENV ~/.config/pyvenv

    # mcfly
    # set -gx MCFLY_LIGHT TRUE
    set -x MCFLY_FUZZY 2

    # for downgrade to work intuitively
    set -x DOWNGRADE_FROM_ALA 1

    # configure autojump for fish
    begin
        set --local AUTOJUMP_PATH $HOME/.config/fish/tools/autojump.fish
        if test -e $AUTOJUMP_PATH
            source $AUTOJUMP_PATH
        end
    end

    alias ls lsd
    alias l "lsd -Al"
    alias le leetgo
    alias e exit
    alias q exit
    alias c clear
    alias ra ranger
    alias s screenfetch
    alias dotbak "git --git-dir=$HOME/.dotbak/ --work-tree=$HOME"
end
