$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/f99f05b3e950/TargetSupportInstaller/UnitySetup-Mac-Server-Support-for-Editor-6000.0.62f1.exe'
$checksum64     = 'eac465aeddad83d80f72226755931547102240e761fea3889410a766d0933d10'

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
