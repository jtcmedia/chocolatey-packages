$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/e7adf66625be/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-6000.0.66f1.exe'
$checksum64     = 'b9fa6385824beb989743a44688f95416a89704f060f9df952e04a3be57bd468f'

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
