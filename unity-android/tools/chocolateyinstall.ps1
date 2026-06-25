$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/0d9463e84828/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-6000.5.1f1.exe'
$checksum64     = 'c9fc12e6576b16e0a95307e39f1ee913f0cce0c07c2c14ffd456ec38f0f9f03f'

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
