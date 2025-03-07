$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/249fe0a196c2/TargetSupportInstaller/UnitySetup-Mac-Server-Support-for-Editor-6000.2.0a6.exe'
$checksum64     = '3b360f5372dfd16968eac6bafea9214835581c25c689a1e5b54b15273c55417b'

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
