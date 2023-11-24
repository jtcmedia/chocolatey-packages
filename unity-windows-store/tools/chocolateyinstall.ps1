$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/eff2de9070d8/TargetSupportInstaller/UnitySetup-Universal-Windows-Platform-Support-for-Editor-2022.3.14f1.exe'
$checksum64     = 'b5b788e79a952c1184031a7e21cbac19fb99eb4ccadbd407be919d49833981c8'

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
