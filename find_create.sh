### "find" search input files, "sed" modify format and "awk" created command line.

find -name "DNA-1_R1.fq.gz"|grep 'Cleandata'|sed 's/_R1.fq.gz//g'|awk -F "/" '{print " bismark --parallel 40 --un --bam --genome ~/Genome/Sspon_genome/genome/  -o  "$2"_"$6" -1 "$0"_R1.fq.gz -2 "$0"_R2.fq.gz"}'
