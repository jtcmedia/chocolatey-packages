$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/8216e0211249/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-2022.2.4f1.exe'
$checksum64     = '81b5a65aa56a407fb3b538a0245ae0118bd89d4e6b99d1a9a48c8215a1e1cc93'

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
