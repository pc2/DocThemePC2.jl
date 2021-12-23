using DocThemePC2
using Test

@testset "install" begin
    DocThemePC2.install(@__DIR__)
    files = ["src/assets/themes/documenter-light.css", "src/assets/themes/documenter-dark.css"]
    relfiles = [joinpath(@__DIR__, f) for f in files]
    for f in relfiles
        @test isfile(f)
    end
    rm.(relfiles)
    rm("src"; recursive = true, force = true)
end
