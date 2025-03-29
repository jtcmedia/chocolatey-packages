$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/101c91f3a8fb/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-6000.0.44f1.exe'
$checksum64     = 'e8d69d250818a3d20e94f2b8f2baac472704f8b68f027e2a7b0139595f6af946'

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
