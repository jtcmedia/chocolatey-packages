$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/57daeefc879b/TargetSupportInstaller/UnitySetup-Universal-Windows-Platform-Support-for-Editor-2023.2.6f1.exe'
$checksum64     = '9941c7f766cc652b99fdfcc666d9dc75a431f9e1df7c4abbd4634eb5bb0eb35d'

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
