$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/d0e5f0a7b06a/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-2021.2.8f1.exe'
$checksum64     = '266fca33731d7222dcb4630f58ee0af757041f35948efa22c22f7dde469953c0'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'EXE'
  url64bit       = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
