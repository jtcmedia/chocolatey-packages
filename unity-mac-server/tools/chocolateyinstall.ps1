$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/621cd60d08fd/TargetSupportInstaller/UnitySetup-Mac-Server-Support-for-Editor-2022.2.11f1.exe'
$checksum64     = '14db75084e76e8364748f24ec73e3fad95121046bd107cb96e025acba7ac9535'

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
