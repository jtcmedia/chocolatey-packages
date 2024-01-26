$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/0a9195b3d453/TargetSupportInstaller/UnitySetup-Linux-Server-Support-for-Editor-2023.2.7f1.exe'
$checksum64     = 'f0856fd5461b07bee7278d1fe358bb2ff637634bd47961bfad9d589aa481e6d1'

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
