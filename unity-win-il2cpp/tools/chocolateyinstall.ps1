$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/237b6593792b/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-6000.6.8f1.exe'
$checksum64     = '93bfc7c9b87e519b9a9a804a0c34079ce153c9a074d09433753930b463931cb6'

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
