# prudent-bpe

This is the experiment configuration for the paper [A Call for Prudent Choice of Subword Merge Operations in Neural Machine Translation](https://arxiv.org/pdf/1905.10453.pdf).
The complicated nature of MT system building pipeline and the sheer number of experiments we ran to come up with the conclusions in the paper led us [tape4nmt](https://github.com/shuoyangd/tape4nmt), an experiment pipeline management systems.
These configurations would also allow you to easily reproduce our numbers as closely as possible.
If you haven't used [tape4nmt](https://github.com/shuoyangd/tape4nmt) before, please take your time to set up and get familiar with the structure of [tape4nmt](https://github.com/shuoyangd/tape4nmt) configuration files before you attempt to reproduce our experiments.

### Reproducing Main Results (Architecture Results)

These configurations we used to obtain the main results could be found in `exps_deep_lstm` `exps_deep_transformer` `exps_shallow_lstm` `exps_shallow_transformer` and `exps_tiny_lstm` directory, each corresponding to configurations used to run experiments of one architecture.
Each of these directories has 16 files and a sub-directory `tapes/`.
Unless you are a power-user who knows how to edit ducttape files, you shouldn't need to touch anything in the `tapes/` directory.

Each pairs of `*.tape` and `*.tconf` files consist experiment configurations for one language pair.
Suppose you would like to reproduce Arabic-English experiments, you would run:

```
ducttape aren.tape -C aren.tconf
```

### Reproducing Joint/Separate BPE Results

These configurations could be found in `exps_sepbpe`. The structure and usage of the contents in this directory are the same as above.

### Reproducing Language Analysis Results

You could reproducing these results by running:

```
cd regression
python scikit_regression.py --data-path data_lang_more_filtered.csv
```

### Reproducing Random Seed Results

We use fixed random seed by default for optimal reproducibility.
To gauge variance with different random seed, simply modify the `train_seed` variable in any `*.tconf` file into an empty string (don't delete the variable though).

### Reproducing High-Resource Results

These configurations could be found in `exps_medium_scale`. The structure of the directory is largely the same except that we only experimented with two different languages, so you would only find 4 files (two with `ruen.*` and two others with `enru.*`) instead of 16.
