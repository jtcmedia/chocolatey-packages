$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/c1f81ff5b082/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-6000.5.0b1.exe'
$checksum64     = '7abecc8919cf2fe577d667da08f58d9c7e1f3af73e5b9806aa6a367d9674c55f'

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
