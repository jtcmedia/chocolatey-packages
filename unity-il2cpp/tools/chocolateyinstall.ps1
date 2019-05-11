$ErrorActionPreference = 'Stop';

$packageName    = 'unity-il2cpp'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/3e18427e571f/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-2019.1.2f1.exe'
$checksum64     = '941201bf0b64d9ffac8e76e5b2e806a86c039fb5bfa415dd9bd186f1b3901c72'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'EXE'
  url64bit       = $url64
  checksum       = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
