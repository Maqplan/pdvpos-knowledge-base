from pathlib import Path
import re
import os

ROOT = Path(__file__).resolve().parents[1]

PAGES = [
    "README.md",
    "ABOUT.md",
    "VISION.md",
    "PRINCIPLES.md",
    "docs/00-INTRODUCTION/ARCHITECTURE-OVERVIEW.md",
    "docs/00-INTRODUCTION/CORE-CONCEPTS.md",
    "docs/00-INTRODUCTION/DIFERENCIAIS-COMPETITIVOS.md",
    "docs/00-INTRODUCTION/ECOSSISTEMA-PDVPOS-ERP.md",
    "docs/00-INTRODUCTION/FLUXOS-OPERACIONAIS.md",
    "docs/00-INTRODUCTION/GLOSSARIO.md",
    "docs/00-INTRODUCTION/MODULES-INDEX.md",
    "docs/01-FUNCTIONAL-MODULES/00-APRESENTACAO.md",
    "docs/01-FUNCTIONAL-MODULES/01-MODULOS-DA-PLATAFORMA.md",
    "docs/01-FUNCTIONAL-MODULES/02-RECURSOS-GERAIS-DA-PLATAFORMA.md",
    "docs/01-FUNCTIONAL-MODULES/03-GESTAO-DE-EMPRESAS.md",
    "docs/01-FUNCTIONAL-MODULES/04-GESTAO-DE-USUARIOS-E-PERMISSOES.md",
    "docs/01-FUNCTIONAL-MODULES/05-GESTAO-DE-CLIENTES.md",
    "docs/01-FUNCTIONAL-MODULES/06-GESTAO-DE-PRODUTOS-E-SERVICOS.md",
    "docs/01-FUNCTIONAL-MODULES/07-GESTAO-DE-ESTOQUE.md",
    "docs/01-FUNCTIONAL-MODULES/08-GESTAO-DE-COMPRAS.md",
    "docs/01-FUNCTIONAL-MODULES/09-GESTAO-COMERCIAL-E-VENDAS.md",
    "docs/01-FUNCTIONAL-MODULES/10-GESTAO-FINANCEIRA.md",
    "docs/01-FUNCTIONAL-MODULES/11-GESTAO-DE-COBRANCAS.md",
    "docs/01-FUNCTIONAL-MODULES/12-GESTAO-FISCAL-E-DOCUMENTOS-ELETRONICOS.md",
    "docs/01-FUNCTIONAL-MODULES/13-GESTAO-DA-REFORMA-TRIBUTARIA.md",
    "docs/01-FUNCTIONAL-MODULES/14-GESTAO-CONTABIL.md",
    "docs/01-FUNCTIONAL-MODULES/15-GESTAO-DE-SERVICOS-E-ORDENS-DE-SERVICO.md",
    "docs/01-FUNCTIONAL-MODULES/16-INTEGRACOES.md",
    "docs/01-FUNCTIONAL-MODULES/17-RELATORIOS-E-INDICADORES.md",
]

PAGE_INDEX = {p: i for i, p in enumerate(PAGES)}


def rel_link(source_rel: str, target_rel: str) -> str:
    return os.path.relpath(target_rel, start=str(Path(source_rel).parent)).replace("\\", "/")


def label(path: str) -> str:
    return Path(path).stem.replace("-", " ").replace("_", " ")


def breadcrumb(path: str) -> str:
    if path == "README.md":
        return "> **Caminho:** [Início](README.md)"
    if path in {"ABOUT.md", "VISION.md", "PRINCIPLES.md"}:
        mapping = {
            "ABOUT.md": "Sobre",
            "VISION.md": "Visão",
            "PRINCIPLES.md": "Princípios",
        }
        return f"> **Caminho:** [Início](README.md) / [{mapping[path]}]({path})"
    if path.startswith("docs/00-INTRODUCTION/"):
        return (
            "> **Caminho:** [Início](../../README.md) / "
            "[Introdução](MODULES-INDEX.md) / "
            f"{label(path)}"
        )
    return (
        "> **Caminho:** [Início](../../README.md) / "
        "[Módulos funcionais](00-APRESENTACAO.md) / "
        f"{label(path)}"
    )


