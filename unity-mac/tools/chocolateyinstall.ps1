$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/55300504c302/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-6000.2.1f1.exe'
$checksum64     = '55db41964f2ac073cf14061879a4895afa6bed1b94a21b92344336dc857a08c7'

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
