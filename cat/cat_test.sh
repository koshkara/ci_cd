#!/bin/bash

test1_file=./test.file
test2_file=./text.txt
success_tests=0
fail_tests=0

#  Test1
#  echo "Test1: cat test1.file"

  cat_result=$(cat $test1_file)
  s21_cat_result=$(./s21_cat $test1_file)

#  echo "Cat result: $cat_result"
#  echo "s21_cat result: $s21_cat_result"

  if [ "$cat_result" = "$s21_cat_result" ];
  then
#  then echo "Success"
  success_tests=$((success_tests + 1))
  else
#  else echo -e "Fail\n"
  fail_tests=$((fail_tests + 1))
  fi

#Test2

#  echo "Test2: cat test1.file test2.filee"

  cat_result=$(cat $test1_file $test2_file)
  s21_cat_result=$(./s21_cat $test1_file $test2_file)

#  echo "Cat result: $cat_result"
#  echo "S21_cat result: $s21_cat_result"

  if [ "$cat_result" = "$s21_cat_result" ];
  then
#    echo "Success"
  success_tests=$((success_tests + 1))
  else
#    echo -e "Fail\n"
  fail_tests=$((fail_tests + 1))
  fi

#Test3

#  echo "Test3: cat -b test1.file test2.file"

  cat_result=$(cat -b $test1_file $test2_file)
  s21_cat_result=$(./s21_cat -b $test1_file $test2_file)

#  echo "Cat result: $cat_result"
#  echo "S21_cat result: $s21_cat_result"

  if [ "$cat_result" = "$s21_cat_result" ];
  then
#    echo "Success"
  success_tests=$((success_tests + 1))
  else
#    echo -e "Fail\n"
  fail_tests=$((fail_tests + 1))
  fi

#Test4

#  echo "Test4: cat -e test1.file test2.file"

  cat_result=$(cat -e $test1_file $test2_file)
  s21_cat_result=$(./s21_cat -e $test1_file $test2_file)

#  echo "Cat result: $cat_result"
#  echo "S21_cat result: $s21_cat_result"

   if [ "$cat_result" = "$s21_cat_result" ];
   then
#     echo "Success"
  success_tests=$((success_tests + 1))
  else
#    echo -e "Fail\n"
  fail_tests=$((fail_tests + 1))
   fi

#Test5

#  echo "Test5: cat -n test1.file test2.file"

  cat_result=$(cat -n $test1_file $test2_file)
  s21_cat_result=$(./s21_cat -n $test1_file $test2_file)

#  echo "Cat result: $cat_result"
#  echo "S21_cat result: $s21_cat_result"

  if [ "$cat_result" = "$s21_cat_result" ];
  then
#    echo "Success"
  success_tests=$((success_tests + 1))
  else
#    echo -e "Fail\n"
  fail_tests=$((fail_tests + 1))
  fi



# Test6

#  echo "Test6: cat -s test1.file test2.file"

  cat_result=$(cat -s $test1_file $test2_file)
  s21_cat_result=$(./s21_cat -s $test1_file $test2_file)

#  echo "Cat result: $cat_result"
#  echo "S21_cat result: $s21_cat_result"

  if [ "$cat_result" = "$s21_cat_result" ];
  then
#    echo "Success"
  success_tests=$((success_tests + 1))
  else
#    echo -e "Fail\n"
  fail_tests=$((fail_tests + 1))
  fi

#Test7

#  echo "Test7: cat -t test1.file test2.file"

  cat_result=$(cat -t $test1_file $test2_file)
  s21_cat_result=$(./s21_cat -t $test1_file $test2_file)

#  echo "Cat result: $cat_result"
#  echo "S21_cat result: $s21_cat_result"

  if [ "$cat_result" = "$s21_cat_result" ];
  then
#    echo "Success"
  success_tests=$((success_tests + 1))
  else
#    echo -e "Fail\n"
  fail_tests=$((fail_tests + 1))
  fi



#Test8

#  echo "Test8: cat -b -e test1.file test2.file"

  cat_result=$(cat -b -e $test1_file $test2_file)
  s21_cat_result=$(./s21_cat -b -e $test1_file $test2_file)

#  echo "Cat result: $cat_result"
#  echo "S21_cat result: $s21_cat_result"

  if [ "$cat_result" = "$s21_cat_result" ];
  then
#    echo "Success"
  success_tests=$((success_tests + 1))
  else
#    echo -e "Fail\n"
  fail_tests=$((fail_tests + 1))
  fi

#Test9

#  echo "Test9: cat -b -s test1.file test2.file"

  cat_result=$(cat -b -s $test1_file $test2_file)
  s21_cat_result=$(./s21_cat -b -s $test1_file $test2_file)

#  echo "Cat result: $cat_result"
#  echo "S21_cat result: $s21_cat_result"

  if [ "$cat_result" = "$s21_cat_result" ];
  then
#    echo "Success"
  success_tests=$((success_tests + 1))
  else
#    echo -e "Fail\n"
  fail_tests=$((fail_tests + 1))
  fi

  #Test10

#    echo "Test10: cat -b -t test1.file test2.file"

    cat_result=$(cat -b -t $test1_file $test2_file)
    s21_cat_result=$(./s21_cat -b -t $test1_file $test2_file)

  #  echo "Cat result: $cat_result"
  #  echo "S21_cat result: $s21_cat_result"

    if [ "$cat_result" = "$s21_cat_result" ];
    then
#      echo "Success"
    success_tests=$((success_tests + 1))
    else
#      echo -e "Fail\n"
    fail_tests=$((fail_tests + 1))
    fi

#Test11

#  echo "Test11: cat -e -n test1.file test2.file"

  cat_result=$(cat -e -n $test1_file $test2_file)
  s21_cat_result=$(./s21_cat -e -n $test1_file $test2_file)

#  echo "Cat result: $cat_result"
#  echo "S21_cat result: $s21_cat_result"

  if [ "$cat_result" = "$s21_cat_result" ];
  then
#    echo "Success"
  success_tests=$((success_tests + 1))
  else
#    echo -e "Fail\n"
  fail_tests=$((fail_tests + 1))
  fi

  if [ "$success_tests" -gt 0 ]
  then
  echo "Success test"
  else
  echo "Fail test"
  fi