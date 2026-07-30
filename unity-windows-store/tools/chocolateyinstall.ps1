$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/0e0577a1a2ac/TargetSupportInstaller/UnitySetup-Universal-Windows-Platform-Support-for-Editor-6000.5.6f1.exe'
$checksum64     = 'fa020a3c35ae1afb935c003eb8d8cdad02057640836e1616a016909c41d331f9'

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
