$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/a9845a6430b3/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-6000.6.0b9.exe'
$checksum64     = '4f3f38d7f3d3c29e6296cce77f09dafee3362e84f8de15382a7e6b81efb03de6'

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
