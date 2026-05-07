$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/c8c45dd2de2f/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-6000.5.0b7.exe'
$checksum64     = '1ac73c813ae0e0b55ae683883294e291a081bc0e9d374c68ce50e463d0745aec'

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
