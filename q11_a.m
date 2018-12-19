%plot surface and level curve of e^((x^2))+1
syms x y
ezsurfc((exp(x.^2)+y),[-5,5,-5,5],40)