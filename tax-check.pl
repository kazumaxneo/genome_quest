#!/usr/bin/perl
use strict;
use Getopt::Long qw(:config posix_default no_ignore_case gnu_compat);

#version history=========================================================================
#v0.1

#parameters==============================================================================
my $input = "";
my $output = "";

#option==================================================================================
GetOptions('i=s' => \$input,'o=s' => \$output);

#main====================================================================================
&blastx;

#subroutine==============================================================================
sub blastx {
	system("");
	open DATABASE, "</root/uniprot_ref_proteomes.taxids" or die "cant open txt file1!\n";
	my @proteina0 = "";my @proteina1 = "";my @proteina2 = "";my @proteina3 = "";my @proteina4 = "";my @proteina5 = "";my @proteina6 = "";my @proteina7 = "";my @proteina8 = "";my @proteina9 = "";
	my @proteinb = "";my @proteinc = "";my @proteind = "";my @proteine = "";my @proteinf = "";my @proteing = "";my @proteinh = "";my @proteini = "";my @proteinj = "";my @proteink = "";my @proteinl = "";my @proteinm = "";my @proteinn = "";my @proteino = "";my @proteinp = "";my @proteinq = "";my @proteinr = "";my @proteins = "";my @proteint = "";my @proteinu = "";my @proteinv = "";my @proteinw = "";my @proteinx = "";my @proteiny = "";my @proteinz = "";my @proteinother = "";
	my @taxida0 = "";my @taxida1 = "";my @taxida2 = "";my @taxida3 = "";my @taxida4 = "";my @taxida5 = "";my @taxida6 = "";my @taxida7 = "";my @taxida8 = "";my @taxida9 = "";
	my @taxidb = "";my @taxidc = "";my @taxidd = "";my @taxide = "";my @taxidf = "";my @taxidg = "";my @taxidh = "";my @taxidi = "";my @taxidj = "";my @taxidk = "";my @taxidl = "";my @taxidm = "";my @taxidn = "";my @taxido = "";my @taxidp = "";my @taxidq = "";my @taxidr = "";my @taxids = "";my @taxidt = "";my @taxidu = "";my @taxidv = "";my @taxidw = "";my @taxidx = "";my @taxidy = "";my @taxidz = "";my @taxidother = "";
	my $a1 = 0;my $a2 = 0;my $a3 = 0;my $a4 = 0;my $a5 = 0;my $a6 = 0;my $a7 = 0;my $a8 = 0;my $a9 = 0;my $a0 = 0;
	my $b = "";my $c = "";my $d = "";my $e = "";my $f = "";my $g = "";my $h = "";my $i = "";my $j = "";my $k = "";my $l = "";my $m = "";my $n = "";my $o = "";my $p = "";my $q = "";my $r = "";my $s = "";my $t = "";my $u = "";my $v = "";my $w = "";my $x = "";my $y = "";my $z = "";my $other = "";
	
	print "database now cashing\n";
	while (my $line = <DATABASE>) {
		chomp($line);#改行を除く
		my @array = split(/\t/, $line);
		if($array[0] =~ /^a/i){
			if($array[0] =~ /1$/){
				$proteina1[$a1] = $array[0];$taxida1[$a1] = $array[2];$a1++;
			}elsif($array[0] =~ /2$/){
				$proteina2[$a2] = $array[0];$taxida2[$a2] = $array[2];$a2++;
			}elsif($array[0] =~ /3$/){
				$proteina3[$a3] = $array[0];$taxida3[$a3] = $array[2];$a3++;
			}elsif($array[0] =~ /4$/){
				$proteina4[$a4] = $array[0];$taxida4[$a4] = $array[2];$a4++;
			}elsif($array[0] =~ /5$/){
				$proteina5[$a5] = $array[0];$taxida5[$a5] = $array[2];$a5++;
			}elsif($array[0] =~ /6$/){
				$proteina6[$a6] = $array[0];$taxida6[$a6] = $array[2];$a6++;
			}elsif($array[0] =~ /7$/){
				$proteina7[$a7] = $array[0];$taxida7[$a7] = $array[2];$a7++;
			}elsif($array[0] =~ /8$/){
				$proteina8[$a8] = $array[0];$taxida8[$a8] = $array[2];$a8++;
			}elsif($array[0] =~ /9$/){
				$proteina9[$a9] = $array[0];$taxida9[$a9] = $array[2];$a9++;
			}elsif($array[0] =~ /0$/){
				$proteina0[$a0] = $array[0];$taxida0[$a0] = $array[2];$a0++;
			}else{
			print "a database no hit\n";
			}
		}elsif($array[0] =~ /^b/i){
			$proteinb[$b] = $array[0];$taxidb[$b] = $array[2];$b++;
		}elsif($array[0] =~ /^c/i){
			$proteinc[$c] = $array[0];$taxidc[$c] = $array[2];$c++;
		}elsif($array[0] =~ /^d/i){
			$proteind[$d] = $array[0];$taxidd[$d] = $array[2];$d++;
		}elsif($array[0] =~ /^e/i){
			$proteine[$e] = $array[0];$taxide[$e] = $array[2];$e++;
		}elsif($array[0] =~ /^f/i){
			$proteinf[$f] = $array[0];$taxidf[$f] = $array[2];$f++;
		}elsif($array[0] =~ /^g/i){
			$proteing[$g] = $array[0];$taxidg[$g] = $array[2];$g++;
		}elsif($array[0] =~ /^h/i){
			$proteinh[$h] = $array[0];$taxidh[$h] = $array[2];$h++;
		}elsif($array[0] =~ /^i/i){
			$proteini[$i] = $array[0];$taxidi[$i] = $array[2];$i++;
		}elsif($array[0] =~ /^j/i){
			$proteinj[$j] = $array[0];$taxidj[$j] = $array[2];$j++;
		}elsif($array[0] =~ /^k/i){
			$proteink[$k] = $array[0];$taxidk[$k] = $array[2];$k++;
		}elsif($array[0] =~ /^l/i){
			$proteinl[$l] = $array[0];$taxidl[$l] = $array[2];$l++;
		}elsif($array[0] =~ /^m/i){
			$proteinm[$m] = $array[0];$taxidm[$m] = $array[2];$m++;
		}elsif($array[0] =~ /^n/i){
			$proteinn[$n] = $array[0];$taxidn[$n] = $array[2];$n++;
		}elsif($array[0] =~ /^o/i){
			$proteino[$o] = $array[0];$taxido[$o] = $array[2];$o++;
		}elsif($array[0] =~ /^p/i){
			$proteinp[$p] = $array[0];$taxidp[$p] = $array[2];$p++;
		}elsif($array[0] =~ /^q/i){
			$proteinq[$q] = $array[0];$taxidq[$q] = $array[2];$q++;
		}elsif($array[0] =~ /^r/i){
			$proteinr[$r] = $array[0];$taxidr[$r] = $array[2];$r++;
		}elsif($array[0] =~ /^s/i){
			$proteins[$s] = $array[0];$taxids[$s] = $array[2];$s++;
		}elsif($array[0] =~ /^t/i){
			$proteint[$t] = $array[0];$taxidt[$t] = $array[2];$t++;
		}elsif($array[0] =~ /^u/i){
			$proteinu[$u] = $array[0];$taxidu[$u] = $array[2];$u++;
		}elsif($array[0] =~ /^v/i){
			$proteinv[$v] = $array[0];$taxidv[$v] = $array[2];$v++;
		}elsif($array[0] =~ /^w/i){
			$proteinw[$w] = $array[0];$taxidw[$w] = $array[2];$w++;
		}elsif($array[0] =~ /^x/i){
			$proteinx[$x] = $array[0];$taxidx[$x] = $array[2];$x++;
		}elsif($array[0] =~ /^y/i){
			$proteiny[$y] = $array[0];$taxidy[$y] = $array[2];$y++;
		}elsif($array[0] =~ /^z/i){
			$proteinz[$z] = $array[0];$taxidz[$z] = $array[2];$z++;
		}else{
			$proteinother[$other] = $array[0];$taxidother[$other] = $array[2];$other++;
		}
	}	
	
	open INPUT, "<$input" or die "cant open txt file2!\n";
	open OUT, ">$output" or die "cant write output txt!\n";
	while (my $line = <INPUT>) {
		chomp($line);#改行を除く
		my @array = split(/\t/, $line);
		print "$array[0]\t$array[1]\n";
		my $id = "";
		my $i = 0;
		
		if($array[1] =~ /^a/i && $array[1] =~ /1$/){
			foreach my $var(@proteina1){
				$id = $taxida1[$i] if($var eq $array[1]);
				$i++;
				last if($var eq $array[1]);
			}
		}elsif($array[1] =~ /^a/i && $array[1] =~ /2$/){
			foreach my $var(@proteina2){
				$id = $taxida2[$i] if($var eq $array[1]);
				$i++;
				last if($var eq $array[1]);
			}
		}elsif($array[1] =~ /^a/i && $array[1] =~ /3$/){
			foreach my $var(@proteina3){
				$id = $taxida3[$i] if($var eq $array[1]);
				$i++;
				last if($var eq $array[1]);
			}
		}elsif($array[1] =~ /^a/i && $array[1] =~ /4$/){
			foreach my $var(@proteina4){
				$id = $taxida4[$i] if($var eq $array[1]);
				$i++;
				last if($var eq $array[1]);
			}
		}elsif($array[1] =~ /^a/i && $array[1] =~ /5$/){
			foreach my $var(@proteina5){
				$id = $taxida5[$i] if($var eq $array[1]);
				$i++;
				last if($var eq $array[1]);
			}
		}elsif($array[1] =~ /^a/i && $array[1] =~ /6$/){
			foreach my $var(@proteina6){
				$id = $taxida6[$i] if($var eq $array[1]);
				$i++;
				last if($var eq $array[1]);
			}
		}elsif($array[1] =~ /^a/i && $array[1] =~ /7$/){
			foreach my $var(@proteina7){
				$id = $taxida7[$i] if($var eq $array[1]);
				$i++;
				last if($var eq $array[1]);
			}
		}elsif($array[1] =~ /^a/i && $array[1] =~ /8$/){
			foreach my $var(@proteina8){
				$id = $taxida8[$i] if($var eq $array[1]);
				$i++;
				last if($var eq $array[1]);
			}
		}elsif($array[1] =~ /^a/i && $array[1] =~ /9$/){
			foreach my $var(@proteina9){
				$id = $taxida9[$i] if($var eq $array[1]);
				$i++;
				last if($var eq $array[1]);
			}
		}elsif($array[1] =~ /^a/i && $array[1] =~ /0$/){
			foreach my $var(@proteina0){
				$id = $taxida0[$i] if($var eq $array[1]);
				$i++;
				last if($var eq $array[1]);
			}
		}elsif($array[1] =~ /^b/i){
			foreach my $var(@proteinb){
				$id = $taxidb[$i] if($var eq $array[1]);
				$i++;
				last if($var eq $array[1]);
			}
		}elsif($array[1] =~ /^c/i){
			foreach my $var(@proteinc){
				$id = $taxidc[$i] if($var eq $array[1]);
				$i++;
				last if($var eq $array[1]);
			}
		}elsif($array[1] =~ /^d/i){
			foreach my $var(@proteind){
				$id = $taxidd[$i] if($var eq $array[1]);
				$i++;
				last if($var eq $array[1]);
			}
		}elsif($array[1] =~ /^e/i){
			foreach my $var(@proteine){
				$id = $taxide[$i] if($var eq $array[1]);
				$i++;
				last if($var eq $array[1]);
			}
		}elsif($array[1] =~ /^f/i){
			foreach my $var(@proteinf){
				$id = $taxidf[$i] if($var eq $array[1]);
				$i++;
				last if($var eq $array[1]);
			}
		}elsif($array[1] =~ /^g/i){
			foreach my $var(@proteing){
				$id = $taxidg[$i] if($var eq $array[1]);
				$i++;
				last if($var eq $array[1]);
			}
		}elsif($array[1] =~ /^h/i){
			foreach my $var(@proteinh){
				$id = $taxidh[$i] if($var eq $array[1]);
				$i++;
				last if($var eq $array[1]);
			}
		}elsif($array[1] =~ /^i/i){
			foreach my $var(@proteini){
				$id = $taxidi[$i] if($var eq $array[1]);
				$i++;
				last if($var eq $array[1]);
			}
		}elsif($array[1] =~ /^j/i){
			foreach my $var(@proteinj){
				$id = $taxidj[$i] if($var eq $array[1]);
				$i++;
				last if($var eq $array[1]);
			}
		}elsif($array[1] =~ /^k/i){
			foreach my $var(@proteink){
				$id = $taxidk[$i] if($var eq $array[1]);
				$i++;
				last if($var eq $array[1]);
			}
		}elsif($array[1] =~ /^l/i){
			foreach my $var(@proteinl){
				$id = $taxidl[$i] if($var eq $array[1]);
				$i++;
				last if($var eq $array[1]);
			}
		}elsif($array[1] =~ /^m/i){
			foreach my $var(@proteinm){
				$id = $taxidm[$i] if($var eq $array[1]);
				$i++;
				last if($var eq $array[1]);
			}
		}elsif($array[1] =~ /^n/i){
			foreach my $var(@proteinn){
				$id = $taxidn[$i] if($var eq $array[1]);
				$i++;
				last if($var eq $array[1]);
			}
		}elsif($array[1] =~ /^o/i){
			foreach my $var(@proteino){
				$id = $taxido[$i] if($var eq $array[1]);
				$i++;
				last if($var eq $array[1]);
			}
		}elsif($array[1] =~ /^p/i){
			foreach my $var(@proteinp){
				$id = $taxidp[$i] if($var eq $array[1]);
				$i++;
				last if($var eq $array[1]);
			}
		}elsif($array[1] =~ /^q/i){
			foreach my $var(@proteinq){
				$id = $taxidq[$i] if($var eq $array[1]);
				$i++;
				last if($var eq $array[1]);
			}
		}elsif($array[1] =~ /^r/i){
			foreach my $var(@proteinr){
				$id = $taxidr[$i] if($var eq $array[1]);
				$i++;
				last if($var eq $array[1]);
			}
		}elsif($array[1] =~ /^s/i){
			foreach my $var(@proteins){
				$id = $taxids[$i] if($var eq $array[1]);
				$i++;
				last if($var eq $array[1]);
			}
		}elsif($array[1] =~ /^t/i){
			foreach my $var(@proteint){
				$id = $taxidt[$i] if($var eq $array[1]);
				$i++;
				last if($var eq $array[1]);
			}
		}elsif($array[1] =~ /^u/i){
			foreach my $var(@proteinu){
				$id = $taxidu[$i] if($var eq $array[1]);
				$i++;
				last if($var eq $array[1]);
			}
		}elsif($array[1] =~ /^v/i){
			foreach my $var(@proteinv){
				$id = $taxidv[$i] if($var eq $array[1]);
				$i++;
				last if($var eq $array[1]);
			}
		}elsif($array[1] =~ /^w/i){
			foreach my $var(@proteinw){
				$id = $taxidw[$i] if($var eq $array[1]);
				$i++;
				last if($var eq $array[1]);
			}
		}elsif($array[1] =~ /^x/i){
			foreach my $var(@proteinx){
				$id = $taxidx[$i] if($var eq $array[1]);
				$i++;
				last if($var eq $array[1]);
			}
		}elsif($array[1] =~ /^y/i){
			foreach my $var(@proteiny){
				$id = $taxidy[$i] if($var eq $array[1]);
				$i++;
				last if($var eq $array[1]);
			}
		}elsif($array[1] =~ /^z/i){
			foreach my $var(@proteinz){
				$id = $taxidz[$i] if($var eq $array[1]);
				$i++;
				last if($var eq $array[1]);
			}
		}else{
			foreach my $var(@proteinother){
				$id = $taxidother[$i] if($var eq $array[1]);
				$i++;
				last if($var eq $array[1]);
			}
		}
		print OUT "$array[0]\t$id\t$array[2]\n";
	}
}
