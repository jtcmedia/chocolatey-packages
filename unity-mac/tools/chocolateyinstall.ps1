$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/05208a74e9aa/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-6000.0.20f1.exe'
$checksum64     = '9d52777d30b1c6d6801af60d821e4df623d28a0225a2031afb0542b6dd6da596'

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
