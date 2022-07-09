$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/7da38d85baf6/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-2021.3.6f1.exe'
$checksum64     = '59c5ebfd83f489ca58d4a297261068e1291d9d7985b06c8ea75c88edc6e83390'

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
