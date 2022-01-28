# Scripts

The purpose of this script is to scaffold a web project. Script supports arguments to also initialize a github repo to the users respective account.

# Dependecies

To use this script github command line interface must be installed in order to utilize the github repository creation feature. Recomended to run this bash script on a linux environment. The instructions to install github CLI will be linked below:  

[Github CLI Installation guide](https://github.com/cli/cli#installation)

# How to Use

|Case1: 1 Argument |
|--------------------|
| `bash scaf.sh projectName` |

| Case2: 2 Arguments |
|-------------------------------------------|
| `bash scaf.sh projectName private/public` |

| Case3: 3 Arguments|
|------------------------|
| `bash scaf.sh projectName private/public description`|

#### Note

Replace the `projectName` variable with the name you want your github repo to display for cases 2 and 3.

Replace the `private/public` variable with one of the options. Either private or public. This will determine the visibility of your repo.

