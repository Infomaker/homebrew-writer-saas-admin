# homebrew-writer-saas-admin

This is the home of the "Writer saas admin Homebrew tap"

## How to install

To enable tab-completion you need to install one of the following:

For zsh:

```bash
brew install zsh-completion
```

And to enable zsh completion for `zsh` you will need to add this to your `.zshrc`:

If you are using `oh-my-zsh`

```bash
plugins=(… zsh-completions)
autoload -U compinit && compinit
```

else:

```bash
if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh-completions:$FPATH

  autoload -Uz compinit
  compinit
fi
```

Additionally, if you receive "zsh compinit: insecure directories" warnings when attempting
to load these completions, you may need to run this:

```bash
chmod go-w '/usr/local/share'
```

For bash:

```bash
brew install bash-completion
```

And to enable bash completion for you will need to add this to your `.bash_profile`:

```bash
if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi
```

And to install the `Writer-saas-admin` tool run:

```
brew tap infomaker/writer-saas-admin
brew install writer-saas-admin
```

## Publishing a new release

When a new version has been published on [Writer saas source code](https://bitbucket.org/infomaker/writer-saas-admin/) this repo needs to be updated to enable Brew installations or brew updates to latest version.

### Prerequisites

Make sure that the release has been tagged in [repo](https://bitbucket.org/infomaker/writer-saas-admin/)

### Edit the file

Start by calculating the SHA-256 sum of the new release by running the command below.
Replace `X.X.X` with the new version (i.e. to the latest tag in git):

```bash
curl -sL https://writer-saas-admin.s3-eu-west-1.amazonaws.com/1.0.0.tar.gz | shasum -a 256
b5c23720b292d56cb7b0a8060930af301f2ac7645149df3ed705e06012604abf  -
```

Copy the out put (without the trailing (`  -`) and then proceed to editing the `writer-saas-admin.rb` file.

- In `version` replace the version info.
- In `url`, replace the version info.
- In `sha256`, enter the new shasum above.

### Make a new release

Save and commit the `writer-saas-admin.rb` file.

After that follow principle of [gitflow](https://www.atlassian.com/git/tutorials/comparing-workflows/gitflow-workflow) when creating a new release.
