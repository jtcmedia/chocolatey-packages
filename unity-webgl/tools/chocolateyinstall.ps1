$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/5cb7df797b7d/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-6000.5.8f1.exe'
$checksum64     = 'f9c538b1dd8fee5f02473e626720fe02912dc4a6205f5b0f89572d28b9c4c165'

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
