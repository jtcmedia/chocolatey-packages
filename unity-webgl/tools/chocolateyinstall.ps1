$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/f3f87a02ba54/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-6000.4.0b8.exe'
$checksum64     = 'b2aad59268f3e61642e31b78968dc7689207cc2347ac05ee63b9ea2a557cbfe6'

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
