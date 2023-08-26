$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/661833f8c66c/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-2023.1.10f1.exe'
$checksum64     = 'd503dc59edc49a6198a8b2f33de94151fb12a23ccc083acf60573c5afe158a9f'

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
