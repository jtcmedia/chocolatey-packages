$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/9f9d16c45e54/TargetSupportInstaller/UnitySetup-Universal-Windows-Platform-Support-for-Editor-2022.3.51f1.exe'
$checksum64     = 'b6232af6dc94e7267c0922b8490531c7fa2c4debf57a8a1fbd0de55b7c80f72d'

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
