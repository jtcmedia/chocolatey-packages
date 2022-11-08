$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/9e7d58001ecf/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-2021.3.13f1.exe'
$checksum64     = '1d03aa3aa53e3e20fa8118a99570b4c4658822617041ee0091a924941488dd20'

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
