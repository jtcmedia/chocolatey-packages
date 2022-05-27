$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/9427c1534183/TargetSupportInstaller/UnitySetup-Windows-Server-Support-for-Editor-2022.1.2f1.exe'
$checksum64     = 'a7566cd817419a1ceb8dd92ca9dc29a50187bf2dabc3b292a943a06e27af4f8b'

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
