$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/9be2869246c2/TargetSupportInstaller/UnitySetup-Mac-Server-Support-for-Editor-6000.5.0b8.exe'
$checksum64     = 'e1df3f0fcb4beb3bda1de2210b4715e76372565dda1b9acf84d9ef571e748ab8'

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
