# Build a web app fast (with piku)

## Quick start 🚀

The assumption here is that you have a development environment as follows:

- a local Linux or Mac machine/VM which has an `ssh` client installed
- a network-available homelab server, VPS, or cloud node with `root` access
- a local Python environment, e.g. managed with `pyenv` and/or `pipx`

First, you need to bootstrap your remote machine, whether it's homelab, VPS, or
cloud. We'll refer to that machine as `machine` from here on out. Make sure you
can `ssh` in, both as yourself, and as `root`:

    $ ssh machine
    $ ssh root@machine

If you can't, make sure to get `~/.ssh/authorized_keys` set up in the right
way, perhaps leveraging `ssh-copy-id` as necessary.

Once you can, you'll want to log in as root and run the piku bootstrap:

    $ ssh root@machine
    root@machine:~# curl https://piku.github.io/get | sh
    ... lots of output ...
    ... eventual success ...
    root@machine:~#
    <CTRL+D EOF to quit>
    logout
    Connection to x.x.x.x closed.

You'll know piku is setup because you should now be able to ssh in with the
`piku` user, and this will result in the piku CLI being shown to you. Try it:

    $ ssh piku@machine
    Usage: piku.py [OPTIONS] COMMAND [ARGS]...

    The smallest PaaS you've ever seen

    Options:
    -h, --help  Show this message and exit.

    Commands:
    apps              List apps, e.g.: piku apps
    ...
    Connection to x.x.x.x closed.

Then, as a helper, you can install the piku CLI locally on your machine.
Here, I installed it in `~/opt/bin`, which is my own little directory for
scripts, but you might find it convenient to put it in `/usr/local/bin` on
many UNIX machines. Do this with a simple download from GitHub:

    $ cd ~/opt/bin
    $ wget https://raw.githubusercontent.com/piku/piku/master/piku
    $ chmod a+rx piku

We'll come back to that later, it's mainly for convenience.

Your next step is to link this git repo to your piku node as a "remote".
This is a one-liner:

    $ git remote add piku piku@machine:webappfast

... and, with this addition, we can push to origin (which is GitHub) or piku
(our ssh-accessible `machine`).
