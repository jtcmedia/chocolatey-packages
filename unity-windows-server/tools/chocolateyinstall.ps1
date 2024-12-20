$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/b2e806cf271c/TargetSupportInstaller/UnitySetup-Windows-Server-Support-for-Editor-6000.0.32f1.exe'
$checksum64     = 'abec7e9271fcff039f8ea67c7e931c987ddcee9b87fab4307c971cf0fa20e628'

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
