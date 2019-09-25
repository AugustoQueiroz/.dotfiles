# .dotfiles

My dotfiles

## Using them

### Making changes

To keep track of changes through git one way to do it is to clone the repository:

```zsh
$ git clone https://github.com/AugustoQueiroz/.dotfiles.git
```

And then creating links in the home directory to the files in the repository. This can be done individually

```zsh
$ ln -s /path/to/the/repository/.dotfiles/.fileyouwanttouse ~
```

But to make it quicker I've setup a script that does this for all the files here, simply run

```zsh
$ ./setup.sh
```

### Getting individual files

If you don't intend to make changes to the files, or don't want those changes to be tracked, you can always download the files directly to your home directory by doing

```zsh
$ curl -L https://raw.githubusercontent.com/AugustoQueiroz/.dotfiles/master/.fileyouwanttouse > ~/.fileyouwanttouse
```
