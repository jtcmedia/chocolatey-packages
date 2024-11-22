$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/f336aca0cab5/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-6000.0.28f1.exe'
$checksum64     = '5c271dbe7406fa53c09fca1cb71d073d4c2729cd72e2f624deaf676f6ea42a31'

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
