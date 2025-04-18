$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/2aeb7e9a02a2/TargetSupportInstaller/UnitySetup-Universal-Windows-Platform-Support-for-Editor-6000.2.0a9.exe'
$checksum64     = 'a9eb3c8460a314277e57f561cce9cbc45d75cfb4dfc5936dbaf95a0339fc9c6a'

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
