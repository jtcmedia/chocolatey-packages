$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/d3d30d158480/TargetSupportInstaller/UnitySetup-Mac-Server-Support-for-Editor-6000.2.10f1.exe'
$checksum64     = '561a2b1a89c56188de2dff80fccdc369fae6d804e24324ccf3634accd1f2b434'

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
