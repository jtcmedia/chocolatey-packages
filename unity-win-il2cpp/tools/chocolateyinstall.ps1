$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/26349cd2a5c8/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-6000.0.75f1.exe'
$checksum64     = '45216e411c43fabf3191db549ae594a9e242f147bcb0ec8fed59412d09e80594'

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
