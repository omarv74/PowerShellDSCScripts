# How to use this file:
# https://docs.microsoft.com/en-us/powershell/scripting/dsc/quickstarts/website-quickstart?view=powershell-7

Configuration WebsiteTest {

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
