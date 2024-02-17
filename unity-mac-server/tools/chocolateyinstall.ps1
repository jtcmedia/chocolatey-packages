$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/316c1fd686f6/TargetSupportInstaller/UnitySetup-Mac-Server-Support-for-Editor-2023.2.10f1.exe'
$checksum64     = 'c798bc28ce41deb33f15a42d896b6e5e0284bf048620478600887cf048b23102'

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
