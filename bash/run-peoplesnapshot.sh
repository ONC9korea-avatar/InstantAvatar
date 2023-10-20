experiment="demo"
SEQUENCES=("female-3-casual" "male-4-casual" "male-3-casual" "female-4-casual")
for SEQUENCE in ${SEQUENCES[@]}; do
    dataset="peoplesnapshot/$SEQUENCE"
    python train.py --config-name demo dataset=$dataset experiment=$experiment train.max_epochs=50
    python novel_view.py --config-name demo dataset=$dataset experiment=$experiment deformer.opt.cano_pose="a_pose"
done