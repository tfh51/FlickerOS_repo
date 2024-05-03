
#!/bin/bash

rm FlickerOS_repo*

echo "repo-add"
repo-add -n -R FlickerOS_repo.db.tar.gz *.pkg.tar.zst

sleep 1

rm PaOs_repo.db
rm FlickerOS_repo.db.sig

rm FlickerOS_repo.files
rm FlickerOS_repo.files.sig

mv FlickerOS_repo.db.tar.gz FlickerOS_repo.db
mv FlickerOS_repo.db.tar.gz.sig FlickerOS_repo.db.sig

mv FlickerOS_repo.files.tar.gz FlickerOS_repo.files
mv FlickerOS_repo.files.tar.gz.sig FlickerOS_repo.files.sig

echo "####################################"
echo "Repo Updated!!"
echo "####################################"
