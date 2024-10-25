$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/11fa355cd605/TargetSupportInstaller/UnitySetup-Windows-Server-Support-for-Editor-6000.0.24f1.exe'
$checksum64     = '8b940a8ccb6309401ed7a24d344ea03e86ab4bd58df761e8d01b5588697ed8a4'

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
