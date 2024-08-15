$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/2dcb6a0abc42/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-2022.3.42f1.exe'
$checksum64     = '6416720ce9e05a7db595416806973de6c50dd9b641c27cbfcde9e592fb62d9e1'

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
