$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/0e25a174756c/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-2023.2.20f1.exe'
$checksum64     = '909f9556c43d6f3bb524e348a68d141dc326f405645295184faf747688b04bda'

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
