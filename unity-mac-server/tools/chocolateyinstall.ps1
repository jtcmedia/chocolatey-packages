$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/9492f7722ddd/TargetSupportInstaller/UnitySetup-Mac-Server-Support-for-Editor-2023.1.14f1.exe'
$checksum64     = 'f35aaa98f5ec5e30a84f806ded0806ec5cafe8102c5501a6d41557793a89222f'

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
