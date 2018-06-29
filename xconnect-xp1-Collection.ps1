<#
Exposed parameters for creating the Collection Service, so you can change it for production
#>
$Prefix = "xp901" 
$PSScriptRoot = "c:\xp"

$Path = "$PSScriptRoot\config\xconnect-xp1-collection.json"
$Package = "$PSScriptRoot\Sitecore 9.0.1 rev. 171219 (OnPrem)_xp1collection.scwdp.zip"
$LicenseFile = "$PSScriptRoot\license.xml"
$SiteName = "$Prefix.sc" 

$SSLCert = "" #Todo: needs to be provided, if not then generated
$XConnectCert = "$Prefix.xconnect_client"

$SqlDbPrefix = $Prefix
$SqlAdminUser = "sa" 
$SqlAdminPassword="jajnav5@" 
$SqlCollectionUser = "collectionuser"
$SqlCollectionPassword = "Test12345"
$SqlProcessingPoolsUser = "poolsuser"
$SqlProcessingPoolsPassword = "Test12345"
$SqlMarketingAutomationUser = "marketingautomationuser"
$SqlMarketingAutomationPassword = "Test12345"
$SqlMessagingUser = "messaginguser"
$SqlMessagingPassword = "Test12345"
$SqlServer = "RAMONASENIE0E1F" 

$XConnectEnvironment ="Development" #For production environment use Production
$XConnectLogLevel = "Information" #Can be Debug

#install sitecore instance 
$XConnectCollectionParams = @{     
    Path = $Path  
    Package = $Package     
    LicenseFile = $LicenseFile
    SiteName = $SiteName
    SSLCert = $SSLCert
    XConnectCert = $XConnectCert
    SqlDbPrefix = $SqlDbPrefix  
    SqlAdminUser = $SqlAdminUser     
    SqlAdminPassword = $SqlAdminPassword
    SqlCollectionUser = $SqlCollectionUser
    SqlCollectionPassword = $SqlCollectionPassword
    SqlProcessingPoolsUser = $SqlProcessingPoolsUser
    SqlProcessingPoolsPassword = $SqlProcessingPoolsPassword
    SqlMarketingAutomationUser = $SqlMarketingAutomationUser
    SqlMarketingAutomationPassword = $SqlMarketingAutomationPassword
    SqlMessagingUser = $SqlMessagingUser
    SqlMessagingPassword = $SqlMessagingPassword
    SqlServer = $SqlServer 
    XConnectEnvironment = $XConnectEnvironment
    XConnectLogLevel = $XConnectLogLevel             
} 
Write-Host @XConnectCollectionParams
Install-SitecoreConfiguration @XConnectCollectionParams -Verbose

<#
MIT License

Copyright (c) 2018 Ramon Aseniero

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
#>