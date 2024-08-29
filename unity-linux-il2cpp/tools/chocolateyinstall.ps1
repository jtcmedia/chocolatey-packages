$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/c3ae09b9f03c/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-2022.3.44f1.exe'
$checksum64     = '8a41326dcb9f18fea5cdf9d3a800886d9037a0f2808ad817b547cb25543b0845'

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
