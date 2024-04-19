# TransVarSur (Transformer Variational Survival modeling)
Deep representation learning for clustering longitudinal survival data from electronic health records

All the dependencies are in environment.yaml and requirements_pip.txt

The UKB EHR data must be downloaded from UK Biobank (https://www.ukbiobank.ac.uk/) by user's self

The 5 fold simulation data used in the paper can be found in https://github.com/JiajunQiu/TransVarSur/tree/main/data/simulation

The following code can be used to re-produce the result on simulation for a single fold:

python3.9 main.py -s simulation -n ./data/simulation/benchmark_data_fold1.pkl -p outputs/output_simulation_fold1 -r False -b True -k True

And you can find the example of the outputs in https://github.com/JiajunQiu/TransVarSur/tree/main/outputs/output_simulation_fold1
