$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/9b156bbbd4df/TargetSupportInstaller/UnitySetup-Universal-Windows-Platform-Support-for-Editor-6000.1.11f1.exe'
$checksum64     = 'e8db6e332929e90b6807bc4dc11ae9f31ae556e12d9fe42163c3d9caf0bac009'

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
