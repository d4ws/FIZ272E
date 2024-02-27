clear all

x = linspace(0, 2*pi, 100);

y1 = sin(x);
y2 = cos(x);

subplot(2,1,1)
plot(x, y1)
title('Sine Wave')




subplot(2,1,2)
plot(x, y2)
title('Cosine Wave')
set(gcf, 'Position', [100 100 800 600])

