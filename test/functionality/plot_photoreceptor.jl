### Load the plot packages
using PyPlot

### Print a help message
println("Plot data for the photonreceptor model using:")
println(" pyplot_photonsequence()")
println(" pyplot_bump(;timepoints =GMHExamples.TP,amplitude = 4.0,shape = 3.0,scale =2.5)")

### Plot the photon sequence data using the PyPlot package
function pyplot_photonsequence()

  #calculate the data
  timepoints,photons = photonsequence(100.0,1000)

  #plot the data
  fig = PyPlot.figure("Photon Sequence")
  PyPlot.plot(timepoints,photons)
  PyPlot.xlabel("Time (s)")
  PyPlot.ylabel("Photons")
  PyPlot.title("Photon Sequence")
  PyPlot.grid("on")

  #return the figure object
  fig
end

function pyplot_bump(;timepoints = GMHExamples.TP,amplitude = 4.0,shape = 3.0,scale = 2.5,)

  #calculate the data
  bmp = GMHExamples.bump(timepoints,amplitude,shape,scale)

  #plot the data
  fig = PyPlot.figure("Bump")
  PyPlot.plot(timepoints/1000.0,bmp)
  PyPlot.xlabel("Time (s)")
  PyPlot.ylabel("Current (nA)")
  PyPlot.title("Photon-Induced Current")
  PyPlot.grid("on")
end

pyplot_photonsequence()
pyplot_bump()

# File return statement
nothing