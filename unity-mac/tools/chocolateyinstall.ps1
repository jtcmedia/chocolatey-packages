$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/5f63fdee6d95/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-2022.3.60f1.exe'
$checksum64     = '93e143ad538de1f545bebdd25175c7b6c04f2d3baa40145b2da5c862e6588c48'

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
