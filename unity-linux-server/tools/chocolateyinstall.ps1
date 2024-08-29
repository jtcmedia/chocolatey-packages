$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/c3ae09b9f03c/TargetSupportInstaller/UnitySetup-Linux-Server-Support-for-Editor-2022.3.44f1.exe'
$checksum64     = '1ae7fc75eec8c6b70d784764de259e50b1d49d176780a2f776e98ba7a7022835'

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
