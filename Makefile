venv : 
	python3 -m venv venv

setup : 
	python -m pip install --upgrade pip
	python -m pip install jupyter
	python -m pip install -r requirements.txt
	python3 -m bash_kernel.install

run : 
	jupyter notebook

clean : 
	rm -rvf single_subject \
	        all_subjects \
	        adhd200_age_hippo.csv \
	        adhd200_age_hippo_raw.csv \
	        adhd200_brown.ttl \
	        age_hippo.csv \
	        age_hippo_raw.csv \
	        all_hippocampus_results.txt \
	        all_query_results.txt \
	        all_vol_vs_age.png \
	        demog_aseg.ttl \
	        single_query_results.txt \
	        vol_vs_age.png

clobber : clean
	rm -rvf venv segstats_jsonld
