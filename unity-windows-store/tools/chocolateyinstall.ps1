$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/40e81493c67d/TargetSupportInstaller/UnitySetup-Universal-Windows-Platform-Support-for-Editor-6000.6.10f1.exe'
$checksum64     = 'c40b227461e6ccadd43a3e5354c89cbaea1a3d220298640e62c3713e456cb157'

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
