$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/74a0adb02c31/TargetSupportInstaller/UnitySetup-Universal-Windows-Platform-Support-for-Editor-6000.0.61f1.exe'
$checksum64     = 'f8aeb86a260f981adfd70ec72fa58b57415a54a83cec13fbf840178e6dc40e7f'

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
