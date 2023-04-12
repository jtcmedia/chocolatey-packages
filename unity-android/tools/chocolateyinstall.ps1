$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/b2c9b1ac6cc0/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-2022.2.14f1.exe'
$checksum64     = '44dc0b58e3a30a3ec45e063446e6b4f65083bfd5a27133ab51cbf7f1febe7d89'

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
