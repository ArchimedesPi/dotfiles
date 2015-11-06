typeset -U path

path+=(
    $HOME/bin
    $HOME/.local/bin
    /opt/android-studio/bin
    $HOME/.rvm/bin
    $HOME/gradle/bin
    $HOME/eagle-7.4.0/bin
    $HOME/.cask/bin)

path+="/home/liam/perl5/bin"
PERL5LIB="/home/liam/perl5/lib/perl5${PERL5LIB+:}${PERL5LIB}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/home/liam/perl5${PERL_LOCAL_LIB_ROOT+:}${PERL_LOCAL_LIB_ROOT}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/home/liam/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/home/liam/perl5"; export PERL_MM_OPT;
