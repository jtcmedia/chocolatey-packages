$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/0d9463e84828/TargetSupportInstaller/UnitySetup-Universal-Windows-Platform-Support-for-Editor-6000.5.1f1.exe'
$checksum64     = 'a80c78001cb7d04cee6640dc5cf66a97d7f7bf4bdb6b4bd5f0fe00b436affae6'

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
