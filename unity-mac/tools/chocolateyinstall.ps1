$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/4dae1bb8668d/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-2022.3.49f1.exe'
$checksum64     = 'e0fc970c96e19b09e061d9b284c38b5c794dab7ea7ba3d9f2ba3fc72e6e3ebed'

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
