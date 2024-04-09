$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/396a1c6fe404/TargetSupportInstaller/UnitySetup-Universal-Windows-Platform-Support-for-Editor-2023.2.17f1.exe'
$checksum64     = '58042db31a27a5c5c07b3baee0125be7bbcb2f02e106cd3a2c908396c577e0b3'

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
