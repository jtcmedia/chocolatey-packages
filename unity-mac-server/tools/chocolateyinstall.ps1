$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/54cb9bda89c4/TargetSupportInstaller/UnitySetup-Mac-Server-Support-for-Editor-2022.2.17f1.exe'
$checksum64     = '4634ed1a30993bb89aba6d2d9767c8a746b35a4602973f005e54b6e5b77949df'

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
