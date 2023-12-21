$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/d2c21f0ef2f1/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-2022.3.16f1.exe'
$checksum64     = '4681ae5ebe00aa38f8571d880c2c28da5308d1e165d5477c92763fc3ecf4630c'

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
