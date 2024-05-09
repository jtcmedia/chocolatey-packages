$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/6bae5ce6b222/TargetSupportInstaller/UnitySetup-Windows-Server-Support-for-Editor-2022.3.28f1.exe'
$checksum64     = 'e8d7fc60cc6c9b1c31dd45ce0d4301a5373eda0dd6c0893c7662274f75af1747'

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
