$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/342347f1f18f/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-6000.5.0b9.exe'
$checksum64     = '9e8418d1a2f793d82939f5483551148001e08fcc0ece071775027a87a0395940'

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
