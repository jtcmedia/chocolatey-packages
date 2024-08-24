$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/ae37dbaefed8/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-6000.0.16f1.exe'
$checksum64     = '7ea4ba8b878ecfad49103becbb4d6122ea21c9453c0d188096ff24894c35d187'

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
