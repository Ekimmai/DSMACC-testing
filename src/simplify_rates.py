from sympy import * 
import re, numpy

global data,constants,eqns

data = tuple(open('new_rate.inc'))

string = ''
for i in data: string+= i
datalower=str(string).lower()


constants = re.findall(r'\b(\w+)\b\s*=',datalower)
for i in ['temp','m','o2','h2o']: constants.append(i)


eqns = [ re.sub(r'(\d)[d]([\W\d])', r'\1e\2' , eq ) for eq in  re.findall( r'\b\w+\b\s*=\s*([\S ]+)\n', datalower.replace('log10','mpmath.log10'))]#keep the pesky space in the brackets - python re is still weird

for i in constants:
    exec(i + '= symbols("%s")'%i)

for i,j in enumerate(eqns): 
    try:
        exec( '%s  =  simplify(%s)' %(constants[i],j))
    except TypeError:
        continue

'''
for i,j in enumerate(eqns): 
            print i
            try:
                exec( '%s  =  expand(%s)' %(constants[i],j))
                exec('print ' + constants[i])
            except TypeError:
                continue


log10=symbols('log10')
for i,j in enumerate(eqns): 
    try:
        locals()[constants[i]]  =  simplify(locals()[constants[i]])
    except TypeError:
        exec( '%s  =  expand(%s)' %(constants[i],j.replace('mpmath.','')))
        exec('print ' + constants[i])
    
'''

def review():
    for i in constants:
        exec('print ' + i)


from pandas import *






global comp
comp = re.compile('[^\de\.\+\-]')#"^\d+?\.\d+?$")    

def isnum_regex(s):
    """ Returns True is string is a number. """
    if comp.match(s) is None:
        return s.isdigit()
    return True
    
def isnum (s):
    try: return float(s)
    except: return False    

values = [locals()[i] for i in constants]
fixed = [isnum_regex(str(i)) for i in values]


df = DataFrame([eqns,values,fixed]).T
df.index=constants
print df

#replace *10** with D




