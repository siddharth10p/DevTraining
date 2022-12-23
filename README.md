# How to Deploy this app in your org?

1. Setup [VS Code](https://trailhead.salesforce.com/content/learn/projects/quick-start-lightning-web-components/set-up-visual-studio-code).
2. Open VS Code once installed the Salesforce Extensions
3. From the left-hand side panel, Select a folder (directory) to copy the metadata locally
4. Execute the following commands in VS code's terminal (make sure you have git installed, refer [Git Guides](https://github.com/git-guides/install-git) to install git)
    a. git init
    b. git clone https://github.com/siddharth10p/DevTraining
    c. sfdx force:auth:web:login -a MyApp
    d. Use your Salesforce org credentials to authorize Salesforce cli
    e. sfdx force:source:deploy -u MyApp
5. Login in your devloper org to verify that the componets are deployed

-----------------------------------------------------------------------------
## Learn about Salesforce DX Project:

Now that you’ve created a Salesforce DX project, what’s next? Here are some documentation resources to get you started.

## How Do You Plan to Deploy Your Changes?

Do you want to deploy a set of changes, or create a self-contained application? Choose a [development model](https://developer.salesforce.com/tools/vscode/en/user-guide/development-models).

## Configure Your Salesforce DX Project

The `sfdx-project.json` file contains useful configuration information for your project. See [Salesforce DX Project Configuration](https://developer.salesforce.com/docs/atlas.en-us.sfdx_dev.meta/sfdx_dev/sfdx_dev_ws_config.htm) in the _Salesforce DX Developer Guide_ for details about this file.

## Read All About It

- [Salesforce Extensions Documentation](https://developer.salesforce.com/tools/vscode/)
- [Salesforce CLI Setup Guide](https://developer.salesforce.com/docs/atlas.en-us.sfdx_setup.meta/sfdx_setup/sfdx_setup_intro.htm)
- [Salesforce DX Developer Guide](https://developer.salesforce.com/docs/atlas.en-us.sfdx_dev.meta/sfdx_dev/sfdx_dev_intro.htm)
- [Salesforce CLI Command Reference](https://developer.salesforce.com/docs/atlas.en-us.sfdx_cli_reference.meta/sfdx_cli_reference/cli_reference.htm)
