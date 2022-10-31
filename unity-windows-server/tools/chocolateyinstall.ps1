$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/9ac1ff5ca45b/TargetSupportInstaller/UnitySetup-Windows-Server-Support-for-Editor-2022.1.21f1.exe'
$checksum64     = '5d90371f24cf989cacdcd560832623e26a50fe4ea4a279685091c6dfb6a4abeb'

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
