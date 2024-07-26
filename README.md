# Personal config files repository
Made to keep complex config files like vim's. Repo's root contains files to be placed in user home.

Clone with `$ git clone --recurse-submodules git@github.com:malckhazar/personal-settings.git`

## i3wm
Uses py3status in place of i3status bar
i3status.conf -- config file

## Vim
Run `:PluginInstall` on first start to download all required packages

## Docker
To simplify work with docker, set of env functions were implemented. `Package` refers to 
`docker/<package>.Dockerfile`.

Available commands:
* `docker-build <package>` -- create image for package
* `docker-update <package>` -- update docker image for `package`
* `docker-run <package>` -- create and run container from `package`
* `docker-run-tf` -- run tensorflow-jupyter

