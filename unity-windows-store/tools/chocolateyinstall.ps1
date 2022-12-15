$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/4fead5835099/TargetSupportInstaller/UnitySetup-Universal-Windows-Platform-Support-for-Editor-2022.2.1f1.exe'
$checksum64     = '1a87ca6ecf0697547046a20e3922ff3831c31e79b0f9710442ee9b7784e5d0c9'

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
