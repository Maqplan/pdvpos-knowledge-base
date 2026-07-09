$ErrorActionPreference = 'Stop'
$root = (Get-Location).Path

$rootFiles = @('README.md','ABOUT.md','VISION.md','PRINCIPLES.md')
$introFiles = Get-ChildItem -LiteralPath 'docs/00-INTRODUCTION' -Filter '*.md' | ForEach-Object { 'docs/00-INTRODUCTION/' + $_.Name }
$moduleFiles = Get-ChildItem -LiteralPath 'docs/01-FUNCTIONAL-MODULES' -Filter '*.md' | ForEach-Object { 'docs/01-FUNCTIONAL-MODULES/' + $_.Name }
$allFiles = @($rootFiles + $introFiles + $moduleFiles)

function Read-Utf8([string]$p) {
  return [System.IO.File]::ReadAllText($p, [System.Text.Encoding]::UTF8)
}

function Write-Utf8([string]$p, [string]$content) {
  [System.IO.File]::WriteAllText($p, $content, [System.Text.Encoding]::UTF8)
}

foreach ($rel in $allFiles) {
  $abs = Join-Path $root $rel.Replace('/','\\')
  if (-not (Test-Path -LiteralPath $abs)) { continue }

  $content = Read-Utf8 $abs
  $content = [regex]::Replace($content, '(?s)\n?<!-- NAVIGATION:START -->.*?<!-- NAVIGATION:END -->\n?', "`n")
  $content = [regex]::Replace($content, '(?s)\n?<!-- NAVIGATION_FOOTER:START -->.*?<!-- NAVIGATION_FOOTER:END -->\n?', "`n")

  $header = ''
  $footer = ''

  if ($rel -in $rootFiles) {
    $header = @(
      '<!-- NAVIGATION:START -->',
      '---',
      '[README principal](README.md) | [Visao](VISION.md) | [Principios](PRINCIPLES.md) | [About](ABOUT.md)',
      '---',
      '> **Breadcrumbs:** [Inicio](README.md) / ' + [System.IO.Path]::GetFileNameWithoutExtension($rel),
      '<!-- NAVIGATION:END -->'
    ) -join "`n"

    $footer = @(
      '<!-- NAVIGATION_FOOTER:START -->',
      '---',
      '### Veja tambem',
      '- [README](README.md)',
      '- [Architecture Overview](docs/00-INTRODUCTION/ARCHITECTURE-OVERVIEW.md)',
      '- [Modules Index](docs/00-INTRODUCTION/MODULES-INDEX.md)',
      '---',
      '**Navegacao:** [Inicio](README.md)',
      '<!-- NAVIGATION_FOOTER:END -->'
    ) -join "`n"
  }
  elseif ($rel.StartsWith('docs/00-INTRODUCTION/')) {
    $header = @(
      '<!-- NAVIGATION:START -->',
      '---',
      '[README principal](../../README.md) | [Introducao](MODULES-INDEX.md) | [Modules](../01-FUNCTIONAL-MODULES/00-APRESENTACAO.md)',
      '---',
      '> **Breadcrumbs:** [Inicio](../../README.md) / [Introducao](MODULES-INDEX.md) / ' + [System.IO.Path]::GetFileNameWithoutExtension($rel),
      '<!-- NAVIGATION:END -->'
    ) -join "`n"

    $footer = @(
      '<!-- NAVIGATION_FOOTER:START -->',
      '---',
      '### Veja tambem',
      '- [README](../../README.md)',
      '- [Modules Index](MODULES-INDEX.md)',
      '- [Apresentacao dos Modulos](../01-FUNCTIONAL-MODULES/00-APRESENTACAO.md)',
      '---',
      '**Navegacao:** [Inicio](../../README.md) | [Introducao](MODULES-INDEX.md)',
      '<!-- NAVIGATION_FOOTER:END -->'
    ) -join "`n"
  }
  else {
    $header = @(
      '<!-- NAVIGATION:START -->',
      '---',
      '[README principal](../../README.md) | [Modules Intro](00-APRESENTACAO.md) | [Modules Index](../00-INTRODUCTION/MODULES-INDEX.md)',
      '---',
      '> **Breadcrumbs:** [Inicio](../../README.md) / [Modulos](00-APRESENTACAO.md) / ' + [System.IO.Path]::GetFileNameWithoutExtension($rel),
      '<!-- NAVIGATION:END -->'
    ) -join "`n"

    $footer = @(
      '<!-- NAVIGATION_FOOTER:START -->',
      '---',
      '### Veja tambem',
      '- [README](../../README.md)',
      '- [Modules Intro](00-APRESENTACAO.md)',
      '- [Modules Index](../00-INTRODUCTION/MODULES-INDEX.md)',
      '---',
      '**Navegacao:** [Inicio](../../README.md) | [Modulos](00-APRESENTACAO.md)',
      '<!-- NAVIGATION_FOOTER:END -->'
    ) -join "`n"
  }

  $newContent = ($header + "`n`n" + $content.Trim() + "`n`n" + $footer + "`n")
  Write-Utf8 $abs $newContent
}

Write-Output ('Updated ' + $allFiles.Count + ' markdown files')
