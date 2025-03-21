$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/97272b72f107/TargetSupportInstaller/UnitySetup-Mac-Server-Support-for-Editor-6000.0.43f1.exe'
$checksum64     = '9c7458a7bdc14ccf09391cd22e0257c4441f6f3444639b541a93a5cb4b49ccd4'

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
