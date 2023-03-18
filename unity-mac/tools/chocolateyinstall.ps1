$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/621cd60d08fd/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-2022.2.11f1.exe'
$checksum64     = '4b834c802150e31dddd89f1dd575084ce51a540f83d40ed7b297cf6582068990'

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
