$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/cf7ddae6c717/TargetSupportInstaller/UnitySetup-Windows-Server-Support-for-Editor-6000.6.0b3.exe'
$checksum64     = '3553d9d4dc0951e44b01c86645ead1d73b2288dc0694bf91fda7b403af6cd4f4'

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
