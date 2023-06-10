$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/ca3ffb99bcc6/TargetSupportInstaller/UnitySetup-Windows-Server-Support-for-Editor-2021.3.27f1.exe'
$checksum64     = '3684790c9908c21df6d76f73604df402181f1812d2e48914136ee01f126b5b23'

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
