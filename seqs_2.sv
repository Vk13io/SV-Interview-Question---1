// 0  0  1  1  0  0  3  3  0  0 ...

class seq;
	rand int q[];

	constraint rand_size{q.size == 20;}	
	constraint rand_seq{foreach(q[i])
				if((i)%4 == 1 || i%4 == 0)
					q[i]==0;
				else
					q[i]==((i+4)/4);	


			}

	
endclass:seq

seq si;

module tst;

initial begin
 si=new;
if(si.randomize())
	$display("THE SEQUENCE IS %p",si.q);
end
endmodule

































