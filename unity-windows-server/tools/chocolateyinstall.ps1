$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/accd6d46ced1/TargetSupportInstaller/UnitySetup-Windows-Server-Support-for-Editor-2023.2.4f1.exe'
$checksum64     = '7fb1ce632deb16fb267a3af7977f154695c301cef8d13af669f661bc3572ab7d'

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
