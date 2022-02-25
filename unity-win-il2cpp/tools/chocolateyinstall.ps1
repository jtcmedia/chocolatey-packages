$ErrorActionPreference = 'Stop';

$packageName    = 'unity-il2cpp'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/90b6766da538/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-2021.2.13f1.exe'
$checksum64     = 'aa48eb62a863c80371a666597ede10ded3e59a693d95b8a397af7cb659bcaa56'

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
