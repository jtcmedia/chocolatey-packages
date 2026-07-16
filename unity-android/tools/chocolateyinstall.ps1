$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/2212ba80b59e/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-6000.6.0b4.exe'
$checksum64     = '9d4a440e947ba11fb86ac167ff80d6c0c979782d0957086a0587baa58f14884c'

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
