read -p "Are you sure you want to delete the test_data directory? (y/n): " choice

if [ "$choice" = "y" ]; then
    rm -rf test_data
    echo "The test_data directory has been deleted."
    cd third_party/test

    python get_image.py --obj-path /data/GRAB/tools/object_meshes/contact_meshes \
        --rhm-path /data/mano/mano_v1_2/models/MANO_RIGHT.pkl \
        --outdir test_data --n_samples 1 --bs 1

    mv test_data ../..
    cd ../..
else
    echo "Stop working."
fi
