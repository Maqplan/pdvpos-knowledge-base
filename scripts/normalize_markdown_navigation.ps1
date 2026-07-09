$ErrorActionPreference = 'Stop'

$root = (Get-Location).Path
$pages = @(
  'README.md',
  'ABOUT.md',
  'VISION.md',
  'PRINCIPLES.md',
  'docs/00-INTRODUCTION/ARCHITECTURE-OVERVIEW.md',
  'docs/00-INTRODUCTION/CORE-CONCEPTS.md',
  'docs/00-INTRODUCTION/DIFERENCIAIS-COMPETITIVOS.md',
  'docs/00-INTRODUCTION/ECOSSISTEMA-PDVPOS-ERP.md',
  'docs/00-INTRODUCTION/FLUXOS-OPERACIONAIS.md',
  'docs/00-INTRODUCTION/GLOSSARIO.md',
  'docs/00-INTRODUCTION/MODULES-INDEX.md',
  'docs/01-FUNCTIONAL-MODULES/00-APRESENTACAO.md',
  'docs/01-FUNCTIONAL-MODULES/01-MODULOS-DA-PLATAFORMA.md',
  'docs/01-FUNCTIONAL-MODULES/02-RECURSOS-GERAIS-DA-PLATAFORMA.md',
  'docs/01-FUNCTIONAL-MODULES/03-GESTAO-DE-EMPRESAS.md',
  'docs/01-FUNCTIONAL-MODULES/04-GESTAO-DE-USUARIOS-E-PERMISSOES.md',
  'docs/01-FUNCTIONAL-MODULES/05-GESTAO-DE-CLIENTES.md',
  'docs/01-FUNCTIONAL-MODULES/06-GESTAO-DE-PRODUTOS-E-SERVICOS.md',
  'docs/01-FUNCTIONAL-MODULES/07-GESTAO-DE-ESTOQUE.md',
  'docs/01-FUNCTIONAL-MODULES/08-GESTAO-DE-COMPRAS.md',
  'docs/01-FUNCTIONAL-MODULES/09-GESTAO-COMERCIAL-E-VENDAS.md',
  'docs/01-FUNCTIONAL-MODULES/10-GESTAO-FINANCEIRA.md',
  'docs/01-FUNCTIONAL-MODULES/11-GESTAO-DE-COBRANCAS.md',
  'docs/01-FUNCTIONAL-MODULES/12-GESTAO-FISCAL-E-DOCUMENTOS-ELETRONICOS.md',
  'docs/01-FUNCTIONAL-MODULES/13-GESTAO-DA-REFORMA-TRIBUTARIA.md',
  'docs/01-FUNCTIONAL-MODULES/14-GESTAO-CONTABIL.md',
  'docs/01-FUNCTIONAL-MODULES/15-GESTAO-DE-SERVICOS-E-ORDENS-DE-SERVICO.md',
  'docs/01-FUNCTIONAL-MODULES/16-INTEGRACOES.md',
  'docs/01-FUNCTIONAL-MODULES/17-RELATORIOS-E-INDICADORES.md'
)

function Split-PathParts([string]$path) {
  $normalized = $path.Replace('\\', '/').Trim('/')
  if ([string]::IsNullOrWhiteSpace($normalized)) { return @() }
  return @($normalized -split '/')
}

function Rel-Link([string]$fromRel, [string]$toRel) {
  $fromDir = [System.IO.Path]::GetDirectoryName($fromRel.Replace('/', '\\'))
  if ([string]::IsNullOrWhiteSpace($fromDir)) { $fromDir = '' }
  $fromParts = Split-PathParts($fromDir)
  $toParts = Split-PathParts($toRel)

  $common = 0
  while ($common -lt $fromParts.Count -and $common -lt $toParts.Count -and $fromParts[$common] -eq $toParts[$common]) {
    $common++
  }

  $segments = New-Object System.Collections.Generic.List[string]
  for ($i = $common; $i -lt $fromParts.Count; $i++) { [void]$segments.Add('..') }
  for ($i = $common; $i -lt $toParts.Count; $i++) { [void]$segments.Add($toParts[$i]) }

  if ($segments.Count -eq 0) { return '.' }
  return ($segments -join '/')
}

function Label([string]$rel) {
  return [System.IO.Path]::GetFileNameWithoutExtension($rel).Replace('-', ' ').Replace('_', ' ')
}