def related_links(path: str) -> list[str]:
    i = PAGE_INDEX[path]
    links = []
    if i > 0:
        links.append(PAGES[i - 1])
    if i < len(PAGES) - 1:
        links.append(PAGES[i + 1])
    if path.startswith("docs/00-INTRODUCTION/"):
        links.append("docs/00-INTRODUCTION/MODULES-INDEX.md")
    elif path.startswith("docs/01-FUNCTIONAL-MODULES/"):
        links.append("docs/01-FUNCTIONAL-MODULES/00-APRESENTACAO.md")
    else:
        links.append("docs/00-INTRODUCTION/ARCHITECTURE-OVERVIEW.md")
    out = []
    seen = set()
    for item in links:
        if item not in seen and item != path:
            seen.add(item)
            out.append(item)
    return out[:3]


def strip_existing_blocks(content: str) -> str:
    content = re.sub(
        r"\n?<!-- NAVIGATION:START -->.*?<!-- NAVIGATION:END -->\n?",
        "\n",
        content,
        flags=re.S,
    )
    content = re.sub(
        r"\n?<!-- NAVIGATION_FOOTER:START -->.*?<!-- NAVIGATION_FOOTER:END -->\n?",
        "\n",
        content,
        flags=re.S,
    )
    content = re.sub(
        r"\n---\n🏠 \*\*\[Página Inicial\]\(\.\./\.\./README\.md\)\*\*\n"
        r"&nbsp;&nbsp;\|&nbsp;&nbsp;\n"
        r"📚 \*\*\[Índice dos Módulos\]\(\.\./00-INTRODUCTION/MODULES-INDEX\.md\)\*\*\n\n---\n",
        "\n",
        content,
        flags=re.S,
    )
    return content.strip() + "\n"


def build_header(path: str) -> str:
    i = PAGE_INDEX[path]
    prev = PAGES[i - 1] if i > 0 else None
    nxt = PAGES[i + 1] if i < len(PAGES) - 1 else None
    home = "README.md" if path == "README.md" else rel_link(path, "README.md")
    index = "README.md" if path == "README.md" else rel_link(path, "README.md")
    prev_text = f"[Anterior]({rel_link(path, prev)})" if prev else "Anterior"
    next_text = f"[Próximo]({rel_link(path, nxt)})" if nxt else "Próximo"
    return "\n".join(
        [
            "<!-- NAVIGATION:START -->",
            "---",
            f"[README principal]({home}) | [Índice da documentação]({index}) | {prev_text} | {next_text}",
            "---",
            breadcrumb(path),
            "<!-- NAVIGATION:END -->",
        ]
    )


def build_footer(path: str) -> str:
    i = PAGE_INDEX[path]
    prev = PAGES[i - 1] if i > 0 else None
    nxt = PAGES[i + 1] if i < len(PAGES) - 1 else None
    home = "README.md" if path == "README.md" else rel_link(path, "README.md")
    prev_text = f"[Anterior]({rel_link(path, prev)})" if prev else "Anterior"
    next_text = f"[Próximo]({rel_link(path, nxt)})" if nxt else "Próximo"
    veja = ["### Veja também"]
    for item in related_links(path):
        veja.append(f"- [{label(item)}]({rel_link(path, item)})")
    return "\n".join(
        [
            "<!-- NAVIGATION_FOOTER:START -->",
            "---",
            *veja,
            "---",
            f"**Navegação:** {prev_text} | [Início]({home}) | {next_text}",
            "<!-- NAVIGATION_FOOTER:END -->",
        ]
    )


def main() -> None:
    for page in PAGES:
        file_path = ROOT / page
        content = file_path.read_text(encoding="utf-8")
        content = strip_existing_blocks(content)
        updated = f"{build_header(page)}\n\n{content}\n{build_footer(page)}\n"
        file_path.write_text(updated, encoding="utf-8", newline="\n")

    print(f"Updated {len(PAGES)} markdown files")


if __name__ == "__main__":
    main()
