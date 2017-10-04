#!/bin/bash

echo ===========================
BASEDIR=$PWD
BASEFOLDER="AnalysisInput"
BASE=$BASEDIR/$BASEFOLDER
#PASS=muon_calo_pass1
PASS=muon_calo_pass2

#—————————————————
YEAR=2015

PERIOD="LHC15l"
TRAIN=845
TIME=_20170915-2254

#PERIOD="LHC15n"
#TRAIN=603
#TIME=_20160825-1813

#PERIOD="LHC15o"
#TRAIN=771
#TIME=_20170502-1840 

#PERIOD="LHC15o"
#TRAIN=758
#TIME=_20170315-0153

#—————————————————
#YEAR=2016

#PERIOD="LHC16h"
#TRAIN=622
#TIME=_20160830-1842

#PERIOD="LHC16i"
#TRAIN=623
#TIME=_20160830-1845

#PERIOD="LHC16j"
#TRAIN=821
#TIME=_20170731-1503

#PERIOD="LHC16k"
#TRAIN=804
#TIME=_20170607-0356 

#PERIOD="LHC16l"
#TRAIN=803
#TIME=_20170606-0450

#PERIOD="LHC16o"
#TRAIN=663
#TIME=_20161027-1343

#PERIOD="LHC16q"
#TRAIN=765
#TIME=_20170412-1504

#PERIOD="LHC16r"
#TRAIN=835
#TIME=_20170829-1932

#PERIOD="LHC16s"
#TRAIN=836
#TIME=_20170829-1932 

#PERIOD="LHC16t"
#TRAIN=768
#TIME=_20170412-1505

#—————————————————

SUBDIR="Train_$TRAIN"
mkdir $BASEFOLDER
mkdir $BASEFOLDER/$PERIOD
mkdir $BASEFOLDER/$PERIOD/$SUBDIR
cd $BASE/$PERIOD/$SUBDIR

#- - - - - - - Loop - - - - - - - - - - - -
#####LHC15l#####
for i in 241544 #241531 241523 241521 240450 240447 240444 240443 240069 239519 240440 240434 240412 240411 240409 240408 240406 240404 240398 240394 240392 240072 239717 239701 239696 239409 239407 239404 239402 239401 239396 240382 240381 240380 240376 241407 241396 241393 241361 241360 241354 241296 241295 241288 241281 241269 241268 241267 241257 241144 241141 241069 241062 241057 241056 241055 241054 241050 241043 241021 241014 241010 241001 240880 240875 240874 240872 240864 240860 240854 240845 240612 240610
do

#####LHC15n#####
#for i in 244364 244359 244355 244351 244340 244628 244627 244626 244619 244618 244617 244542 244540 244531 244484 244483 244482 244481 244480 244456 244453 244421 244418 #244416 244411 244377
#do

#####LHC15o#####
#for i in 244917 244918 244975 244980 244982 244983 245061 245064 245066 245068 245145 245146 245151 245152 245231 245232 245259 245343 245345 245346 245347 245349 245353 245396 245397 245401 245407 245409 245411 245439 245441 245446 245454 245496 245497 245501 245504 245505 245507 245535 245540 245542 245543 245544 245545 245554 245683 245700 245702 245705 245738 245829 245831 245833 245949 245952 245954 245963 246001 246003 246037 246042 246052 246053 246087 246089 246113 246115 246217 246222 246225 246271 246272 246390 246391 246392 246424 246434 246487 246488 246493 246495 246750 246751 246757 246758 246759 246760 246765 246766 246804 246805 246807 246808 246809 246810 246844 246845 246846 246928 246945 245148 246575 246583 246648
#not working - for i in 245793 246148 246151 246152 246153 246178 246180 246181 246182 246275 246276 246948 246980 246982 246984 246989 246991 246994
#for i in 244911 244972 245230 245233 245341 245453 245996 246433 246540 246543 246567 246568 246806 246930 245729 245731 245785 245410
#do

#####LHC16h#####
#for i in 255467 255466 255465 255463 255440 255421 255420 255419 255418 255352 255351 255350 255276 255275 255256 255255 255253 255252 255251 255249 254654 254653 254652 254651 254649 254648 254646 254644 254640 254632 254630 254629 254621 254607 254606 254604 254422 
#do

#####LHC16i#####
#for i in 255618 255617 255616 255615 255614 255592 255591 255583 255582 255577 255543 255542 255541 255540 255539 
#do

#####LHC16j#####
#for i in 256298 256297 256295 256292 256290 256289 256284 256283 256282 256281 256231 256227 256223 256210 256207 256225 256157 256156 256149 256148 256147
#do

#####LHC16k#####
#for i in 258537 258499 258477 258456 258454 258426 258393 258387 258359 258336 258299 258278 258274 258273 258271 258270 258258 258257 258256 258204 258203 258202 258198 258197 258178 258117 258114 258113 258109 258108 258107 258063 258062 258059 258049 258048 258045 258042 258019 258017 258014 258012 257963 257960 257958 257957 257939 257937 257936 257893 257892 257855 257850 257803 257800 257799 257798 257797 257773 257765 257754 257737 257735 257734 257733 257724 257697 257694 257692 257691 257689 257687 257682 257642 257606 257605 257594 257590 257587 257566 257562 257561 257560 257541 257540 257539 257537 257531 257530 257492 257491 257490 257487 257474 257457 257320 257260 257224 257209 257206 257204 257145 257144 257142 257141 257140 257139 257138 257137 257136 257100 257092 257084 257083 257082 257080 257077 257026 257021 257012 257011 256944 256942 256941 256697 256695 256694 256692 256691 256684 256681 256677 256676 256658 256620 256619 256592 256591 256589 256567 256565 256564 256562 256561 256560 256556 256554 256552 256514 256512 256510 256506 256504 257565 257564 257563 257079 257078 258498 258388 258280 257912 257075 257433 257364 257322 257318
#for i in 257491 257145 257142 
#do

