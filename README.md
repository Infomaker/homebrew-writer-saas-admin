# homebrew-writer-saas-admin

This is the home of the "Writer saas admin Homebrew tap"

# Publishing a new release

When a new version has been published on [Writer saas source code](https://bitbucket.org/infomaker/writer-saas-admin/) this repo needs to be updated to enable Brew installations or brew updates to latest version.

## Prerequisites

Make sure that the release has been tagged in [repo](https://bitbucket.org/infomaker/writer-saas-admin/)

## Edit the file

Start by calculating the SHA-256 sum of the new release by running the command below.
Replace `X.X.X` with the new version (i.e. to the latest tag in git):

```bash
curl -sL https://bitbucket.org/infomaker/writer-saas-admin/src/0.1.0/ | shasum -a 256
e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855  -
```

Copy the out put (without the trailing (`  -`) and then proceed to editing the `writer-saas-admin.rb` file.

- In `url`, replace the version info.
- In `sha256`, enter the new shasum above.
- in `main.appVersion`, replace with new version

## Make a new release

Save and commit the `writer-saas-admin.rb` file.

After that follow principle of [gitflow](https://www.atlassian.com/git/tutorials/comparing-workflows/gitflow-workflow) when creating a new release.
