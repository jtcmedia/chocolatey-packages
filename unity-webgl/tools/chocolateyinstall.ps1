$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/b5eafc012955/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-2022.3.8f1.exe'
$checksum64     = '850dd6814c93f64404247a6ab33b09bc8ffe28fa98d19bb84c8e5e8759e9aa7f'

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
