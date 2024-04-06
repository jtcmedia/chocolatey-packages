$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/dbb3f7c5b5c6/TargetSupportInstaller/UnitySetup-Linux-Server-Support-for-Editor-2022.3.23f1.exe'
$checksum64     = '88b5df49cd306ea892e59d6e808fd57f92eb0b5d353522513cc840aa337e9bb2'

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
