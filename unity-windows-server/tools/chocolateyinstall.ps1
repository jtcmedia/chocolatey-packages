$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/70558241b701/TargetSupportInstaller/UnitySetup-Windows-Server-Support-for-Editor-2022.3.30f1.exe'
$checksum64     = '8b7aafaaf02d6e1c7bc3356339a8b8da1bdc559e5b6e065f505d18bc03389eb7'

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
