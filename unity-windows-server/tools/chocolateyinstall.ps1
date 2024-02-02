$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/244b723c30a6/TargetSupportInstaller/UnitySetup-Windows-Server-Support-for-Editor-2022.3.19f1.exe'
$checksum64     = '80e25e7a3322658bfaba9917af7e712bf3e3e2de1e36d4d025a589c6236d8617'

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
