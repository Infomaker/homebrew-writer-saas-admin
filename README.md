# homebrew-writer-saas-admin

This is the home of the "Writer saas admin Homebrew tap"

## How to install

To enable tab-completion you need to install one of the following:

For zsh:

```bash
brew install zsh-completion
```

And to enable zsh completion for `zsh` you will need to add this to your `.zshrc`:

```bash
if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh-completions:$FPATH

  autoload -Uz compinit
  compinit
fi
```

For bash:

```bash
brew install bash-completion
```

And to enable bash completion for `bash` you will need to add this to your `.bash_profile`:

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
curl -sL https://writer-saas-admin.s3-eu-west-1.amazonaws.com/0.1.14.tar.gz | shasum -a 256
ab83736528264f2f835026a15a164a72b434e811046076f83932017011c9b7b8  -
```

Copy the out put (without the trailing (`  -`) and then proceed to editing the `writer-saas-admin.rb` file.

- In `version` replace the version info.
- In `url`, replace the version info.
- In `sha256`, enter the new shasum above.

### Make a new release

Save and commit the `writer-saas-admin.rb` file.

After that follow principle of [gitflow](https://www.atlassian.com/git/tutorials/comparing-workflows/gitflow-workflow) when creating a new release.
