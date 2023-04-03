$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/b6c551784ba3/TargetSupportInstaller/UnitySetup-Mac-Server-Support-for-Editor-2021.3.22f1.exe'
$checksum64     = '5ee73c6506e719108f623e433f4291a448a24aaa4e82af6e3622d47c65f9cba1'

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
