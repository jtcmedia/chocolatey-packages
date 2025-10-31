$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/74a0adb02c31/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-6000.0.61f1.exe'
$checksum64     = '2cffdf776e2854157c45ef9e21a6cefbf988b4796e71945839461c2c6b764076'

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
