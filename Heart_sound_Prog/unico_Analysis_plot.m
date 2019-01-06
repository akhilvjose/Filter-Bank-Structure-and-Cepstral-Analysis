Arr2=[unico1;unico2;unico3;unico4;unico5;unico6;unico7;unico8;unico9;unico10;unico11;unico12;unico13;unico14;unico15;unico16;unico17;unico18;unico19;unico20;unico21;unico22;unico23;unico24;unico25;unico26;unico27;unico28;unico29;unico30;unico31;unico32;unico33;unico34;unico35;unico36;unico37;unico38;unico39;unico40;unico41;unico42;unico43;unico44;unico45;unico46;unico47;unico48;unico49;unico50;unico51;unico52;unico53;unico54;unico55;unico56;unico57;unico58;unico59;unico60; unico61; unico62; unico63; unico64; unico65; unico66;unico67;unico68;unico69;unico70; unico71; unico72; unico73; unico74; unico75];
for i=1:13
    temp=Arr2(:,i);
    E1=temp(1:25);
    E2=temp(26:50);
    E3=temp(51:75);
    E=[E1 E2 E3];
    p=kruskalwallis(E,[],'on') ;
 boxplot(E,{'Extrasystol','Murmur','Normal'})
 title('Box Whisker plot');
 xlabel('Heart sound samples');
 ylabel('EFCC');
 u_uni(i)=p;
end