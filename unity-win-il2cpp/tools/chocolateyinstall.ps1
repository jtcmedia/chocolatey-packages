$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/b58023a2b463/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-2022.3.15f1.exe'
$checksum64     = '363830e9b05dca6c50eb4fd9dced3edb239051d681b40bb429df316c58f6d21f'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'EXE'
  url64bit       = $url64
  checksum       = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
