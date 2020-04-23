# How to use this file:
# https://docs.microsoft.com/en-us/powershell/scripting/dsc/quickstarts/website-quickstart?view=powershell-7
#
# To get names of other Windows Features run:
#   Get-WindowsFeature | Out-GridView
# 
# Configuring the Local Config Mgr on a target node:
# https://docs.microsoft.com/en-us/powershell/scripting/dsc/managing-nodes/metaconfig?view=powershell-7
#
# Going forward:
# https://docs.microsoft.com/en-us/powershell/scripting/dsc/pull-server/pullServer?view=powershell-7
# https://docs.microsoft.com/en-us/azure/automation/automation-dsc-overview
# Simple Template: https://azure.microsoft.com/en-us/resources/templates/dsc-pullserver-to-win-server/
#

Configuration EnsureIISandAspNet45 {

    # Import the DSC module 
    Import-DscResource -ModuleName PsDesiredStateConfiguration

    Node 'localhost' {

        WindowsFeature WebServer {
            Ensure = "Present"
            Name   = "Web-Server"
        }

        WindowsFeature WebServerBasicAuth {
            Ensure = "Present"
            Name   = "Web-Basic-Auth"
        }

        WindowsFeature WebServerWinAuth {
            Ensure = "Present"
            Name   = "Web-Windows-Auth"
        }

        WindowsFeature WebServerASPNET45 {
            Ensure = "Present"
            Name   = "Web-Asp-Net45"
        }

        WindowsFeature IISMgmtConsole {
            Ensure = "Present"
            Name   = "Web-Mgmt-Console"
        }
    }
}
