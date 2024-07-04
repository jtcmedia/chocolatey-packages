$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/95a4219250e5/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-2022.3.36f1.exe'
$checksum64     = 'f4b9c6420d28b79c4a00fe16b9302338eeabe2cb095d9a9d8bf67cc96f387e7b'

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
