# Created by deNch 09/19/2022
# Default preset
$tweaks = @(
### Require Administrator ###
"RequireAdmin",

### Post Setup ###
"DisableServices",

### Auxiliary Functions ###
"WaitForKey",
"Restart"
)

##########
# Require Administrator
##########

# Relaunch the Script with Administrator Privileges.
Function RequireAdmin {
If (!([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]"Administrator")) {
Start-Process powershell.exe "-NoProfile -ExecutionPolicy Bypass -File `"$PSCommandPath`" $PSCommandArgs" -WorkingDirectory $pwd -Verb RunAs
Exit
}
}

##########
# Post Setup
##########

# Disabling Un Nessessary Services (Requires Restart)
Function DisableServices {
Write-Host "Stopping and Disabling Services..."  -ForegroundColor Green
$errpref = $ErrorActionPreference #save actual preference
$ErrorActionPreference = "silentlycontinue"
Stop-Service "" -WarningAction SilentlyContinue
Set-Service "" -StartupType Disabled

Stop-Service "AxInstSV" -WarningAction SilentlyContinue
Set-Service "AxInstSV"  -StartupType Disabled
Stop-Service "AarSvc" -WarningAction SilentlyContinue
Set-Service "AarSvc"  -StartupType Manual
Stop-Service "AJRouter" -WarningAction SilentlyContinue
Set-Service "AJRouter"  -StartupType Disabled
Stop-Service "AppReadiness" -WarningAction SilentlyContinue
Set-Service "AppReadiness"  -StartupType Disabled
Stop-Service "AppIDSvc" -WarningAction SilentlyContinue
Set-Service "AppIDSvc"  -StartupType Manual
Stop-Service "Appinfo" -WarningAction SilentlyContinue
Set-Service "Appinfo"  -StartupType Manual
Stop-Service "ALG" -WarningAction SilentlyContinue
Set-Service "ALG"  -StartupType Disabled
Stop-Service "AppMgmt" -WarningAction SilentlyContinue
Set-Service "AppMgmt"  -StartupType Disabled
Stop-Service "AppXSvc" -WarningAction SilentlyContinue
Set-Service "AppXSvc"  -StartupType Manual
Stop-Service "AssignedAccessManagerSvc" -WarningAction SilentlyContinue
Set-Service "AssignedAccessManagerSvc"  -StartupType Disabled
Stop-Service "tzautoupdate" -WarningAction SilentlyContinue
Set-Service "tzautoupdate"  -StartupType Disabled
Stop-Service "BthAvctpSvc" -WarningAction SilentlyContinue
Set-Service "BthAvctpSvc"  -StartupType Disabled
Stop-Service "BITS" -WarningAction SilentlyContinue
Set-Service "BITS"  -StartupType Manual
Stop-Service "BDESVC" -WarningAction SilentlyContinue
Set-Service "BDESVC"  -StartupType Disabled
Stop-Service "wbengine" -WarningAction SilentlyContinue
Set-Service "wbengine"  -StartupType Disabled
Stop-Service "BTAGService" -WarningAction SilentlyContinue
Set-Service "BTAGService"  -StartupType Disabled
Stop-Service "bthserv" -WarningAction SilentlyContinue
Set-Service "bthserv"  -StartupType Disabled
Stop-Service "BluetoothUserService" -WarningAction SilentlyContinue
Set-Service "BluetoothUserService"  -StartupType Manual
Stop-Service "PeerDistSvc" -WarningAction SilentlyContinue
Set-Service "PeerDistSvc"  -StartupType Disabled
Stop-Service "camsvc" -WarningAction SilentlyContinue
Set-Service "camsvc"  -StartupType Manual
Stop-Service "CaptureService" -WarningAction SilentlyContinue
Set-Service "CaptureService"  -StartupType Disabled
Stop-Service "autotimesvc" -WarningAction SilentlyContinue
Set-Service "autotimesvc"  -StartupType 
Stop-Service "CertPropSvc" -WarningAction SilentlyContinue
Set-Service "CertPropSvc"  -StartupType Disabled
Stop-Service "ClipSVC" -WarningAction SilentlyContinue
Set-Service "ClipSVC"  -StartupType Manual
Stop-Service "cbdhsvc" -WarningAction SilentlyContinue
Set-Service "cbdhsvc"  -StartupType Disabled
Stop-Service "KeyIso" -WarningAction SilentlyContinue
Set-Service "KeyIso"  -StartupType Disabled
Stop-Service "COMSysApp" -WarningAction SilentlyContinue
Set-Service "COMSysApp"  -StartupType Manual
Stop-Service "CDPSvc" -WarningAction SilentlyContinue
Set-Service "CDPSvc"  -StartupType Disabled
Stop-Service "DiagTrack" -WarningAction SilentlyContinue
Set-Service "DiagTrack"  -StartupType Disabled
Stop-Service "ConsentUxUserSvc" -WarningAction SilentlyContinue
Set-Service "ConsentUxUserSvc"  -StartupType Disabled
Stop-Service "PimIndexMaintenanceSvc" -WarningAction SilentlyContinue
Set-Service "PimIndexMaintenanceSvc"  -StartupType Disabled
Stop-Service "VaultSvc" -WarningAction SilentlyContinue
Set-Service "VaultSvc"  -StartupType Disabled
Stop-Service "DsSvc" -WarningAction SilentlyContinue
Set-Service "DsSvc"  -StartupType Disabled
Stop-Service "DusmSvc" -WarningAction SilentlyContinue
Set-Service "DusmSvc"  -StartupType Disabled
Stop-Service "dcsvc" -WarningAction SilentlyContinue
Set-Service "dcsvc"  -StartupType Manual
Stop-Service "DoSvc" -WarningAction SilentlyContinue
Set-Service "DoSvc"  -StartupType Disabled
Stop-Service "DeviceAssociationService" -WarningAction SilentlyContinue
Set-Service "DeviceAssociationService"  -StartupType Disabled
Stop-Service "DeviceInstall" -WarningAction SilentlyContinue
Set-Service "DeviceInstall"  -StartupType Manual
Stop-Service "DmEnrollmentSvc" -WarningAction SilentlyContinue
Set-Service "DmEnrollmentSvc"  -StartupType Manual
Stop-Service "dmwappushservice" -WarningAction SilentlyContinue
Set-Service "dmwappushservice"  -StartupType Disabled
Stop-Service "DsmSvc" -WarningAction SilentlyContinue
Set-Service "DsmSvc"  -StartupType Disabled
Stop-Service "DeviceAssociationBrokerSvc" -WarningAction SilentlyContinue
Set-Service "DeviceAssociationBrokerSvc"  -StartupType Manual
Stop-Service "DevicePickerUserSvc" -WarningAction SilentlyContinue
Set-Service "DevicePickerUserSvc"  -StartupType Disabled
Stop-Service "DevicesFlowUserSvc" -WarningAction SilentlyContinue
Set-Service "DevicesFlowUserSvc"  -StartupType Manual
Stop-Service "DevQueryBroker" -WarningAction SilentlyContinue
Set-Service "DevQueryBroker"  -StartupType Disabled
Stop-Service "diagsvc" -WarningAction SilentlyContinue
Set-Service "diagsvc"  -StartupType Disabled
Stop-Service "DPS" -WarningAction SilentlyContinue
Set-Service "DPS"  -StartupType Disabled
Stop-Service "WdiServiceHost" -WarningAction SilentlyContinue
Set-Service "WdiServiceHost"  -StartupType Disabled
Stop-Service "WdiSystemHost" -WarningAction SilentlyContinue
Set-Service "WdiSystemHost"  -StartupType Disabled
Stop-Service "DialogBlockingService" -WarningAction SilentlyContinue
Set-Service "DialogBlockingService"  -StartupType Disabled
Stop-Service "DisplayEnhancementService" -WarningAction SilentlyContinue
Set-Service "DisplayEnhancementService"  -StartupType Disabled
Stop-Service "DispBrokerDesktopSvc" -WarningAction SilentlyContinue
Set-Service "DispBrokerDesktopSvc"  -StartupType Disabled
Stop-Service "TrkWks" -WarningAction SilentlyContinue
Set-Service "TrkWks"  -StartupType Disabled
Stop-Service "MSDTC" -WarningAction SilentlyContinue
Set-Service "MSDTC"  -StartupType Disabled
Stop-Service "MapsBroker" -WarningAction SilentlyContinue
Set-Service "MapsBroker"  -StartupType Disabled
Stop-Service "embeddedmode" -WarningAction SilentlyContinue
Set-Service "embeddedmode"  -StartupType Manual
Stop-Service "EFS" -WarningAction SilentlyContinue
Set-Service "EFS"  -StartupType Disabled
Stop-Service "EntAppSvc" -WarningAction SilentlyContinue
Set-Service "EntAppSvc"  -StartupType Manual
Stop-Service "Eaphost" -WarningAction SilentlyContinue
Set-Service "Eaphost"  -StartupType Disabled
Stop-Service "fhsvc" -WarningAction SilentlyContinue
Set-Service "fhsvc"  -StartupType Disabled
Stop-Service "fdPHost" -WarningAction SilentlyContinue
Set-Service "fdPHost"  -StartupType Disabled
Stop-Service "FDResPub" -WarningAction SilentlyContinue
Set-Service "FDResPub"  -StartupType Disabled
Stop-Service "BcastDVRUserService" -WarningAction SilentlyContinue
Set-Service "BcastDVRUserService"  -StartupType Disabled
Stop-Service "lfsvc" -WarningAction SilentlyContinue
Set-Service "lfsvc"  -StartupType Disabled
Stop-Service "GoogleChromeElevationService" -WarningAction SilentlyContinue
Set-Service "GoogleChromeElevationService"  -StartupType Manual
Stop-Service "gupdate" -WarningAction SilentlyContinue
Set-Service "gupdate"  -StartupType Disabled
Stop-Service "gupdatem" -WarningAction SilentlyContinue
Set-Service "gupdatem"  -StartupType Disabled
Stop-Service "GraphicsPerfSvc" -WarningAction SilentlyContinue
Set-Service "GraphicsPerfSvc"  -StartupType Disabled
Stop-Service "hidserv" -WarningAction SilentlyContinue
Set-Service "hidserv"  -StartupType Manual
Stop-Service "HvHost" -WarningAction SilentlyContinue
Set-Service "HvHost"  -StartupType Disabled
Stop-Service "vmickvpexchange" -WarningAction SilentlyContinue
Set-Service "vmickvpexchange"  -StartupType Disabled
Stop-Service "vmicguestinterface" -WarningAction SilentlyContinue
Set-Service "vmicguestinterface"  -StartupType Disabled
Stop-Service "vmicshutdown" -WarningAction SilentlyContinue
Set-Service "vmicshutdown"  -StartupType Disabled
Stop-Service "vmicheartbeat" -WarningAction SilentlyContinue
Set-Service "vmicheartbeat"  -StartupType Disabled
Stop-Service "vmicvmsession" -WarningAction SilentlyContinue
Set-Service "vmicvmsession"  -StartupType Disabled
Stop-Service "vmicrdv" -WarningAction SilentlyContinue
Set-Service "vmicrdv"  -StartupType Disabled
Stop-Service "vmictimesync" -WarningAction SilentlyContinue
Set-Service "vmictimesync"  -StartupType Disabled
Stop-Service "vmicvss" -WarningAction SilentlyContinue
Set-Service "vmicvss"  -StartupType Disabled
Stop-Service "IKEEXT" -WarningAction SilentlyContinue
Set-Service "IKEEXT"  -StartupType Disabled
Stop-Service "Intel(R) Capability Licensing Service TCP IP Interface" -WarningAction SilentlyContinue
Set-Service "Intel(R) Capability Licensing Service TCP IP Interface"  -StartupType Manual
Stop-Service "cphs" -WarningAction SilentlyContinue
Set-Service "cphs"  -StartupType Manual
Stop-Service "SharedAccess" -WarningAction SilentlyContinue
Set-Service "SharedAccess"  -StartupType Disabled
Stop-Service "iphlpsvc" -WarningAction SilentlyContinue
Set-Service "iphlpsvc"  -StartupType Disabled
Stop-Service "IpxlatCfgSvc" -WarningAction SilentlyContinue
Set-Service "IpxlatCfgSvc"  -StartupType Disabled
Stop-Service "PolicyAgent" -WarningAction SilentlyContinue
Set-Service "PolicyAgent"  -StartupType Disabled
Stop-Service "KtmRm" -WarningAction SilentlyContinue
Set-Service "KtmRm"  -StartupType Disabled
Stop-Service "LxpSvc" -WarningAction SilentlyContinue
Set-Service "LxpSvc"  -StartupType Disabled
Stop-Service "lltdsvc" -WarningAction SilentlyContinue
Set-Service "lltdsvc"  -StartupType Disabled
Stop-Service "wlpasvc" -WarningAction SilentlyContinue
Set-Service "wlpasvc"  -StartupType Manual
Stop-Service "McpManagementService" -WarningAction SilentlyContinue
Set-Service "McpManagementService"  -StartupType Disabled
Stop-Service "MessagingService" -WarningAction SilentlyContinue
Set-Service "MessagingService"  -StartupType Disabled
Stop-Service "diagnosticshub.standardcollector.service" -WarningAction SilentlyContinue
Set-Service "diagnosticshub.standardcollector.service"  -StartupType Disabled
Stop-Service "wlidsvc" -WarningAction SilentlyContinue
Set-Service "wlidsvc"  -StartupType Disabled
Stop-Service "AppVClient" -WarningAction SilentlyContinue
Set-Service "AppVClient"  -StartupType Disabled
Stop-Service "cloudidsvc" -WarningAction SilentlyContinue
Set-Service "cloudidsvc"  -StartupType Manual
Stop-Service "MicrosoftEdgeElevationService" -WarningAction SilentlyContinue
Set-Service "MicrosoftEdgeElevationService"  -StartupType Disabled
Stop-Service "edgeupdate" -WarningAction SilentlyContinue
Set-Service "edgeupdate"  -StartupType Disabled
Stop-Service "edgeupdatem" -WarningAction SilentlyContinue
Set-Service "edgeupdatem"  -StartupType Disabled
Stop-Service "MSiSCSI" -WarningAction SilentlyContinue
Set-Service "MSiSCSI"  -StartupType Disabled
Stop-Service "MsKeyboardFilter" -WarningAction SilentlyContinue
Set-Service "MsKeyboardFilter"  -StartupType Disabled
Stop-Service "NgcSvc" -WarningAction SilentlyContinue
Set-Service "NgcSvc"  -StartupType Manual
Stop-Service "NgcCtnrSvc" -WarningAction SilentlyContinue
Set-Service "NgcCtnrSvc"  -StartupType Manual
Stop-Service "swprv" -WarningAction SilentlyContinue
Set-Service "swprv"  -StartupType Manual
Stop-Service "smphost" -WarningAction SilentlyContinue
Set-Service "smphost"  -StartupType Disabled
Stop-Service "InstallService" -WarningAction SilentlyContinue
Set-Service "InstallService"  -StartupType Disabled
Stop-Service "uhssvc" -WarningAction SilentlyContinue
Set-Service "uhssvc"  -StartupType Disabled
Stop-Service "SmsRouter" -WarningAction SilentlyContinue
Set-Service "SmsRouter"  -StartupType Disabled
Stop-Service "NaturalAuthentication" -WarningAction SilentlyContinue
Set-Service "NaturalAuthentication"  -StartupType Disabled
Stop-Service "Netlogon" -WarningAction SilentlyContinue
Set-Service "Netlogon"  -StartupType Disabled
Stop-Service "NcdAutoSetup" -WarningAction SilentlyContinue
Set-Service "NcdAutoSetup"  -StartupType Disabled
Stop-Service "NcbService" -WarningAction SilentlyContinue
Set-Service "NcbService"  -StartupType Disabled
Stop-Service "Netman" -WarningAction SilentlyContinue
Set-Service "Netman"  -StartupType Manual
Stop-Service "NcaSvc" -WarningAction SilentlyContinue
Set-Service "NcaSvc"  -StartupType Disabled
Stop-Service "netprofm" -WarningAction SilentlyContinue
Set-Service "netprofm"  -StartupType Manual
Stop-Service "NlaSvc" -WarningAction SilentlyContinue
Set-Service "NlaSvc"  -StartupType Disabled
Stop-Service "NetSetupSvc" -WarningAction SilentlyContinue
Set-Service "NetSetupSvc"  -StartupType Manual
Stop-Service "FvSvc" -WarningAction SilentlyContinue
Set-Service "FvSvc"  -StartupType Manual
Stop-Service "NvContainerLocalSystem" -WarningAction SilentlyContinue
Set-Service "NvContainerLocalSystem"  -StartupType Manual
Stop-Service "CscService" -WarningAction SilentlyContinue
Set-Service "CscService"  -StartupType Disabled
Stop-Service "defragsvc" -WarningAction SilentlyContinue
Set-Service "defragsvc"  -StartupType Disabled
Stop-Service "WpcMonSvc" -WarningAction SilentlyContinue
Set-Service "WpcMonSvc"  -StartupType Disabled
Stop-Service "SEMgrSvc" -WarningAction SilentlyContinue
Set-Service "SEMgrSvc"  -StartupType Disabled
Stop-Service "PNRPsvc" -WarningAction SilentlyContinue
Set-Service "PNRPsvc"  -StartupType Disabled
Stop-Service "p2psvc" -WarningAction SilentlyContinue
Set-Service "p2psvc"  -StartupType Disabled
Stop-Service "p2pimsvc" -WarningAction SilentlyContinue
Set-Service "p2pimsvc"  -StartupType Disabled
Stop-Service "PerfHost" -WarningAction SilentlyContinue
Set-Service "PerfHost"  -StartupType Manual
Stop-Service "pla" -WarningAction SilentlyContinue
Set-Service "pla"  -StartupType Disabled
Stop-Service "PhoneSvc" -WarningAction SilentlyContinue
Set-Service "PhoneSvc"  -StartupType Disabled
Stop-Service "PlugPlay" -WarningAction SilentlyContinue
Set-Service "PlugPlay"  -StartupType Disabled
Stop-Service "PNRPAutoReg" -WarningAction SilentlyContinue
Set-Service "PNRPAutoReg"  -StartupType Disabled
Stop-Service "WPDBusEnum" -WarningAction SilentlyContinue
Set-Service "WPDBusEnum"  -StartupType Disabled
Stop-Service "Spooler" -WarningAction SilentlyContinue
Set-Service "Spooler"  -StartupType Disabled
Stop-Service "PrintWorkflowUserSvc" -WarningAction SilentlyContinue
Set-Service "PrintWorkflowUserSvc"  -StartupType Disabled
Stop-Service "wercplsupport" -WarningAction SilentlyContinue
Set-Service "wercplsupport"  -StartupType Disabled
Stop-Service "PcaSvc" -WarningAction SilentlyContinue
Set-Service "PcaSvc"  -StartupType Disabled
Stop-Service "QWAVE" -WarningAction SilentlyContinue
Set-Service "QWAVE"  -StartupType Disabled
Stop-Service "RmSvc" -WarningAction SilentlyContinue
Set-Service "RmSvc"  -StartupType Disabled
Stop-Service "TroubleshootingSvc" -WarningAction SilentlyContinue
Set-Service "TroubleshootingSvc"  -StartupType Disabled
Stop-Service "RasAuto" -WarningAction SilentlyContinue
Set-Service "RasAuto"  -StartupType Disabled
Stop-Service "SessionEnv" -WarningAction SilentlyContinue
Set-Service "SessionEnv"  -StartupType Disabled
Stop-Service "TermService" -WarningAction SilentlyContinue
Set-Service "TermService"  -StartupType Disabled
Stop-Service "UmRdpService" -WarningAction SilentlyContinue
Set-Service "UmRdpService"  -StartupType Disabled
Stop-Service "RpcLocator" -WarningAction SilentlyContinue
Set-Service "RpcLocator"  -StartupType Disabled
Stop-Service "RemoteRegistry" -WarningAction SilentlyContinue
Set-Service "RemoteRegistry"  -StartupType Disabled
Stop-Service "RetailDemo" -WarningAction SilentlyContinue
Set-Service "RetailDemo"  -StartupType Disabled
Stop-Service "RemoteAccess" -WarningAction SilentlyContinue
Set-Service "RemoteAccess"  -StartupType Disabled
Stop-Service "seclogon" -WarningAction SilentlyContinue
Set-Service "seclogon"  -StartupType Disabled
Stop-Service "SstpSvc" -WarningAction SilentlyContinue
Set-Service "SstpSvc"  -StartupType Manual
Stop-Service "SamSs" -WarningAction SilentlyContinue
Set-Service "SamSs"  -StartupType Disabled
Stop-Service "Sense" -WarningAction SilentlyContinue
Set-Service "Sense"  -StartupType Manual
Stop-Service "SensorDataService" -WarningAction SilentlyContinue
Set-Service "SensorDataService"  -StartupType Disabled
Stop-Service "SensrSvc" -WarningAction SilentlyContinue
Set-Service "SensrSvc"  -StartupType Disabled
Stop-Service "SensorService" -WarningAction SilentlyContinue
Set-Service "SensorService"  -StartupType Disabled
Stop-Service "LanmanServer" -WarningAction SilentlyContinue
Set-Service "LanmanServer"  -StartupType Disabled
Stop-Service "shpamsvc" -WarningAction SilentlyContinue
Set-Service "shpamsvc"  -StartupType Disabled
Stop-Service "ShellHWDetection" -WarningAction SilentlyContinue
Set-Service "ShellHWDetection"  -StartupType Disabled
Stop-Service "SCardSvr" -WarningAction SilentlyContinue
Set-Service "SCardSvr"  -StartupType Disabled
Stop-Service "ScDeviceEnum" -WarningAction SilentlyContinue
Set-Service "ScDeviceEnum"  -StartupType Disabled
Stop-Service "SCPolicySvc" -WarningAction SilentlyContinue
Set-Service "SCPolicySvc"  -StartupType Disabled
Stop-Service "SNMPTRAP" -WarningAction SilentlyContinue
Set-Service "SNMPTRAP"  -StartupType Disabled
Stop-Service "SharedRealitySvc" -WarningAction SilentlyContinue
Set-Service "SharedRealitySvc"  -StartupType Disabled
Stop-Service "svsvc" -WarningAction SilentlyContinue
Set-Service "svsvc"  -StartupType Disabled
Stop-Service "SSDPSRV" -WarningAction SilentlyContinue
Set-Service "SSDPSRV"  -StartupType Disabled
Stop-Service "StateRepository" -WarningAction SilentlyContinue
Set-Service "StateRepository"  -StartupType Manual
Stop-Service "Steam Client Service" -WarningAction SilentlyContinue
Set-Service "Steam Client Service"  -StartupType Manual
Stop-Service "WiaRpc" -WarningAction SilentlyContinue
Set-Service "WiaRpc"  -StartupType Disabled
Stop-Service "StorSvc" -WarningAction SilentlyContinue
Set-Service "StorSvc"  -StartupType Disabled
Stop-Service "TieringEngineService" -WarningAction SilentlyContinue
Set-Service "TieringEngineService"  -StartupType Disabled
Stop-Service "SysMain" -WarningAction SilentlyContinue
Set-Service "SysMain"  -StartupType Disabled
Stop-Service "SENS" -WarningAction SilentlyContinue
Set-Service "SENS"  -StartupType Disabled
Stop-Service "lmhosts" -WarningAction SilentlyContinue
Set-Service "lmhosts"  -StartupType Disabled
Stop-Service "TapiSrv" -WarningAction SilentlyContinue
Set-Service "TapiSrv"  -StartupType Disabled
Stop-Service "Themes" -WarningAction SilentlyContinue
Set-Service "Themes"  -StartupType Disabled
Stop-Service "TimeBrokerSvc" -WarningAction SilentlyContinue
Set-Service "TimeBrokerSvc"  -StartupType Manual
Stop-Service "TabletInputService" -WarningAction SilentlyContinue
Set-Service "TabletInputService"  -StartupType Disabled
Stop-Service "UdkUserSvc" -WarningAction SilentlyContinue
Set-Service "UdkUserSvc"  -StartupType Manual
Stop-Service "upnphost" -WarningAction SilentlyContinue
Set-Service "upnphost"  -StartupType Disabled
Stop-Service "UserDataSvc" -WarningAction SilentlyContinue
Set-Service "UserDataSvc"  -StartupType Disabled
Stop-Service "UnistoreSvc" -WarningAction SilentlyContinue
Set-Service "UnistoreSvc"  -StartupType Disabled
Stop-Service "UevAgentService" -WarningAction SilentlyContinue
Set-Service "UevAgentService"  -StartupType Disabled
Stop-Service "vgc" -WarningAction SilentlyContinue
Set-Service "vgc"  -StartupType Manual
Stop-Service "vds" -WarningAction SilentlyContinue
Set-Service "vds"  -StartupType Manual
Stop-Service "VSS" -WarningAction SilentlyContinue
Set-Service "VSS"  -StartupType Manual
Stop-Service "VacSvc" -WarningAction SilentlyContinue
Set-Service "VacSvc"  -StartupType Disabled
Stop-Service "WalletService" -WarningAction SilentlyContinue
Set-Service "WalletService"  -StartupType Disabled
Stop-Service "WarpJITSvc" -WarningAction SilentlyContinue
Set-Service "WarpJITSvc"  -StartupType Disabled
Stop-Service "WdNisSvc" -WarningAction SilentlyContinue
Set-Service "WdNisSvc"  -StartupType Manual
Stop-Service "TokenBroker" -WarningAction SilentlyContinue
Set-Service "TokenBroker"  -StartupType Manual
Stop-Service "WebClient" -WarningAction SilentlyContinue
Set-Service "WebClient"  -StartupType Disabled
Stop-Service "WFDSConMgrSvc" -WarningAction SilentlyContinue
Set-Service "WFDSConMgrSvc"  -StartupType Disabled
Stop-Service "SDRSVC" -WarningAction SilentlyContinue
Set-Service "SDRSVC"  -StartupType Disabled
Stop-Service "WbioSrvc" -WarningAction SilentlyContinue
Set-Service "WbioSrvc"  -StartupType Disabled
Stop-Service "FrameServer" -WarningAction SilentlyContinue
Set-Service "FrameServer"  -StartupType Disabled
Stop-Service "wcncsvc" -WarningAction SilentlyContinue
Set-Service "wcncsvc"  -StartupType Disabled
Stop-Service "Wcmsvc" -WarningAction SilentlyContinue
Set-Service "Wcmsvc"  -StartupType Disabled
Stop-Service "WEPHOSTSVC" -WarningAction SilentlyContinue
Set-Service "WEPHOSTSVC"  -StartupType Disabled
Stop-Service "WerSvc" -WarningAction SilentlyContinue
Set-Service "WerSvc"  -StartupType Disabled
Stop-Service "Wecsvc" -WarningAction SilentlyContinue
Set-Service "Wecsvc"  -StartupType Disabled
Stop-Service "FontCache" -WarningAction SilentlyContinue
Set-Service "FontCache"  -StartupType Disabled
Stop-Service "stisvc" -WarningAction SilentlyContinue
Set-Service "stisvc"  -StartupType Disabled
Stop-Service "wisvc" -WarningAction SilentlyContinue
Set-Service "wisvc"  -StartupType Disabled
Stop-Service "msiserver" -WarningAction SilentlyContinue
Set-Service "msiserver"  -StartupType Manual
Stop-Service "LicenseManager" -WarningAction SilentlyContinue
Set-Service "LicenseManager"  -StartupType Disabled
Stop-Service "WManSvc" -WarningAction SilentlyContinue
Set-Service "WManSvc"  -StartupType Manual
Stop-Service "MixedRealityOpenXRSvc" -WarningAction SilentlyContinue
Set-Service "MixedRealityOpenXRSvc"  -StartupType Disabled
Stop-Service "icssvc" -WarningAction SilentlyContinue
Set-Service "icssvc"  -StartupType Disabled
Stop-Service "TrustedInstaller" -WarningAction SilentlyContinue
Set-Service "TrustedInstaller"  -StartupType Manual
Stop-Service "spectrum" -WarningAction SilentlyContinue
Set-Service "spectrum"  -StartupType Disabled
Stop-Service "perceptionsimulation" -WarningAction SilentlyContinue
Set-Service "perceptionsimulation"  -StartupType Disabled
Stop-Service "WpnService" -WarningAction SilentlyContinue
Set-Service "WpnService"  -StartupType Disabled
Stop-Service "PushToInstall" -WarningAction SilentlyContinue
Set-Service "PushToInstall"  -StartupType Disabled
Stop-Service "WinRM" -WarningAction SilentlyContinue
Set-Service "WinRM"  -StartupType Disabled
Stop-Service "WSearch" -WarningAction SilentlyContinue
Set-Service "WSearch"  -StartupType Disabled
Stop-Service "SecurityHealthService" -WarningAction SilentlyContinue
Set-Service "SecurityHealthService"  -StartupType Manual
Stop-Service "W32Time" -WarningAction SilentlyContinue
Set-Service "W32Time"  -StartupType Disabled
Stop-Service "wuauserv" -WarningAction SilentlyContinue
Set-Service "wuauserv"  -StartupType Manual
Stop-Service "WaaSMedicSvc" -WarningAction SilentlyContinue
Set-Service "WaaSMedicSvc"  -StartupType Disabled
Stop-Service "WinHttpAutoProxySvc" -WarningAction SilentlyContinue
Set-Service "WinHttpAutoProxySvc"  -StartupType Manual
Stop-Service "dot3svc" -WarningAction SilentlyContinue
Set-Service "dot3svc"  -StartupType Disabled
Stop-Service "WlanSvc" -WarningAction SilentlyContinue
Set-Service "WlanSvc"  -StartupType Disabled
Stop-Service "wmiApSrv" -WarningAction SilentlyContinue
Set-Service "wmiApSrv"  -StartupType Disabled
Stop-Service "LanmanWorkstation" -WarningAction SilentlyContinue
Set-Service "LanmanWorkstation"  -StartupType Disabled
Stop-Service "WwanSvc" -WarningAction SilentlyContinue
Set-Service "WwanSvc"  -StartupType Disabled
Stop-Service "XboxGipSvc" -WarningAction SilentlyContinue
Set-Service "XboxGipSvc"  -StartupType Disabled
Stop-Service "XblAuthManager" -WarningAction SilentlyContinue
Set-Service "XblAuthManager"  -StartupType Disabled
Stop-Service "XblGameSave" -WarningAction SilentlyContinue
Set-Service "XblGameSave"  -StartupType Disabled
Stop-Service "XboxNetApiSvc" -WarningAction SilentlyContinue
Set-Service "XboxNetApiSvc"  -StartupType Disabled
$ErrorActionPreference = $errpref #restore previous preference
}

##########
# Auxiliary Functions
##########

# Wait for Key Press
Function WaitForKey {
Write-Host "All Done! You Can Now Restart Your PC!!!" -ForegroundColor Red
Write-Host "Press Any Key to Continue..." -ForegroundColor White
[Console]::ReadKey($true) | Out-Null
}

# Restart Computer
Function Restart {
Write-Host "Glitch...REBOOT" -ForegroundColor Cyan
Restart-Computer
}

##########
# Parse Parameters and Apply Tweaks
##########

# Normalize Path to Preset File
$preset = ""
$PSCommandArgs = $args
If ($args -And $args[0].ToLower() -eq "-preset") {
$preset = Resolve-Path $($args | Select-Object -Skip 1)
$PSCommandArgs = "-preset `"$preset`""
}

# Load Function Names from Command Line Arguments or a Preset File
If ($args) {
$tweaks = $args
If ($preset) {
$tweaks = Get-Content $preset -ErrorAction Stop | ForEach { $_.Trim() } | Where { $_ -ne "" -and $_[0] -ne "#" }
}
}

# Call the Desired Tweak Functions
$tweaks | ForEach { Invoke-Expression $_ }