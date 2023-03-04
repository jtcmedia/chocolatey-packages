$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/577897200b8b/TargetSupportInstaller/UnitySetup-Windows-Server-Support-for-Editor-2021.3.20f1.exe'
$checksum64     = '75824862d2230b4ea47e2145e20e4dd970a1133b93b96fedaf976f07e18fca39'

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
