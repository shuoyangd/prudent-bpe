task mail
  < in=$bleu@sacrebleu
  :: email=@ {

  cat $in | mail -s $in $email
}
