$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/551d45108343/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-2022.2.5f1.exe'
$checksum64     = '50f35c090c7786626e3e3d2a25b1717de904e6966c2bae96257cb03f13d1c92f'

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
