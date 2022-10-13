$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/01d83b40d570/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-2022.1.20f1.exe'
$checksum64     = '9cab473c62de13bc137b1f57e2fb9c84740f7659a800d92740a04f4e5f2ca44b'

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
