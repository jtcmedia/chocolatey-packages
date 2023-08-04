$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/4f4e359ec3fc/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-2023.1.7f1.exe'
$checksum64     = 'c3d9500d3b478d729098350a7c6ef49cdeb4e938dfdd84040156c7f934d7f267'

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
