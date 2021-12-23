module DocThemePC2

using DocumenterTools: Themes

function install(docs_path)
    # create the themes
    for w in ("light", "dark")
        header = read(joinpath(@__DIR__, "../assets/pc2-header.scss"), String)
        theme = read(joinpath(@__DIR__, "../assets/pc2-$(w)defs.scss"), String)
        write(joinpath(docs_path, "pc2-$(w).scss"), header * "\n" * theme)
    end
    # compile the themes
    Themes.compile(joinpath(docs_path, "pc2-light.scss"), joinpath(docs_path, "src/assets/themes/documenter-light.css"))
    Themes.compile(joinpath(docs_path, "pc2-dark.scss"), joinpath(docs_path, "src/assets/themes/documenter-dark.css"))
    # remove tmp files
    rm(joinpath(docs_path, "pc2-light.scss"))
    rm(joinpath(docs_path, "pc2-dark.scss"))
end

end
