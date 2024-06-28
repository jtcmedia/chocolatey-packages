$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/011206c7a712/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-2022.3.35f1.exe'
$checksum64     = 'bb69a006ae21afa05af237ec188584fa66bc11e1e5a6f442d39870bb6e00e39b'

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
