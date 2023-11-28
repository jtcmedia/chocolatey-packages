$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/a6dd9a634651/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-2023.2.1f1.exe'
$checksum64     = '59b45eec7e5b5650bb775e7a0fb7df5f5ad12a0cc54de52def9de2478de14afc'

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
