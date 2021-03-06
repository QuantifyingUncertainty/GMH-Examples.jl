if nprocs() > 1
    rmprocs(workers())
end
sleep(1.0)

thisfolder = dirname(@__FILE__())
modulefolder = normpath(joinpath(thisfolder,".."))
sincosfolder = joinpath(modulefolder,"target","sincos")
springmassfolder = joinpath(modulefolder,"ode","springmass")
fitzhughnagumofolder = joinpath(modulefolder,"ode","fitzhughnagumo")
predatorpreyfolder = joinpath(modulefolder,"ode","predatorprey")

sincos1 = joinpath(sincosfolder,"scripts","SinCos1.jl")
sincos2 = joinpath(sincosfolder,"scripts","SinCos2.jl")
springmass1 = joinpath(springmassfolder,"scripts","SpringMass1.jl")
fitzhughnagumo1 = joinpath(fitzhughnagumofolder,"scripts","FitzHughNagumo1.jl")
predatorprey1 = joinpath(predatorpreyfolder,"scripts","PredatorPrey1.jl")

println()
println("============================================")
println("++++++++++++++++++++++++++++++++++++++++++++")
println("GMHExamples.jl tests running in main process")
println("++++++++++++++++++++++++++++++++++++++++++++")
println("============================================")
println()
include(sincos1)
include(sincos2)
include(springmass1)
include(fitzhughnagumo1)
include(predatorprey1)

addprocs(1)

println()
println("===========================================")
println("+++++++++++++++++++++++++++++++++++++++++++")
println("GMHExamples.jl tests running in one process")
println("+++++++++++++++++++++++++++++++++++++++++++")
println("===========================================")
println()
include(sincos1)
include(sincos2)
include(springmass1)
include(fitzhughnagumo1)
include(predatorprey1)

addprocs(1)

println()
println("=============================================")
println("+++++++++++++++++++++++++++++++++++++++++++++")
println("GMHExamples.jl tests running in two processes")
println("+++++++++++++++++++++++++++++++++++++++++++++")
println("=============================================")
println()
include(sincos1)
include(sincos2)
include(springmass1)
include(fitzhughnagumo1)
include(predatorprey1)

if nprocs() > 1
    rmprocs(workers())
end
sleep(1.0)
