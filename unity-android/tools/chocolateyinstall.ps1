$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/2961e8c2b463/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-2022.1.8f1.exe'
$checksum64     = '67591943828584bb45747f7f65737146a1abaf7d8f69241d37881727a2976a60'

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
