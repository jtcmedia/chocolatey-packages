$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/c9992ac36c34/TargetSupportInstaller/UnitySetup-Universal-Windows-Platform-Support-for-Editor-6000.2.8f1.exe'
$checksum64     = 'efd2a8c74784f686e9045199a765bc5a8a8455057b66960d6aa95685ece96735'

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
