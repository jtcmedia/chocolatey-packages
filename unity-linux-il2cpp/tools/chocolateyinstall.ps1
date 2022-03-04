$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/bcb93e5482d2/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-2021.2.14f1.exe'
$checksum64     = '1b0df10944cc0dd47dd1ec120fd418db24bbfec635c6bd9b891790cf02629813'

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
