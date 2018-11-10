$ErrorActionPreference = 'Stop';

$packageName    = 'unity-il2cpp'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/65e0713a5949/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-2018.2.15f1.exe'
$checksum64     = '99ea17b51e56d55f12b45ef4c3a6ad79664b39d1843dbe266ce5e0a7b4ba865b'

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
