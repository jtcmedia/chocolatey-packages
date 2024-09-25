$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/94d194ca434d/TargetSupportInstaller/UnitySetup-Windows-Server-Support-for-Editor-2021.3.44f1.exe'
$checksum64     = 'e17b9cc000c00aab0dfc03ffa51a23ffefc90e55f615c5599c99483ca8d8bfa3'

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
