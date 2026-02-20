$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/f3f87a02ba54/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-6000.4.0b8.exe'
$checksum64     = 'cb43d9df11c41f8c26e3716321436c00f4bd0d28e05850332e87f15418532781'

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
