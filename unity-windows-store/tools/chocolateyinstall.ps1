$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/67bef3276ff1/TargetSupportInstaller/UnitySetup-Universal-Windows-Platform-Support-for-Editor-6000.1.16f1.exe'
$checksum64     = '1f9620e9b3016a8aff369547e50918312a26aca6573174e014ce4bebe8f75fb8'

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
