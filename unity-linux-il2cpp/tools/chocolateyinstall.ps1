$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/4907324dc95b/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-2022.2.21f1.exe'
$checksum64     = 'a75f931e63123896a550939cc68394e5f861f70c77177a1cd4eb4519cfb4e50d'

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
