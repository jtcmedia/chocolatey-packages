$ErrorActionPreference = 'Stop';

$packageName    = 'unity-lumin'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/7938dd008a75/TargetSupportInstaller/UnitySetup-Lumin-Support-for-Editor-2019.1.8f1.exe'
$checksum64     = '05f6726dcbd70f81afe7c4e29f288313553251973da5a350e49c12ff853d24f1'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'EXE'
  url64bit       = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
