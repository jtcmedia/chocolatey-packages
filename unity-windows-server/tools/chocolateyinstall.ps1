$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/22856944e6d2/TargetSupportInstaller/UnitySetup-Windows-Server-Support-for-Editor-2022.1.13f1.exe'
$checksum64     = 'b3cfb1b56da1b0a178d30f91ff5d6734053175f1663abfb40b3b32ecf6fbae8b'

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
