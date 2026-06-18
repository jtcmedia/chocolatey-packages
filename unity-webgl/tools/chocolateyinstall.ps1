$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/240d06e2411b/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-6000.6.0a7.exe'
$checksum64     = 'afd1059013c218eef95d4acae3d71c1ec1d996b76a905407577e282527025bca'

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
