$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/b58023a2b463/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-2022.3.15f1.exe'
$checksum64     = '677c94bebaebb4f8c3b79e74836cd92e4e8c6d2fba087fcc58e4934cef579ccb'

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
