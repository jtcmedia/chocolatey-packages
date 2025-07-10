$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/9b156bbbd4df/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-6000.1.11f1.exe'
$checksum64     = '984f130ac9664beafe627f29f8c758d70e7427a52c6b945e2aff30c5254a3c84'

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
