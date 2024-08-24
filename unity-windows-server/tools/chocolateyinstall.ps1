$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/ae37dbaefed8/TargetSupportInstaller/UnitySetup-Windows-Server-Support-for-Editor-6000.0.16f1.exe'
$checksum64     = 'fada63fddcbde46690de62b826a6ed4e62bcc5ce0ffbde46d01cbe42f074519a'

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
