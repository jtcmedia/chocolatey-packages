$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/334eb2a0b267/TargetSupportInstaller/UnitySetup-Universal-Windows-Platform-Support-for-Editor-2022.3.24f1.exe'
$checksum64     = 'f3f5ea60a0ec55f619628e4968e6ae2fef9f7e12d38c86ba3d0ffa83d846bed4'

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
