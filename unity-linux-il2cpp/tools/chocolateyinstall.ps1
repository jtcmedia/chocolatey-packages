$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/c1f81ff5b082/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-6000.5.0b1.exe'
$checksum64     = '9ba4112e3b9825243ae36b9c0158ca23c5e761b28bcd0d2ad5acb2f3b7588cc0'

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
