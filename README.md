# [7/22 11:39 AM] Van Etten, Adam

On gpu02

    cd /local_data/cosmiq/src/avanetten/yoltv4/docker
    nvidia-docker build -t yoltv4_image3 .
    nvidia-docker run -it -v /mnt/fs03/shared/datasets/rareplanes_mod/:/mnt/fs03/shared/datasets/rareplanes_mod/ -v /local_data:/local_data -p 9111:9111 -ti --ipc=host --name yoltv4_process2 yoltv4_image3

# [7/22 11:40 AM] Van Etten, Adam

Within docker on gpu02

    conda activate yoltv4
    cd /local_data/cosmiq/src/avanetten/yoltv4/
    jupyter notebook --ip 0.0.0.0 --port=9111 --no-browser --allow-root &

Locally in browser

    http://gpu02.labs.internal:9111

# Fri Jul 30 12:39:32 PDT 2021

In rareplanes_eval_share.ipynb

    import prep_train
    import tile_ims_labels
    import post_process
    import eval
    import eval_errors

Found these in ~/Projects/yoltv4/yoltv4

Also in rareplanes_eval_share.ipynb


rleclair@mp-gpu-server05:/mnt/fs03/shared/datasets/rareplanes_mod/DA_dataset/test$ 

rleclair@mp-gpu-server05:/mnt/fs03/shared/datasets/rareplanes_mod/yoltv4_preds$ 
