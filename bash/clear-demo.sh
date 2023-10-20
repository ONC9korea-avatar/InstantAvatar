# clears all demo outputs
SEQUENCES=("female-3-casual" "male-4-casual" "male-3-casual" "female-4-casual")
for SEQUENCE in ${SEQUENCES[@]}; do
    rm -rf ./outputs/peoplesnapshot
done

cd ./outputs/ourdata/demo/doo
rm -rf .hydra animation checkpoints/*.ckpt tensorboard *.yaml *.log
cd -