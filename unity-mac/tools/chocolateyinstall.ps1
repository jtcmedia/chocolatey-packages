$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/a56f230f6470/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-6000.3.16f1.exe'
$checksum64     = '1b084ca9f40069adb6ad79c7fdd9619abdd5278ac20fa0005252bd21f51517b8'

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
