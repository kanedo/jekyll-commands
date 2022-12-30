# see https://raw.githubusercontent.com/jamietanna/dotfiles-arch/9c567d52e6334b1185f607766ef5ea2e0ddb20bf/terminal/home/.jekyll-promote.zsh
jekyll_promote() {
	git mv "_drafts/$1" "_posts/$(date -I)-$1"
}

compdef '_path_files -W $PWD/_drafts' jekyll_promote
