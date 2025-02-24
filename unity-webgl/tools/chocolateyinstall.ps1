$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/56df1dd3b76d/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-6000.2.0a4.exe'
$checksum64     = '2900efc4815ffb51b5a0390f47afe79ee4ff0c0b95d3175c122c9811ea0e9473'

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