#####LHC16l#####
#for i in 259888 259868 259867 259866 259860 259842 259841 259822 259788 259781 259756 259752 259751 259750 259748 259747 259711 259704 259703 259697 259668 259650 259649 259477 259473 259396 259395 259394 259389 259388 259382 259378 259342 259341 259340 259339 259336 259334 259307 259305 259302 259274 259273 259272 259271 259270 259269 259263 259164 259118 259117 259099 259096 259091 259090 259088 258964 258962 258923 258919 259381 259086 260014 260011 260010 259979 259961 259954 259792 259471 259470 259469 259379 258931 258926 258921 258920 258890 258889 258886 258885 258884 258883
#for i in 259668 259650 259649 259477 259473 259396 259395 259394 259389 259388 259382 259378 259342 259341 259340 259339 259336 259334 259307 259305 259302 259274 259273 259272 259271 259270 259269 259263 259164 259118 259117 259099 259096 259091 259090 259088 258964 258962 258923 258919 259381 259086 260014 260011 260010 259979 259961 259954 259792 259471 259470 259469 259379 258931 258926 258921 258920 258890 258889 258886 258885 258884 258883
#do


#####LHC16o#####
#for i in 263985 263984 263981 263979 263978 263977 263923 263922 263917 263916 263905 263866 263863 263861 263830 263829 263824 263823 263814 263813 263803 263793 263792 263790 263789 263787 263786 263785 263784 263744 263743 263741 263739 263738 263737 263691 263690 263689 263682 263663 263662 263657 263654 263653 263652 263648 263647 263529 263496 263487 263332 263331 262858 262853 262849 262844 262841 262778 262777 262776 262768 262760 262734 262728 262727 262723 262719 262717 262716 262713 262712 262708 262706 262705 262635 262632 262628 262624 262594 262593 262583 262574 262572 262571 262570 262569 262568 262567 262563 262533 262532 262528 262492 262451 262450 262430 262429 262428 262427 262426 262425 262424 262423 262422 262419 262418 262399 262398 262397 262396 262395
#do

#####LHC16q#####
#for i in 265309 #265334 265335 265336 265338 265339 265342 265343 265344 265378 265383 265384 265387 265388 265419 265420 265421 265422 265424 265425 265426 265427 265432 265435 265499 265500 265501 265521 265525 265305 265308 265331 265432 265433 
#do

#####LHC16r#####
#for i in 266318 266317 266316 266208 266197 266196 266187 265744 266313 266312 266304 266299 266296 266235 266234 266193 266189 266117 266086 266085 266084 266083 266081 266034 266025 266023 266022 265841 265840 265838 265797 265795 265792 265789 265788 265787 265785 265756 265742 265741 265740 265739 265714 265713 265709 265705 265701 265700 265698 265697 265696 265694 265669 265665 265658 265656 265632 265630 
#do
#for i in 266318 266317 266316 266208 266197 266196 266187 265744 266304 266299 266296 266193 266189 266117 266086 266085 266084 266083 266081 266034 265797 265795 265789 265788 265756 265742 265741 265714 265713 265709 265705 265701 265700 265698 265697 265696 265669 265665 265658 265656 265632 265630
#do
#for i in 265742 266299
#do

#####LHC16s##### 
#for i in 267110 267081 267077 267072 267070 266998 266997 266994 266993 266944 266886 266885 266883 266882 266437 267131 267130 267109 267067 267062 267061 267060 267020 266988 266943 266942 266940 266915 266912 266881 266880 266878 266857 266808 266807 266805 266800 266775 266708 266706 266703 266702 266700 266669 266668 266665 266659 266658 266657 266630 266628 266625 266621 266619 266618 266617 266615 266614 266596 266595 266592 266591 266590 266588 266587 266585 266584 266549 266543 266539 266534 266526 266525 266523 266522 266520 266518 266516 266514 266480 266479 266477 266472 266470 266441 266439 266438 266405 266776
#for i in 267110 267081 267077 267072 267070 266998 266997 266994 266993 266944 266886 266885 266883 266882 266437 
#for i in 266881 266549 266543 266441 266439 266438 266405
#do

#####LHC16t#####
#for i in 267163 267164 267165 267166 267161 
#do

inFILE="alien:///alice/data/$YEAR/$PERIOD/000"${i}"/$PASS/PWGPP/PP_EMCAL_Calibration/$TRAIN$TIME/AnalysisResults.root"
echo  - - - - - - - - - - - - - - 
echo  start copying run $i
echo  $inFILE

outputFILE="file:"${i}".root"
echo $outputFILE

alien_cp $inFILE $outputFILE

done
#- - - - - - - Loop - - - - - - - - - - - -

cd $BASEDIR
echo ===========================

