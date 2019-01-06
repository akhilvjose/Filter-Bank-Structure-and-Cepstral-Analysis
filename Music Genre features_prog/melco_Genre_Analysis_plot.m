Arr=[melco1;melco2;melco3;melco4;melco5;melco6;melco7;melco8;melco9;melco10;melco11;melco12;melco13;melco14;melco15;melco16;melco17;melco18;melco19;melco20;melco21;melco22;melco23;melco24;melco25;melco26;melco27;melco28;melco29;melco30;melco31;melco32;melco33;melco34;melco35;melco36;melco37;melco38;melco39;melco40;melco41;melco42;melco43;melco44;melco45;melco46;melco47;melco48;melco49;melco50;melco51;melco52;melco53;melco54;melco55;melco56;melco57;melco58;melco59;melco60;melco61;melco62;melco63;melco64;melco65;melco66;melco67;melco68;melco69;melco70;melco71;melco72;melco73;melco74;melco75];
for i=1:13
    temp=Arr(:,i);
    E1=temp(1:15);
    E2=temp(16:30);
    E3=temp(31:45);
    E4=temp(46:60);
    E5=temp(61:75);
    E=[E1 E2 E3 E4 E5];
    p=kruskalwallis(E,[],'on') ;
 boxplot(E,{'Blues','Classical','Country','Disco','Hiphop'})
 title('Box Whisker plot');
 xlabel('Music Genre');
 ylabel('MFCC')
 
    u_mel(i)=p;
end
