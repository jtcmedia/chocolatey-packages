$ErrorActionPreference = 'Stop';

$packageName    = 'unity-il2cpp'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/fef62e97e63b/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-2019.1.1f1.exe'
$checksum64     = '31c0c62e388a6239e656e885d1ac2123ba49d3db2509c721d412ccbe08212b76'

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
