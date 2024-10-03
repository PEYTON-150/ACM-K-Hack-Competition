%Nolan Knight
%K-Hack Modeling

clear all
clc
close all 

%Solve the differential equations with tempurature change. 
InletTemp = 55:1:155;
BottomTemp = 170:1:220;
AllTemp = 55:1:220;

%Solve for Inlet Temp
i = 1;
for(temp = 55:1:155)
    %Specific Heat 
    CpA(i) = 0.00562*temp + 1.4384; 
    CpB(i) = 0.0031*temp + 1.6041; 
    CpP(i) = 0.0047*temp + 1.3723; 

    %Density 
    pA(i) = -1.2707*temp + 925.11; 
    pB(i) = -0.7598*temp + 1020.6; 
    pP(i) = -0.7092*temp + 1248.7; 

    %Thermore Conductivity 
    lA(i) = -0.0002*temp + 0.1384; 
    lB(i) = -0.0001*temp + 0.1221; 
    lP(i) = 0.0006*temp + 0.1228; 

    %Heat of Vaporization
    HvA(i) = -0.8397*temp + 458.12; 
    HvB(i) = -0.3377*temp + 339.29;
    
    i = i + 1; 
end

figure(1)
subplot(2,2,1);plot(InletTemp,CpA)
hold on; 
plot(InletTemp,CpB)
plot(InletTemp,CpP)
legend('CpA','CpB','CpP');
title('Specific Heat');
hold off;
subplot(2,2,2);plot(InletTemp,pA)
hold on; 
plot(InletTemp,pB)
plot(InletTemp,pP)
legend('pA','pB','pP');
title('Density');
hold off; 
subplot(2,2,3);plot(InletTemp,lA)
hold on; 
plot(InletTemp,lB)
plot(InletTemp,lP)
legend('lA','lB','lP');
title('Thermal Conductivity');
hold off; 
subplot(2,2,4);plot(InletTemp,HvA)
hold on; 
plot(InletTemp,HvB)
legend('HvA','HvB');
title('Heat of Vaporization');
hold off; 


%Solve for Bottom Temp
i = 1;
for(temp2 = 170:1:220)
    %Specific Heat 
    CpAb(i) = 0.00562*temp2 + 1.4384; 
    CpBb(i) = 0.0031*temp2 + 1.6041; 
    CpPb(i) = 0.0047*temp2 + 1.3723; 

    %Density 
    pAb(i) = -1.2707*temp2 + 925.11; 
    pBb(i) = -0.7598*temp2 + 1020.6; 
    pPb(i) = -0.7092*temp2 + 1248.7; 

    %Thermore Conductivity 
    lAb(i) = -0.0002*temp2 + 0.1384; 
    lBb(i) = -0.0001*temp2 + 0.1221; 
    lPb(i) = 0.0006*temp2 + 0.1228; 

    %Heat of Vaporization
    HvAb(i) = -0.8397*temp2 + 458.12; 
    HvBb(i) = -0.3377*temp2 + 339.29;
    
    i = i + 1; 
end

figure(2)
subplot(2,2,1);plot(BottomTemp,CpAb)
hold on; 
plot(BottomTemp,CpBb)
plot(BottomTemp,CpPb)
legend('CpA','CpB','CpP');
title('Specific Heat');
hold off;
subplot(2,2,2);plot(BottomTemp,pAb)
hold on; 
plot(BottomTemp,pBb)
plot(BottomTemp,pPb)
legend('pA','pB','pP');
title('Density');
hold off; 
subplot(2,2,3);plot(BottomTemp,lAb)
hold on; 
plot(BottomTemp,lBb)
plot(BottomTemp,lPb)
legend('lA','lB','lP');
title('Thermal Conductivity');
hold off; 
subplot(2,2,4);plot(BottomTemp,HvAb)
hold on; 
plot(BottomTemp,HvBb)
legend('HvA','HvB');
title('Heat of Vaporization');
hold off; 

%Solve for Inlet Temp
i = 1;
for(temp3 = 55:1:220)
    %Specific Heat 
    CpAc(i) = 0.00562*temp3 + 1.4384; 
    CpBc(i) = 0.0031*temp3 + 1.6041; 
    CpPc(i) = 0.0047*temp3 + 1.3723; 

    %Density 
    pAc(i) = -1.2707*temp3 + 925.11; 
    pBc(i) = -0.7598*temp3 + 1020.6; 
    pPc(i) = -0.7092*temp3 + 1248.7; 

    %Thermore Conductivity 
    lAc(i) = -0.0002*temp3 + 0.1384; 
    lBc(i) = -0.0001*temp3 + 0.1221; 
    lPc(i) = 0.0006*temp3 + 0.1228; 

    %Heat of Vaporization
    HvAc(i) = -0.8397*temp3 + 458.12; 
    HvBc(i) = -0.3377*temp3 + 339.29;
    
    i = i + 1; 
end

figure(3)
subplot(2,2,1);plot(AllTemp,CpAc)
hold on; 
plot(AllTemp,CpBc)
plot(AllTemp,CpPc)
legend('CpA','CpB','CpP');
title('Specific Heat');
hold off;
subplot(2,2,2);plot(AllTemp,pAc)
hold on; 
plot(AllTemp,pBc)
plot(AllTemp,pPc)
legend('pA','pB','pP');
title('Density');
hold off; 
subplot(2,2,3);plot(AllTemp,lAc)
hold on; 
plot(AllTemp,lBc)
plot(AllTemp,lPc)
legend('lA','lB','lP');
title('Thermal Conductivity');
hold off; 
subplot(2,2,4);plot(AllTemp,HvAc)
hold on; 
plot(AllTemp,HvBc)
legend('HvA','HvB');
title('Heat of Vaporization');
hold off; 

