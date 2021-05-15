$ErrorActionPreference = 'Stop';

$packageName    = 'unity-il2cpp'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/d91830b65d9b/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-2021.1.7f1.exe'
$checksum64     = 'a6608b56040269a4d00888947e397213bd271bbdb9f2e282c24e583fcc134248'

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
