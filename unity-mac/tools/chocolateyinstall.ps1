$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/e00e24c187a5/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-2023.1.3f1.exe'
$checksum64     = '84fa4fc7bf753f61c9e3a43a93547cc07bd5f91e715d11f65d119427d1a46260'

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
