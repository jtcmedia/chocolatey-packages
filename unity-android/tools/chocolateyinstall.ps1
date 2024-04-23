$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/95c298372b1e/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-2023.2.19f1.exe'
$checksum64     = '6732b74958c1e2dae53a0094c3b34a6d807d6e0f5630e644ce2a961a4d51dc42'

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
