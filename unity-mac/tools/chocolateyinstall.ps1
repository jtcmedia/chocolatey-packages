$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/157b46ce122a/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-2021.3.35f1.exe'
$checksum64     = '45e5c2cbd22bd0e9670612eb8cda9901d7d22f04ea68e3c5adf867b6c0a063e1'

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
