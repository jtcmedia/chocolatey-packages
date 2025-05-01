$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/7197418f847b/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-6000.1.1f1.exe'
$checksum64     = '7b6904d538545fbff74da7287851723b49f95e85d80cb135844a6bf072697329'

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
