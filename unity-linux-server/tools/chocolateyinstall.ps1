$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/e00e24c187a5/TargetSupportInstaller/UnitySetup-Linux-Server-Support-for-Editor-2023.1.3f1.exe'
$checksum64     = '7d4457a5c495c78cb492c878efe2f345309769b3539a6dfe8127ff727190dd02'

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
