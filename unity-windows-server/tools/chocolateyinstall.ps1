$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/4fead5835099/TargetSupportInstaller/UnitySetup-Windows-Server-Support-for-Editor-2022.2.1f1.exe'
$checksum64     = '16c0275e3597fafd9ba683aae2c319f6b4597a39f070a6f745b632d19670af89'

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
