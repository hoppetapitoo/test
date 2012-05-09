#use bigint lib => 'GMP';
#ª‘å‚«‚¢”‚È‚çGMP‚ª‚ ‚Á‚½‚Ù‚¤‚ª‚¢‚¢‚©‚àB

sub soinsu{
my $ta=$_[0];
if($ta<=3){return q($ta);}
my $sa=sqrt($ta);
my @insu;
while($ta%2==0){$ta/=2;push @insu,2;}
my $i=3;
while(($i<=$ta)&&($i<=$sa)){
if($ta%$i==0){
$ta/=$i;
push @insu,$i;
$sa=sqrt($ta);
next;
}
$i+=2;
}
push @insu,$ta;
return @insu;
}
foreach(soinsu(111)){print "$_,";}
