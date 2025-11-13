$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/e89d5df0e333/TargetSupportInstaller/UnitySetup-Universal-Windows-Platform-Support-for-Editor-6000.2.12f1.exe'
$checksum64     = '030ab6994e3e1c0f796de417f34b9e66d82247c646fc5be2583c868910639050'

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
