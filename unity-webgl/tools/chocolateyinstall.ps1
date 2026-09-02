$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/f7f8ed4d1e24/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-6000.6.0f1.exe'
$checksum64     = '984c49922cedc33b54224a6ced2e5b8372f035eb188660f6bcd1bae3b2fc89dd'

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
