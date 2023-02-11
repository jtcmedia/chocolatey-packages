$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/10bfa6201ced/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-2022.2.6f1.exe'
$checksum64     = 'a510f57969f9349671f0f506a91fb9875ed9fd731f1185a0297c96c78ceec936'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'EXE'
  url64bit       = $url64
  checksum       = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
