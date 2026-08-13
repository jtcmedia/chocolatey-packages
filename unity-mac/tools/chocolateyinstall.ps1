$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/5cb7df797b7d/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-6000.5.8f1.exe'
$checksum64     = '687f07fb07c92db249b043b0e2105130fefdf294d218a6edfbcc7d06a1440e73'

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
