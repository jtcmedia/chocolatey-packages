$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/2bdac9ac0d74/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-6000.2.0b2.exe'
$checksum64     = '09c0c96a2dce8e92803ea448858c8ebed0b72453016c53dcce31aa6b776ac38e'

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
