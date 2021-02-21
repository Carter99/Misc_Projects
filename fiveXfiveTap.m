Alphabet=[  "A","B","C","D","E";
            "F","G","H","I","J";
            "L","M","N","O","P"; 
            "Q","R","S","T","U";
            "V","W","X","Y","Z"];
%
writeLED(r, led, 1);
msg=input("Type message to be translated: ","s");
msg=replace(upper(msg),["K"," "],["C",""]);

for i=1:length(msg)
    [row,col]=find(Alphabet==msg(i));
    for tap=1:row
        writeLED(r, led, 0);
        pause(0.1)
        writeLED(r, led, 1);
        pause(0.1)
    end
    pause(0.5)
    for tap=1:col
        writeLED(r, led, 0);
        pause(0.1)
        writeLED(r, led, 1);
        pause(0.1)
    end
    pause(1)
end