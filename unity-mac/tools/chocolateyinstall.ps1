$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/88f89d0d8b31/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-6000.0.77f1.exe'
$checksum64     = 'd79102003e716f0c863376a701ff8e0319a0ea149839cd38e5e652798fe5e339'

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
