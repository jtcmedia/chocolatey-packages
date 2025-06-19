$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/439913089442/TargetSupportInstaller/UnitySetup-Mac-Server-Support-for-Editor-6000.2.0b6.exe'
$checksum64     = '6beaee517a135ec3c0e08224ce9ac94143c889f60ee3fad2c001b6a2c18aae04'

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
