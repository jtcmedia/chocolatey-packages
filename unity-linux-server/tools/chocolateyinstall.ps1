$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/340ba89e4c23/TargetSupportInstaller/UnitySetup-Linux-Server-Support-for-Editor-2022.3.37f1.exe'
$checksum64     = 'a76b40a00bac99b7400c98a75e94abb50781ebd2df378df053d4b4752a11dcb4'

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
