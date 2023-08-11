$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/ab88ac34d80c/TargetSupportInstaller/UnitySetup-Linux-Server-Support-for-Editor-2023.1.8f1.exe'
$checksum64     = '707ebd9fceb108d946db9a38ed6baaab4b8381ad1b871a032b98c0f8cc5b82c6'

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
