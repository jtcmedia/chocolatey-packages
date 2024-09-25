$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/94d194ca434d/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-2021.3.44f1.exe'
$checksum64     = '2b53174deb8e97b8f06a5789c62b5b40ba81e00c99f91d7fb205b92a843ae8e7'

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
