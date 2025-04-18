$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/2aeb7e9a02a2/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-6000.2.0a9.exe'
$checksum64     = '35553d0771034241e4a26ca28b40acc9bb3c012dc55e004d411e3f63ebe1cce7'

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
