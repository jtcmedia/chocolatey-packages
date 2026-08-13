$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/5cb7df797b7d/TargetSupportInstaller/UnitySetup-Windows-Server-Support-for-Editor-6000.5.8f1.exe'
$checksum64     = '4b4ff0f6de5a599e7f8ed68fdac03539d022b6ffae4e85bc08be1ec5f8d06562'

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
