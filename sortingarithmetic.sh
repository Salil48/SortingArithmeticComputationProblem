echo "Welcome to Sorting Arithmetic Computation Problem"

read -p "enter first value : " a;
read -p "enter second value : " b;
read -p "enter third value : " c;

declare -A w
w=$(($a+($b*$c)));
echo "$a + $b*$c = $w";

declare -A x
x=$((($a*$b)+$c));
echo "$a*$b + $c = $x";

declare -A y
y=$(($c+($a/$b)));
echo "$c + $a/$b = $y";

declare -A z
z=$((($a%$b)+$c));
echo "$a%$b + $c = $z";

arr=($w $x $y $z)
echo ${arr[@]}

read -p "Enter The Number: "  n
for((i=0; i<$n; i++))
do
read -p "Enter value of arr[$i]: " arr[$i]
done
#sorting code
for((i=0; i<$n; i++))
do
for((j=0; j<n-i-1; j++))
do
if [ ${arr[j]} -lt ${arr[$((j+1))]} ]
then
#swapping
temp=${arr[j]}
arr[$j]=${arr[$((j+1))]}
arr[$((j+1))]=$temp
fi
done
echo "Numbers in Descending order: " ${arr[@]}
