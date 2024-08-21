python -m torch.distributed.launch \
    --nproc_per_node=1 --master_port 47771 test_dex.py \
    --which_cond dex --bs 2 --cond_weight 1 --sd_ckpt model_sd_finetuned.ckpt \
    --cond_tau 1 --cond_inp_type image \
    --input . --file test_data/test.csv \
    --outdir output --adapter_ckpt model_condition.pth