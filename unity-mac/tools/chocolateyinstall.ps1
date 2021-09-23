$ErrorActionPreference = 'Stop';

$packageName    = 'unity-mac'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/a137e5fb0427/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-2021.1.22f1.exe'
$checksum64     = '080fe1cf25538c8f4bb807296f26a13b43ebec9c68175a5aeaf87638f1679b13'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'EXE'
  url64bit       = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
