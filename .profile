# brew
export PATH="/usr/local/opt/openssl/bin:$PATH"
export PATH=/usr/local/bin:/usr/local/sbin:$PATH

PS3='Python env: '
options=("conda" "ros")
select opt in "${options[@]}"
do
    case $opt in
        "conda")
            # anaconda python
            export PATH="/Users/alexeysimonov/anaconda/bin:$PATH"
            break
            ;;
        "ros")
            # here we use brew python(2) env for ROS
            # ROS config
            source /opt/ros/lunar/setup.bash
            # MAVROS
            #source ~/catkin_ws/devel/setup.bash
            # my project
            #source ~/dev/capstone/carla-brain/ros/devel/setup.sh
            #source ~/BeTo/slambe_ws/devel/setup.sh
            break
            ;;
        *) echo invalid option;;
    esac
done


# CUDA
export CUDA_HOME=/usr/local/cuda
export DYLD_LIBRARY_PATH=${CUDA_HOME}/lib:${CUDA_HOME}/extras/CUPTI/lib:/Developer/NVIDIA/CUDA-8.0/lib
export PATH=$CUDA_HOME/bin:$DYLD_LIBRARY_PATH:$PATH
export LD_LIBRARY_PATH=$DYLD_LIBRARY_PATH

#brew bash completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
. $(brew --prefix)/etc/bash_completion
fi

export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

alias ls='ls -GFh'
alias ll="ls -l"
