s = serialport("COM5", 9600, "Timeout", 12);
data = zeros(1,40);
x = (1:40);
i = 0;
while(i < 40)
    temp = readline(s);
    temp
    data(i+1) = temp;
    i = i + 1;
end
s.delete;
fig = scatter(x, data);
title("Randomly Generated Numbers");
ylabel("Value");
xlabel("Which Number");
