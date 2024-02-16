$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/61c2feb0970d/TargetSupportInstaller/UnitySetup-Windows-Server-Support-for-Editor-2022.3.20f1.exe'
$checksum64     = 'cfdf7316397fce8f022203dfeed71e8f80d9046e28f014911d00fd0db8eb4b96'

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
