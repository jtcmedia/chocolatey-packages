$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/6c53ebaf375d/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-2022.3.61f1.exe'
$checksum64     = '22eed8009a903bd3e45c70eef10a64a5c6cfb61a5baa3477579d6b2de42bcca9'

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
