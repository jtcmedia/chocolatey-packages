$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/21747dafc6ee/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-2023.2.3f1.exe'
$checksum64     = '14759677c4e4fd1334de6bec36657b223895a9324034cdc52b221af7a133021b'

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
