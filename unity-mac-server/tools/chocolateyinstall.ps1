$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/f336aca0cab5/TargetSupportInstaller/UnitySetup-Mac-Server-Support-for-Editor-6000.0.28f1.exe'
$checksum64     = '8538b112dfdbd210397c0a5cfaab381f70025f7866a74d4d752d17f9df4f7d19'

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
