Alphabet=[" ","A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z"];
morseCharacters=["#",".-","-...","-.-.","-..",".","..-.","--.","....","..",".---","-.-",".-..","--","-.","---",".--.","--.-",".-.","...","-","..-","...-",".--","-..-","-.--","--.."];


msg=input("Type message to be translated: ","s");

writeLED(r, led, 1);
for chr=1:length(msg)
    character=msg(chr);
    index=find(all(ismember(Alphabet,character),1));
    sequence=morseCharacters(index);
    sequence=split(sequence,'');
    sequence=sequence(2:end-1);
    for i=1:length(sequence)
        harmonic=sequence(i);
        if harmonic=="."
            writeLED(r, led, 0);
            pause(0.2);
        end
        if harmonic=="-"
            writeLED(r, led, 0);
            pause(0.6);
        end
        if harmonic=="#"
            pause(0.4);
        end
        writeLED(r, led, 1);
        pause(0.2);
    end
    pause(0.2);
end