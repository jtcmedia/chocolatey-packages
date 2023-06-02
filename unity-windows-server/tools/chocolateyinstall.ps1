$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/fb119bb0b476/TargetSupportInstaller/UnitySetup-Windows-Server-Support-for-Editor-2022.3.0f1.exe'
$checksum64     = '194fd545877b5b2604aab3c9524f4ae241a1bee1b46512782a5cd765d330abe6'

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
