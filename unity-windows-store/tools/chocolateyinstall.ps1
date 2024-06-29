$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/fa7102f01711/TargetSupportInstaller/UnitySetup-Universal-Windows-Platform-Support-for-Editor-6000.0.8f1.exe'
$checksum64     = '50b36b70948d7a6f3c3d17b77cf01a73d66cc062a9f18d214e557c4255291374'

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
