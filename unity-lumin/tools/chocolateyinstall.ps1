$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/019e31cfdb15/TargetSupportInstaller/UnitySetup-Lumin-Support-for-Editor-2019.4.37f1.exe'
$checksum64     = '1039f2e79a35d7ecfde06d7820afaf2a518eebe52e816a90a430a9a3f8a39786'

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
