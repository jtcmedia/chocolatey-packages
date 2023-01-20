$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/7f159b6136da/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-2020.3.44f1.exe'
$checksum64     = 'f3a23080328161b779a17f2d13405dfe3adcdc916c7b90a15547ae9a0f4abfbc'

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
