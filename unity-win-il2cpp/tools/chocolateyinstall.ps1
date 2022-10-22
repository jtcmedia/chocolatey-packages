$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/7c19dc9acfda/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-2020.3.41f1.exe'
$checksum64     = '82bced5818d9a28fd1c34c4f7c8e49242c5cd8a828615717f66fe16513834061'

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
