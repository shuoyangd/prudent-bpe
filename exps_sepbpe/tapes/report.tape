task mail
  < bleu_in=$bleu@sacrebleu
  < log_in=$out@train
  :: email=@ {

  dir=`dirname $log_in`
  cat $bleu_in >> email
  grep -A 1 "gpu" $dir/job.out >> email

  cat email | mail -s "No Typical BPE Experiment" $email
}
