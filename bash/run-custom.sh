experiment=our_data
dataset="custom/doo_new"
gender=male

# data preprocessing
. scripts/custom/process-sequence.sh ./data/$dataset $gender

# actuall InstantAvatar part
python fit.py --config-name SNARF_NGP_fitting dataset=$dataset experiment=$experiment deformer=smpl train.max_epochs=200
python train.py --config-name demo dataset=$dataset experiment=$experiment deformer.opt.cano_pose="a_pose" train.max_epochs=200 sampler.dilate=8
python novel_view.py --config-name demo dataset=$dataset experiment=$experiment deformer.opt.cano_pose="a_pose"
python animate.py --config-name demo dataset=$dataset experiment=$experiment deformer.opt.cano_pose="a_pose"
