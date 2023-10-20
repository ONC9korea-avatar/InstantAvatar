experiment="demo"
SEQUENCES=("doo")
for SEQUENCE in ${SEQUENCES[@]}; do
    dataset="ourdata/$SEQUENCE"
    python train.py --config-name demo dataset=$dataset experiment=$experiment deformer.opt.cano_pose="a_pose" train.max_epochs=50 sampler.dilate=8
    python novel_view.py --config-name demo dataset=$dataset experiment=$experiment deformer.opt.cano_pose="a_pose"
done
