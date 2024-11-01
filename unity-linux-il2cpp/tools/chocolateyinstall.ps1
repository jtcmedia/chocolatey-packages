$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/4859ab7b5a49/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-6000.0.25f1.exe'
$checksum64     = '886616b2c5cdf7f172f808790013859b84122e8f73323b800f6d2eb713f5e018'

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
