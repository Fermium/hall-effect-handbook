import numpy
import math
import glob



for file in glob.glob("./type_*.tab"):
    print(file)
    #import file to nunmpy array
    key_value = numpy.genfromtxt(file, delimiter=",")

    #Create empty array
    outarray = numpy.empty((2,))

    # expand the horrible rows
    for row in key_value:
        basetemp = row[0]
        for x, value in numpy.ndenumerate(numpy.delete(row,[0,11])):
            if not math.isnan(value):
                newrow = []
                if basetemp >= 0:
                    newrow = [basetemp+x[0], value/1000]
                else:
                    newrow = [basetemp-x[0], value/1000]
                outarray = numpy.vstack([outarray, newrow])


    outarray = numpy.delete(outarray,0, axis=0)
    outarray = numpy.sort(outarray, axis=0)     
    numpy.savetxt(file.replace(".tab", "_out.csv"), outarray, delimiter=",", fmt="%f")
