$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/46620eadcc07/TargetSupportInstaller/UnitySetup-Universal-Windows-Platform-Support-for-Editor-2023.1.1f1.exe'
$checksum64     = '893c18724f2d598ec0a01b57b8452d8dbd8aaed9dda57363dab0009e592cf639'

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
