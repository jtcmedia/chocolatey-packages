$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/0f988161febf/TargetSupportInstaller/UnitySetup-Linux-Server-Support-for-Editor-2022.3.41f1.exe'
$checksum64     = 'bade87e2772d7bc09e1fbfc8f853aa8d932b93e64b7bc7c4638cb393ae493f8a'

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
