$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/8c4e826ba445/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-2021.2.6f1.exe'
$checksum64     = '797324dd1dd6fa3e0f1c03c07000159e39f4419bf498aa6269368515d11e50b2'

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
