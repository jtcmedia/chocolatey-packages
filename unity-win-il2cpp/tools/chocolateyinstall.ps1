$ErrorActionPreference = 'Stop';

$packageName    = 'unity-il2cpp'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/0af376155913/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-2019.4.0f1.exe'
$checksum64     = '4fafb5b8d57f57b16dda95408c8e8fc9aaabcc6a5747e4884da5587e2f4eb9a0'

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
