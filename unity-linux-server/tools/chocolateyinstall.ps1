$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/8e9b8558c41a/TargetSupportInstaller/UnitySetup-Linux-Server-Support-for-Editor-2022.3.46f1.exe'
$checksum64     = '2247abe75ffdee45b704ec28c2d13095bf5934cc2a33e4088acbac523520de3c'

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
