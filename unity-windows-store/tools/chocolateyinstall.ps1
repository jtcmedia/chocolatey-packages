$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/64de5ee36373/TargetSupportInstaller/UnitySetup-Universal-Windows-Platform-Support-for-Editor-6000.6.0a2.exe'
$checksum64     = '16de2d0257b490f93548b655e744a47973f7c3f8cd0192285b03558ff8a43944'

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
