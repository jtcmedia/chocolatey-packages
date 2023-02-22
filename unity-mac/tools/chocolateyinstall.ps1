$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/8331acaee5d3/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-2022.2.7f1.exe'
$checksum64     = '589bfc120722a2a5bde6be878aba4c28553b1019bad19370cbfd80efdf27df32'

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
