$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'EXE'
  file64        = gi $toolsDir\*.exe
  softwareName  = 'DLSS Swapper*'
  silentArgs   = '/S'
  validExitCodes= @(0)
}

Install-ChocolateyInstallPackage @packageArgs


$pp = Get-PackageParameters

if (!($pp.NOICON)) {
  $desktopPath = [Environment]::GetFolderPath("Desktop")
  $programFilesPath = [Environment]::GetFolderPath("ProgramFiles")

  Install-ChocolateyShortcut `
    -ShortcutFilePath "$desktopPath\DLSS Swapper.lnk" `
    -TargetPath "$programFilesPath\DLSS Swapper\DLSS Swapper.exe" `
}

rm $toolsDir\*.exe -ea 0 #remove installer exe
