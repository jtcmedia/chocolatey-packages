$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/369b620af41c/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-2022.1.0f1.exe'
$checksum64     = '5ad479d2c4c36440629bab2c2094dde76bc7e1c11fa1922e6f284029a00e76c0'

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
