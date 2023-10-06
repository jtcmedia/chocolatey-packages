$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/e5ad54273a6f/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-2023.1.16f1.exe'
$checksum64     = '9e177fe0893fb1444a395c54f3fb7832d353a0b382f17402ed78e9d71927934f'

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
