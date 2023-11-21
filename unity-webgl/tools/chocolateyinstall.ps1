$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/d0d63d039a6f/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-2023.2.0f1.exe'
$checksum64     = 'dcf29fcaea1dba7da0cd11fa1973cb5aa365e890c12d3b00eef5361d7ebf7be8'

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
