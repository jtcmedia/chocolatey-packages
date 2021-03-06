$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/c53830e277f1/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-2020.2.7f1.exe'
$checksum64     = '57b73694044317276ca008cbcef203213018e83af7c7a022888d3cdc07c3b0a8'

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
