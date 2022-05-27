$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/9427c1534183/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-2022.1.2f1.exe'
$checksum64     = 'ee476a3f93b0b8d0ea74070189d9e5ca15e41849307d06e4d9b4fba0a688325e'

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
