$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/cf6d2d083ec9/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-6000.2.0b8.exe'
$checksum64     = '34e26f9e69c5e6ef97ee202e5c3149f32d5570109667de6a5b5d227046ab1ca6'

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
