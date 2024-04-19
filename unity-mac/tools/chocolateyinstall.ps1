$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/530ae0ba3889/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-2022.3.25f1.exe'
$checksum64     = '99c197059790b4c43f433a261946a62640519cf79c866177ee256da06c4d8a26'

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
