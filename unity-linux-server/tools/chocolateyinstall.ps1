$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/81a3023a9d59/TargetSupportInstaller/UnitySetup-Linux-Server-Support-for-Editor-6000.5.0b6.exe'
$checksum64     = 'a824b15df8bd01962d1b875f0a5ba9b9aefce21bc6e333e587777f235a34acb4'

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
