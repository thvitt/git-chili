git-chili
=========

git-chili is a small script that can extract bug numbers from git commit messages and query the respective issue information from a ChiliProject (and probably also Redmine) instance.

Requirements and Installation
-----------------------------

The script requires _git_ (of course), and (unless you run it with `-q`) _xsltproc_ and _curl_. To install, put script and xsl file into some directory and symlink the script to your `$PATH`. 

Configuration and Usage
-----------------------

Configure the setting `chili.url` to the base URL of your ChiliProject instance, e.g.,

	git config -g chili.url https://projects.gwdg.de

Then, run

	git chili [-b] [-q] [commit]

`commit` (or anything you pass after `--`) will be directly passed on to `git show`. If you leave it out, the current HEAD is used. `-b` or `--browser` will open any referenced issue in your preferred browser. `-q` or `--quiet` will suppress output except for the bug URLs. `-h` will give you up-to-date help even when I forget to update the README :-)
