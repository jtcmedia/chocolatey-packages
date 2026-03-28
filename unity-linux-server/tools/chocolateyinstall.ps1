$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/c1f81ff5b082/TargetSupportInstaller/UnitySetup-Linux-Server-Support-for-Editor-6000.5.0b1.exe'
$checksum64     = 'ee39f07203af2edcbc21f0726f5f2c01f3509da7c2b584b15bfe1813c9ed95a2'

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
