$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/9492f7722ddd/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-2023.1.14f1.exe'
$checksum64     = '22f3f416841a82297bf04efab0a17e7b4ffb4afd84cfe9863cccb9c8b960d2a0'

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