function Breadcrumb([string]$rel) {
  if ($rel -eq 'README.md') { return '> **Caminho:** [Inicio](README.md)' }
  if ($rel -eq 'ABOUT.md') { return '> **Caminho:** [Inicio](README.md) / [Sobre](ABOUT.md)' }
  if ($rel -eq 'VISION.md') { return '> **Caminho:** [Inicio](README.md) / [Visao](VISION.md)' }
  if ($rel -eq 'PRINCIPLES.md') { return '> **Caminho:** [Inicio](README.md) / [Principios](PRINCIPLES.md)' }
  if ($rel.StartsWith('docs/00-INTRODUCTION/')) {
    return '> **Caminho:** [Inicio](../../README.md) / [Introducao](MODULES-INDEX.md) / ' + (Label $rel)
  }
  return '> **Caminho:** [Inicio](../../README.md) / [Modulos funcionais](00-APRESENTACAO.md) / ' + (Label $rel)
}

function Related([string]$rel) {
  $i = [array]::IndexOf($pages, $rel)
  $out = New-Object System.Collections.Generic.List[string]
  if ($i -gt 0) { [void]$out.Add($pages[$i - 1]) }
  if ($i -lt ($pages.Count - 1)) { [void]$out.Add($pages[$i + 1]) }
  if ($rel.StartsWith('docs/00-INTRODUCTION/')) {
    [void]$out.Add('docs/00-INTRODUCTION/MODULES-INDEX.md')
  } elseif ($rel.StartsWith('docs/01-FUNCTIONAL-MODULES/')) {
    [void]$out.Add('docs/01-FUNCTIONAL-MODULES/00-APRESENTACAO.md')
  } else {
    [void]$out.Add('docs/00-INTRODUCTION/ARCHITECTURE-OVERVIEW.md')
  }

  $uniq = New-Object System.Collections.Generic.List[string]
  foreach ($item in $out) {
    if ($item -ne $rel -and -not $uniq.Contains($item)) { [void]$uniq.Add($item) }
  }
  return $uniq
}

foreach ($rel in $pages) {
  $abs = [System.IO.Path]::GetFullPath((Join-Path $root $rel.Replace('/', '\\')))
  if (-not (Test-Path -LiteralPath $abs)) { continue }

  $idx = [array]::IndexOf($pages, $rel)
  $prev = if ($idx -gt 0) { $pages[$idx - 1] } else { $null }
  $next = if ($idx -lt ($pages.Count - 1)) { $pages[$idx + 1] } else { $null }

  $homeLink = if ($rel -eq 'README.md') { 'README.md' } else { Rel-Link $rel 'README.md' }
  $indexLink = if ($rel -eq 'README.md') { 'README.md' } else { Rel-Link $rel 'README.md' }
  $prevText = if ($prev) { '[Anterior](' + (Rel-Link $rel $prev) + ')' } else { 'Anterior' }
  $nextText = if ($next) { '[Proximo](' + (Rel-Link $rel $next) + ')' } else { 'Proximo' }

  $headerLines = @(
    '<!-- NAVIGATION:START -->',
    '---',
    '[README principal](' + $homeLink + ') | [Indice da documentacao](' + $indexLink + ') | ' + $prevText + ' | ' + $nextText,
    '---',
    (Breadcrumb $rel),
    '<!-- NAVIGATION:END -->'
  )

  $footerLines = @(
    '<!-- NAVIGATION_FOOTER:START -->',
    '---',
    '### Veja tambem'
  )
  foreach ($r in (Related $rel)) {
    $footerLines += '- [' + (Label $r) + '](' + (Rel-Link $rel $r) + ')'
  }
  $footerLines += @(
    '---',
    '**Navegacao:** ' + $prevText + ' | [Inicio](' + $homeLink + ') | ' + $nextText,
    '<!-- NAVIGATION_FOOTER:END -->'
  )

  $content = [System.IO.File]::ReadAllText($abs, [System.Text.Encoding]::UTF8)
  if ($null -eq $content) { $content = '' }
  $content = [regex]::Replace($content, '(?s)\n?<!-- NAVIGATION:START -->.*?<!-- NAVIGATION:END -->\n?', "`n")
  $content = [regex]::Replace($content, '(?s)\n?<!-- NAVIGATION_FOOTER:START -->.*?<!-- NAVIGATION_FOOTER:END -->\n?', "`n")
  $content = [regex]::Replace(
    $content,
    '(?s)\n---\n🏠 \*\*\[Página Inicial\]\(\.\./\.\./README\.md\)\*\*\n&nbsp;&nbsp;\|&nbsp;&nbsp;\n📚 \*\*\[Índice dos Módulos\]\(\.\./00-INTRODUCTION/MODULES-INDEX\.md\)\*\*\n\n---\n',
    "`n"
  )
  $content = $content.Trim()

  $newContent = (($headerLines -join "`n") + "`n`n" + $content + "`n`n" + ($footerLines -join "`n") + "`n")
  Set-Content -LiteralPath $abs -Value $newContent -Encoding UTF8
}

Write-Output ('Updated ' + $pages.Count + ' markdown files')
