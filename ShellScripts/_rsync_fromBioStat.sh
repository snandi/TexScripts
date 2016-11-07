find . -type f -name '*~' -delete

rsync -av ~/Project_BAC/ nandi@desk00.stat.wisc.edu:Project_BAC --delete-before
rsync -av ~/Project_BAC/ nandi@jupiter.lmcg.wisc.edu:Project_BAC --delete-before

