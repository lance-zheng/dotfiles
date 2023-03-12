# homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"
set fish_greeting
if status is-interactive

	if [ "$(tmux display-message -p -F '#{session_name}' 2> /dev/null)" = "main" ]
		tmux set-option -t main status on
	end

	# fzf
	export FZF_DEFAULT_OPTS="--height 40% --layout=reverse --preview '(highlight -O ansi {} || cat {}) 2> /dev/null | head -500'"
    # Commands to run in interactive sessions can go here
	# autojump
	[ -f /opt/homebrew/share/autojump/autojump.fish ]; and source /opt/homebrew/share/autojump/autojump.fish
	# nvm
	set -gx NVM_DIR (brew --prefix nvm)
end

export HOMEBREW_BREW_GIT_REMOTE="https://mirrors.ustc.edu.cn/brew.git"
export HOMEBREW_CORE_GIT_REMOTE="https://mirrors.ustc.edu.cn/homebrew-core.git"
export HOMEBREW_BOTTLE_DOMAIN="https://mirrors.ustc.edu.cn/homebrew-bottles"
export HOMEBREW_API_DOMAIN="https://mirrors.ustc.edu.cn/homebrew-bottles/api"

# java
export JAVA_8_HOME="/opt/jdk/zulu8.66.0.15-ca-jdk8.0.352"
export JAVA_17_HOME="/opt/jdk/jdk-17.0.5/Contents/Home"
export JAVA_HOME=$JAVA_17_HOME
alias jdk8="export JAVA_HOME=$JAVA_8_HOME; java -version"
alias jdk17="export JAVA_HOME=$JAVA_17_HOME; java -version"

# maven
export MAVEN_HOME=/opt/apache-maven/maven-mvnd-1.0.0-m4-darwin-aarch64
set PATH $MAVEN_HOME/bin $PATH

# gradle
export GRADLE_HOME=/opt/gradle/gradle-7.5.1
set PATH $GRADLE_HOME/bin $PATH

# ant
export ANT_HOME=/opt/apache-ant/apache-ant-1.10.13
set PATH $ANT_HOME/bin $PATH

# go
export GO111MODULE=on
export GOPROXY=https://goproxy.cn

# groovy
export GROOVY_HOME=/opt/apache-groovy/groovy-4.0.6
set PATH $GROOVY_HOME/bin $PATH

# others
set PATH /Applications/Postgres.app/Contents/Versions/latest/bin $PATH

# alias
alias unset 'set --erase'
alias vpn="sudo sysctl net.link.generic.system.hwcksum_tx=0 && sudo sysctl net.link.generic.system.hwcksum_rx=0"
alias on="export {http,https}_proxy=http://127.0.0.1:7890;echo Turn on proxy"    # Turn proxy in termainl
alias off="unset {http,https}_proxy;echo Turn off proxy"                         # Turn off proxy in termainl
alias where=which
alias cls=clear
alias ra=ranger
alias ii=open
