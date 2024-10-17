$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/0da89fac8e79/TargetSupportInstaller/UnitySetup-Mac-Server-Support-for-Editor-2021.3.45f1.exe'
$checksum64     = 'f0cff60388b4ba5d5ff68f3b5d78a55f1cbc20d01943035c02e9abe4ae563651'

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
