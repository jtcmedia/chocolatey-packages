$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/c7b5465681fb/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-2020.3.0f1.exe'
$checksum64     = '48a114357b0c24128b8e9c061e181126b37739844db6f7638fc3d40a865f9eb1'

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
