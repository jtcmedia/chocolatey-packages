$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/09bebd6e9324/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-2022.1.11f1.exe'
$checksum64     = '7565e6d39a664671a04514563acc771391e50639c1f693006b7a558702b4df07'

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
