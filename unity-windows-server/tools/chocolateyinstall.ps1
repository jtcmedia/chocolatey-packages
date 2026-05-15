$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/9be2869246c2/TargetSupportInstaller/UnitySetup-Windows-Server-Support-for-Editor-6000.5.0b8.exe'
$checksum64     = '7d7f626a7dc3b62b9230c4a4d969070759e1f0689a1aee78ab55a07d4041d76c'

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
