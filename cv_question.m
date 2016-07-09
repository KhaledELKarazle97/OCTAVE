 numinput=5;
 net=newp([-1 1; -1 1], 1); %2 inputs between -1 and 1, 1 neuron
 net.IW{1,1}=rands(1,2);
 P=rands(2,numinput);
 T=sim(net,P);
 plotpv(P,T);
 hold on;
 plotpc(net.IW{1,1},0);