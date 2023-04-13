cd src/cat/
make test
test_cat_output=$(make test | grep "Fail test")
if [ -n "$test_cat_output" ]
then
  exit 1
else
  cd ../grep
  make test
  test_grep_output=$(make test | grep "Fail test")
  if [ -n "$test_grep_output" ]
  then
    exit 1
    fi
    fi