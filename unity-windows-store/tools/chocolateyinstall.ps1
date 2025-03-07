$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/249fe0a196c2/TargetSupportInstaller/UnitySetup-Universal-Windows-Platform-Support-for-Editor-6000.2.0a6.exe'
$checksum64     = 'a22dfc82bd4e058cdaeeb12a0a49a62ccfb8971768c50a8215e305e843205f3e'

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
