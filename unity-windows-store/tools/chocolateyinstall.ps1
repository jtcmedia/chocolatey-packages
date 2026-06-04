$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/feeafc12a938/TargetSupportInstaller/UnitySetup-Universal-Windows-Platform-Support-for-Editor-6000.4.10f1.exe'
$checksum64     = '9be1fe64ef6ecc29e8f5b157189b133ad34cae89c6fd0045341b62ee63a52e04'

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
