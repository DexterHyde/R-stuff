from amplpy import AMPL, Environment
ampl = AMPL(Environment('C:\\Users\\Diego Flores\\Desktop\\uni\\Becario de investigación\\Elias\\AMPL'))
print(ampl.getOption('version'))