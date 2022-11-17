$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/9636b062134a/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-2022.1.23f1.exe'
$checksum64     = '9a37c20ba901893c36226c5d9517ec7481639b58ca2ddeb3f4e72d5c4f8e80bf'

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
