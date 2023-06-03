$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/fb119bb0b476/TargetSupportInstaller/UnitySetup-Mac-Server-Support-for-Editor-2022.3.0f1.exe'
$checksum64     = 'afd8fd489d4372e35f792e74b6c0670f40712fc73f0bebb1d148e9df0248e165'

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
