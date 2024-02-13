$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/0c9c2e1f4bef/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-2023.2.9f1.exe'
$checksum64     = '92d4a10fcae01a3c7bbbce4b0c3a889ce2a92a7eb333a0b6327bc46cec87ac17'

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
