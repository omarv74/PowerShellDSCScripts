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
