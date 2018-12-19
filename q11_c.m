%plot surface and level curve of x^2+3x+2+y^2
syms x y
ezsurfc((x*x+3*x+2+y*y),[-5,5,-5,5],40)