$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/9492f7722ddd/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-2023.1.14f1.exe'
$checksum64     = '84cbb79fce31e7b0cbb12b27228841c28a2b913302cd3cb2b74094a7643d2b08'

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
