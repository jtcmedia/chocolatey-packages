$ErrorActionPreference = 'Stop';

$packageName    = 'unity-il2cpp'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://beta.unity3d.com/download/9dace1eed4cc/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-2019.2.5f1.exe'
$checksum64     = 'f51a6827d73e20cae21f3bf0589bb90af67b9bbf4fea7d7132522eec1eec85fb'

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
