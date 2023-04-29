$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/54cb9bda89c4/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-2022.2.17f1.exe'
$checksum64     = '87e290eba172ac2581efcdd3f3198a880a4437401c3d8faafd960f2b793e2e42'

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
