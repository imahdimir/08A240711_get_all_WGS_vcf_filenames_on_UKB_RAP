pyenv activate dx
dx login


for i in {10..60};
do

print $i

dx ls "/Bulk/DRAGEN WGS/Whole genome variant call files (VCFs) (DRAGEN) [500k release]/$i/" > ls_$i.txt

done


cat by_folders/ls_*.txt > merged.txt