$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/17550c9bb584/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-6000.2.4f1.exe'
$checksum64     = 'd446ac193cf5dcbad5a995c7f9825be9317269a93d0e84b56737fef44b72e8b0'

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
