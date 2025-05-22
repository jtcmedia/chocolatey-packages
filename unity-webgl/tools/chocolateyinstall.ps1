$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/03270eb687c6/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-6000.1.4f1.exe'
$checksum64     = '4630698dae02850c6a4000ae1ad8782a84fad16b7d40589ecc65beeac2d74ba1'

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
