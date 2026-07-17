$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/c9ba695d4f07/TargetSupportInstaller/UnitySetup-Mac-Server-Support-for-Editor-6000.3.20f1.exe'
$checksum64     = '8361f14efa9ee0308278306cfc322ddc4db0f6b7318eff5fde998581d685144f'

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
