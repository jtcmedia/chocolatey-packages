$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/78d14dfa024b/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-2019.4.39f1.exe'
$checksum64     = 'a9331f5726027af5955005aaca8386059ac272df562d151b2d99460d3fcb9b72'

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
