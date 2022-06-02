$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/1cedbfe38737/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-2022.1.3f1.exe'
$checksum64     = '88b711f4c3e6739273de2bedddd3f1f6687940ce19697456d7edfccf18f343b1'

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
