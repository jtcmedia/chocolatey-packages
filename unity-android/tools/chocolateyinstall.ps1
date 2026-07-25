$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/d16e074b49fd/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-6000.5.5f1.exe'
$checksum64     = 'a9390d14f32fc2e5bc7be190ed886d80ca5ebc303254b7da03fef88a09077f4f'

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
