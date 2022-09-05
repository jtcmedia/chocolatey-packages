$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/ad3870b89536/TargetSupportInstaller/UnitySetup-Mac-Server-Support-for-Editor-2021.3.9f1.exe'
$checksum64     = '4ea6449a1e5b46d6bd0dea2cc32f25520024f1281900ffdd77e6dd262a50e081'

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
