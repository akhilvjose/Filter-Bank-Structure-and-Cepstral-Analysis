Arr1=[linco1;linco2;linco3;linco4;linco5;linco6;linco7;linco8;linco9;linco10;linco11;linco12;linco13;linco14;linco15;linco16;linco17;linco18;linco19;linco20;linco21;linco22;linco23;linco24;linco25;linco26;linco27;linco28;linco29;linco30;linco31;linco32;linco33;linco34;linco35;linco36;linco37;linco38;linco39;linco40;linco41;linco42;linco43;linco44;linco45;linco46;linco47;linco48;linco49;linco50;linco51;linco52;linco53;linco54;linco55;linco56;linco57;linco58;linco59;linco60;linco61;linco62;linco63;linco64;linco65;linco66;linco67; linco68; linco69; linco70; linco71; linco72; linco73; linco74; linco75];
for i=1:13
    temp=Arr1(:,i);
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
 ylabel('LFCC');
    u_lhz(i)=p;
end
