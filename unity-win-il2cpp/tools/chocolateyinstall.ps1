$ErrorActionPreference = 'Stop';

$packageName    = 'unity-il2cpp'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/698c1113cef0/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-2020.1.11f1.exe'
$checksum64     = '3430fae23c82d96b285927cdf36af8a93d6375b8349ccee88b27cb344f67d0e6'

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
