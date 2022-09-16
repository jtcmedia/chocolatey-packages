$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/fd6670bb8be9/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-2020.3.39f1.exe'
$checksum64     = '8e832f92a619d51aefa35175a98b3ef23200b1803c75604e526c094f195e989d'

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
