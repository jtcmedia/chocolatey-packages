$ErrorActionPreference = 'Stop'
$toolsPath   = Split-Path -parent $MyInvocation.MyCommand.Definition

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'EXE'
  silentArgs     = "/S"
  file           = gi $toolsPath/*ocr-w32*.exe
  file64         = gi $toolsPath/*ocr-w64*.exe
  softwareName   = 'Tesseract-OCR*'
  validExitCodes = @(0)
}

Install-ChocolateyInstallPackage @packageArgs

$tesseractPath = Join-Path ([Environment]::GetFolderPath("ProgramFiles")) "Tesseract-OCR"

Install-ChocolateyPath -PathToInstall $tesseractPath -PathType 'Machine'

rm $toolsPath\*.exe -ea 0