$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/88f89d0d8b31/TargetSupportInstaller/UnitySetup-Windows-Server-Support-for-Editor-6000.0.77f1.exe'
$checksum64     = '1e5452727bd0783fd920b5603268ffb2f0637220300a05e9cbd5510ec6a1d763'

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
