pyenv activate dx
dx login


for i in {10..60};
do

print $i

dx ls "/Bulk/DRAGEN WGS/Whole genome variant call files (VCFs) (DRAGEN) [500k release]/$i/" > ls_$i.txt

done


cat by_folders/ls_*.txt > all_WGS_files.txt 
# resulted in 980,618 filenames, vcf.gz and vfc.gz.tbi file types
# outputs (by_folder/ and all_WGS_files.txt) stored on NBER Server