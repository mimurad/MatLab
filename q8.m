syms x y
figure(1)
ezsurfc((x*x+y*y),[-5,5,-5,5],40)
figure(2)
ezsurfc((x*x-y*y),[-5,5,-5,5],40)
figure(3)
ezsurfc((1/(x*x+y*y)),[-5,5,-5,5],40)
figure(4)
ezsurfc((sqrt(4-x*x-y*y)),[-5,5,-5,5],40)