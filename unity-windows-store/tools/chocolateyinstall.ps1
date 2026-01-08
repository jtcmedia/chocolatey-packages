$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/a18e2220bd50/TargetSupportInstaller/UnitySetup-Universal-Windows-Platform-Support-for-Editor-6000.0.65f1.exe'
$checksum64     = 'e32c54783a5dd9b1cf576203ef826d1124714e0f682a2c307230e2e307fe2b51'

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
