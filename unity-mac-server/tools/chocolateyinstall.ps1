$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/4907324dc95b/TargetSupportInstaller/UnitySetup-Mac-Server-Support-for-Editor-2022.2.21f1.exe'
$checksum64     = '9452225926f13996bc1c80bdf624712ff887365f056689992d6004d40b39568a'

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
