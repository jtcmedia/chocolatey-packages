$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/18bc01a066b4/TargetSupportInstaller/UnitySetup-Lumin-Support-for-Editor-2020.3.46f1.exe'
$checksum64     = 'a53784b053cde77c449b02c4f58ae9e9813e798d9b4b5aedd2075ceafe6c56f4'

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
