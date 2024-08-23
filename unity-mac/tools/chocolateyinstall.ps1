$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/85497d293fa1/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-2022.3.43f1.exe'
$checksum64     = '05ade70408a4724a3bb6e8cc116186f18eb9a63b57239631b139713be8871b4c'

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
