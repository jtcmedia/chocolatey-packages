$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/6c53ebaf375d/TargetSupportInstaller/UnitySetup-Mac-Server-Support-for-Editor-2022.3.61f1.exe'
$checksum64     = 'cef729a015c5e3e79b45bca059b641f13ea45c003aa361e75ec9279552982f40'

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
