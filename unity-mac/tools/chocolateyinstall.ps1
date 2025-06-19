$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/439913089442/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-6000.2.0b6.exe'
$checksum64     = 'e0712419dde058aaeb56b79b8158d98c6e7fc700cbd812ee824b65a123f85517'

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
