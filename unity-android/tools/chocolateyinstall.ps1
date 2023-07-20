$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/9dce81d9e7e0/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-2023.1.5f1.exe'
$checksum64     = '09d1243ce1641d9eab6977f1ac81e8258a75fbcb35d78f002db5410864a21f0f'

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
