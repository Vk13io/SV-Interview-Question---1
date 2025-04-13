
//sequence section



class seq;
	rand int q[];
 	constraint ending {q.size == 10;}


 	//  2 3 5 6 8 9 11 12 14 15

	constraint rand_seq {foreach(q[i])
			       if(i%2==0)
				  q[i]==((2+(3*i/2)));	
				else
				  q[i] ==(3*(i-i/2));}




		

	
endclass:seq

seq si;

module tst;

initial begin
 si=new;
if(si.randomize())
	$display("THE SEQUENCE IS %p",si.q);
end
endmodule




