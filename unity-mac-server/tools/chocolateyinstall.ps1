$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/8331acaee5d3/TargetSupportInstaller/UnitySetup-Mac-Server-Support-for-Editor-2022.2.7f1.exe'
$checksum64     = 'e2db3729ed70a9c2c0d53b447a64f98e8e580a6934decd27341774466a3e7340'

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
