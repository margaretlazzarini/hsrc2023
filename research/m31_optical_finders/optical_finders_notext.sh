#!/bin/bash
unset XPA_METHOD

# set path to directory with images
path=.

# set zoom
zoom="to 2.5"

# start DS9 with window size 840 x 1080 and switch off the colorbar
ds9 -geometry 500x750 -view colorbar no &

sleep 10
# get window id
myvar=`xpaaccess -vn ds9`
id=`perl -e "print substr('${myvar}',length('${myvar}')-14)"`

# create new rgb frame
xpaset -p $id rgb 

# adjust zoom
xpaset -p $id zoom $zoom

# load rgb images and pan to sources
xpaset -p $id rgb blue 
xpaset -p $id file /astro/store/phat/ben/Brickwide/B01sing/M31-B01_F475W_drz.fits
xpaset -p $id scale limits 0.0 37.0
xpaset -p $id scale log
xpaset -p $id cmap value 4.7 0.5
xpaset -p $id rgb green
xpaset -p $id file /astro/store/phat/ben/Brickwide/B01sing/M31-B01_F814W_drz.fits
xpaset -p $id scale limits 0.0 180.
xpaset -p $id scale log
xpaset -p $id cmap value 3.1 0.5
xpaset -p $id rgb red
xpaset -p $id file /astro/store/phat/ben/Brickwide/B01sing/M31-B01_F160W_drz.fits
xpaset -p $id scale limits 0.0 400.
xpaset -p $id scale log
xpaset -p $id cmap value 3 0.5
xpaset -p $id regions delete all
xpaset -p $id regions load /astro/users/mlazz/Documents/ChandraPHAT/CreateFinders/NUSTAR_FieldA/chandra_total_notext.reg

xpaset -p $id pan to 10.78594795 41.2134482 wcs
xpaset -p $id print destination file
xpaset -p $id print filename ObsA-S9-B01.ps
xpaset -p $id print palette cmyk
xpaset -p $id print level 2
xpaset -p $id print resolution 150
xpaset -p $id print command '{gv -}'
xpaset -p $id print

xpaset -p $id pan to 10.79424839 41.2475989 wcs
xpaset -p $id print destination file
xpaset -p $id print filename ObsA-S18-B01.ps
xpaset -p $id print palette cmyk
xpaset -p $id print level 2
xpaset -p $id print resolution 150
xpaset -p $id print command '{gv -}'
xpaset -p $id print

xpaset -p $id pan to 10.58732922 41.25577262 wcs
xpaset -p $id print destination file
xpaset -p $id print filename ObsA-S22-B01.ps
xpaset -p $id print palette cmyk
xpaset -p $id print level 2
xpaset -p $id print resolution 150
xpaset -p $id print command '{gv -}'
xpaset -p $id print

xpaset -p $id pan to 10.76228425 41.25626321 wcs
xpaset -p $id print destination file
xpaset -p $id print filename ObsA-S23-B01.ps
xpaset -p $id print palette cmyk
xpaset -p $id print level 2
xpaset -p $id print resolution 150
xpaset -p $id print command '{gv -}'
xpaset -p $id print

xpaset -p $id pan to 10.70233171 41.25588931 wcs
xpaset -p $id print destination file
xpaset -p $id print filename ObsA-S24-B01.ps
xpaset -p $id print palette cmyk
xpaset -p $id print level 2
xpaset -p $id print resolution 150
xpaset -p $id print command '{gv -}'
xpaset -p $id print

xpaset -p $id pan to 10.76347209 41.25767714 wcs
xpaset -p $id print destination file
xpaset -p $id print filename ObsA-S25-B01.ps
xpaset -p $id print palette cmyk
xpaset -p $id print level 2
xpaset -p $id print resolution 150
xpaset -p $id print command '{gv -}'
xpaset -p $id print

xpaset -p $id pan to 10.69255208 41.26208553 wcs
xpaset -p $id print destination file
xpaset -p $id print filename ObsA-S29-B01.ps
xpaset -p $id print palette cmyk
xpaset -p $id print level 2
xpaset -p $id print resolution 150
xpaset -p $id print command '{gv -}'
xpaset -p $id print

xpaset -p $id pan to 10.839501 41.26580499 wcs
xpaset -p $id print destination file
xpaset -p $id print filename ObsA-S31-B01.ps
xpaset -p $id print palette cmyk
xpaset -p $id print level 2
xpaset -p $id print resolution 150
xpaset -p $id print command '{gv -}'
xpaset -p $id print

xpaset -p $id pan to 10.72890308 41.26754429 wcs
xpaset -p $id print destination file
xpaset -p $id print filename ObsA-S33-B01.ps
xpaset -p $id print palette cmyk
xpaset -p $id print level 2
xpaset -p $id print resolution 150
xpaset -p $id print command '{gv -}'
xpaset -p $id print

xpaset -p $id pan to 10.74952452 41.26822491 wcs
xpaset -p $id print destination file
xpaset -p $id print filename ObsA-S34-B01.ps
xpaset -p $id print palette cmyk
xpaset -p $id print level 2
xpaset -p $id print resolution 150
xpaset -p $id print command '{gv -}'
xpaset -p $id print

xpaset -p $id pan to 10.68449829 41.26886776 wcs
xpaset -p $id print destination file
xpaset -p $id print filename ObsA-S35-B01.ps
xpaset -p $id print palette cmyk
xpaset -p $id print level 2
xpaset -p $id print resolution 150
xpaset -p $id print command '{gv -}'
xpaset -p $id print

xpaset -p $id pan to 10.69573733 41.27101896 wcs
xpaset -p $id print destination file
xpaset -p $id print filename ObsA-S36-B01.ps
xpaset -p $id print palette cmyk
xpaset -p $id print level 2
xpaset -p $id print resolution 150
xpaset -p $id print command '{gv -}'
xpaset -p $id print

xpaset -p $id pan to 10.69660807 41.27454172 wcs
xpaset -p $id print destination file
xpaset -p $id print filename ObsA-S38-B01.ps
xpaset -p $id print palette cmyk
xpaset -p $id print level 2
xpaset -p $id print resolution 150
xpaset -p $id print command '{gv -}'
xpaset -p $id print

xpaset -p $id pan to 10.68253806 41.27537121 wcs
xpaset -p $id print destination file
xpaset -p $id print filename ObsA-S39-B01.ps
xpaset -p $id print palette cmyk
xpaset -p $id print level 2
xpaset -p $id print resolution 150
xpaset -p $id print command '{gv -}'
xpaset -p $id print

xpaset -p $id pan to 10.80783515 41.2866154 wcs
xpaset -p $id print destination file
xpaset -p $id print filename ObsA-S46-B01.ps
xpaset -p $id print palette cmyk
xpaset -p $id print level 2
xpaset -p $id print resolution 150
xpaset -p $id print command '{gv -}'
xpaset -p $id print

xpaset -p $id pan to 10.7661244 41.30133595 wcs
xpaset -p $id print destination file
xpaset -p $id print filename ObsA-S54-B01.ps
xpaset -p $id print palette cmyk
xpaset -p $id print level 2
xpaset -p $id print resolution 150
xpaset -p $id print command '{gv -}'
xpaset -p $id print

xpaset -p $id pan to 10.70508975 41.30439475 wcs
xpaset -p $id print destination file
xpaset -p $id print filename ObsA-S57-B01.ps
xpaset -p $id print palette cmyk
xpaset -p $id print level 2
xpaset -p $id print resolution 150
xpaset -p $id print command '{gv -}'
xpaset -p $id print

xpaset -p $id pan to 10.73170847 41.30967621 wcs
xpaset -p $id print destination file
xpaset -p $id print filename ObsA-S60-B01.ps
xpaset -p $id print palette cmyk
xpaset -p $id print level 2
xpaset -p $id print resolution 150
xpaset -p $id print command '{gv -}'
xpaset -p $id print

xpaset -p $id pan to 10.72996359 41.30992213 wcs
xpaset -p $id print destination file
xpaset -p $id print filename ObsA-S61-B01.ps
xpaset -p $id print palette cmyk
xpaset -p $id print level 2
xpaset -p $id print resolution 150
xpaset -p $id print command '{gv -}'
xpaset -p $id print

xpaset -p $id pan to 10.66797902 41.31268194 wcs
xpaset -p $id print destination file
xpaset -p $id print filename ObsA-S63-B01.ps
xpaset -p $id print palette cmyk
xpaset -p $id print level 2
xpaset -p $id print resolution 150
xpaset -p $id print command '{gv -}'
xpaset -p $id print

xpaset -p $id pan to 10.7188881 41.31508239 wcs
xpaset -p $id print destination file
xpaset -p $id print filename ObsA-S66-B01.ps
xpaset -p $id print palette cmyk
xpaset -p $id print level 2
xpaset -p $id print resolution 150
xpaset -p $id print command '{gv -}'
xpaset -p $id print

xpaset -p $id pan to 10.64668734 41.33478159 wcs
xpaset -p $id print destination file
xpaset -p $id print filename ObsA-S74-B01.ps
xpaset -p $id print palette cmyk
xpaset -p $id print level 2
xpaset -p $id print resolution 150
xpaset -p $id print command '{gv -}'
xpaset -p $id print

xpaset -p $id pan to 10.76770624 41.26696658 wcs
xpaset -p $id print destination file
xpaset -p $id print filename ObsA-S89-B01.ps
xpaset -p $id print palette cmyk
xpaset -p $id print level 2
xpaset -p $id print resolution 150
xpaset -p $id print command '{gv -}'
xpaset -p $id print

xpaset -p $id pan to 10.63029198 41.32714064 wcs
xpaset -p $id print destination file
xpaset -p $id print filename ObsA-S91-B01.ps
xpaset -p $id print palette cmyk
xpaset -p $id print level 2
xpaset -p $id print resolution 150
xpaset -p $id print command '{gv -}'
xpaset -p $id print

xpaset -p $id rgb blue 
xpaset -p $id file /astro/store/phat/ben/Brickwide/B02sing/M31-B02_F475W_drz.fits
xpaset -p $id scale limits 0 5.0
xpaset -p $id scale log
xpaset -p $id cmap value 4.7 0.4
xpaset -p $id rgb green
xpaset -p $id file /astro/store/phat/ben/Brickwide/B02sing/M31-B02_F814W_drz.fits
xpaset -p $id scale limits 0 15
xpaset -p $id scale log
xpaset -p $id cmap value 3.1 0.4
xpaset -p $id rgb red
xpaset -p $id file /astro/store/phat/ben/Brickwide/B02sing/M31-B02_F160W_drz.fits
xpaset -p $id scale limits 0.0 15.0
xpaset -p $id scale log
xpaset -p $id cmap value 2.5 0.5
xpaset -p $id regions delete all
xpaset -p $id regions load /astro/users/mlazz/Documents/ChandraPHAT/CreateFinders/NUSTAR_FieldA/chandra_total_notext.reg

xpaset -p $id pan to 10.88495066 41.17813605 wcs
xpaset -p $id print destination file
xpaset -p $id print filename ObsA-S4-B02.ps
xpaset -p $id print palette cmyk
xpaset -p $id print level 2
xpaset -p $id print resolution 150
xpaset -p $id print command '{gv -}'
xpaset -p $id print

xpaset -p $id pan to 10.89306448 41.22318693 wcs
xpaset -p $id print destination file
xpaset -p $id print filename ObsA-S13-B02.ps
xpaset -p $id print palette cmyk
xpaset -p $id print level 2
xpaset -p $id print resolution 150
xpaset -p $id print command '{gv -}'
xpaset -p $id print

xpaset -p $id pan to 10.89963489 41.24259968 wcs
xpaset -p $id print destination file
xpaset -p $id print filename ObsA-S16-B02.ps
xpaset -p $id print palette cmyk
xpaset -p $id print level 2
xpaset -p $id print resolution 150
xpaset -p $id print command '{gv -}'
xpaset -p $id print

xpaset -p $id pan to 10.90532231 41.24542365 wcs
xpaset -p $id print destination file
xpaset -p $id print filename ObsA-S17-B02.ps
xpaset -p $id print palette cmyk
xpaset -p $id print level 2
xpaset -p $id print resolution 150
xpaset -p $id print command '{gv -}'
xpaset -p $id print

xpaset -p $id pan to 10.94097621 41.20112814 wcs
xpaset -p $id print destination file
xpaset -p $id print filename ObsA-S101-B02.ps
xpaset -p $id print palette cmyk
xpaset -p $id print level 2
xpaset -p $id print resolution 150
xpaset -p $id print command '{gv -}'
xpaset -p $id print

xpaset -p $id rgb blue 
xpaset -p $id file /astro/store/phat/ben/Brickwide/B03sing/M31-B03_F475W_drz.fits
xpaset -p $id scale limits 0 15.0
xpaset -p $id scale log
xpaset -p $id cmap value 4.7 0.4
xpaset -p $id rgb green
xpaset -p $id file /astro/store/phat/ben/Brickwide/B03sing/M31-B03_F814W_drz.fits
xpaset -p $id scale limits 0 50
xpaset -p $id scale log
xpaset -p $id cmap value 3.1 0.4
xpaset -p $id rgb red
xpaset -p $id file /astro/store/phat/ben/Brickwide/B03sing/M31-B03_F160W_drz.fits
xpaset -p $id scale limits 0.0 81
xpaset -p $id scale log
xpaset -p $id cmap value 2.5 0.5
xpaset -p $id regions delete all
xpaset -p $id regions load /astro/users/mlazz/Documents/ChandraPHAT/CreateFinders/NUSTAR_FieldA/chandra_total_notext.reg

xpaset -p $id pan to 10.9127366975 41.3548849549 wcs
xpaset -p $id print destination file
xpaset -p $id print filename Obs17008-S36-B03.ps
xpaset -p $id print palette cmyk
xpaset -p $id print level 2
xpaset -p $id print resolution 150
xpaset -p $id print command '{gv -}'
xpaset -p $id print

xpaset -p $id pan to 10.85350854 41.29091655 wcs
xpaset -p $id print destination file
xpaset -p $id print filename ObsA-S48-B03.ps
xpaset -p $id print palette cmyk
xpaset -p $id print level 2
xpaset -p $id print resolution 150
xpaset -p $id print command '{gv -}'
xpaset -p $id print

xpaset -p $id pan to 10.83781533 41.29738856 wcs
xpaset -p $id print destination file
xpaset -p $id print filename ObsA-S52-B03.ps
xpaset -p $id print palette cmyk
xpaset -p $id print level 2
xpaset -p $id print resolution 150
xpaset -p $id print command '{gv -}'
xpaset -p $id print

xpaset -p $id pan to 10.79738901 41.30267485 wcs
xpaset -p $id print destination file
xpaset -p $id print filename ObsA-S55-B03.ps
xpaset -p $id print palette cmyk
xpaset -p $id print level 2
xpaset -p $id print resolution 150
xpaset -p $id print command '{gv -}'
xpaset -p $id print

xpaset -p $id pan to 10.81711505 41.31154282 wcs
xpaset -p $id print destination file
xpaset -p $id print filename ObsA-S62-B03.ps
xpaset -p $id print palette cmyk
xpaset -p $id print level 2
xpaset -p $id print resolution 150
xpaset -p $id print command '{gv -}'
xpaset -p $id print

xpaset -p $id pan to 10.85971842 41.31993956 wcs
xpaset -p $id print destination file
xpaset -p $id print filename ObsA-S69-B03.ps
xpaset -p $id print palette cmyk
xpaset -p $id print level 2
xpaset -p $id print resolution 150
xpaset -p $id print command '{gv -}'
xpaset -p $id print

xpaset -p $id pan to 10.74857852 41.32202082 wcs
xpaset -p $id print destination file
xpaset -p $id print filename ObsA-S70-B03.ps
xpaset -p $id print palette cmyk
xpaset -p $id print level 2
xpaset -p $id print resolution 150
xpaset -p $id print command '{gv -}'
xpaset -p $id print

xpaset -p $id pan to 10.78131514 41.33880561 wcs
xpaset -p $id print destination file
xpaset -p $id print filename ObsA-S76-B03.ps
xpaset -p $id print palette cmyk
xpaset -p $id print level 2
xpaset -p $id print resolution 150
xpaset -p $id print command '{gv -}'
xpaset -p $id print

xpaset -p $id pan to 10.76262117 41.34498255 wcs
xpaset -p $id print destination file
xpaset -p $id print filename ObsA-S77-B03.ps
xpaset -p $id print palette cmyk
xpaset -p $id print level 2
xpaset -p $id print resolution 150
xpaset -p $id print command '{gv -}'
xpaset -p $id print

xpaset -p $id pan to 10.76371346 41.35606975 wcs
xpaset -p $id print destination file
xpaset -p $id print filename ObsA-S82-B03.ps
xpaset -p $id print palette cmyk
xpaset -p $id print level 2
xpaset -p $id print resolution 150
xpaset -p $id print command '{gv -}'
xpaset -p $id print

xpaset -p $id rgb blue 
xpaset -p $id file /astro/store/phat/ben/Brickwide/B04sing/M31-B04_F475W_drz.fits
xpaset -p $id scale limits 0 5.0
xpaset -p $id scale log
xpaset -p $id cmap value 4.7 0.4
xpaset -p $id rgb green
xpaset -p $id file /astro/store/phat/ben/Brickwide/B04sing/M31-B04_F814W_drz.fits
xpaset -p $id scale limits 0 15
xpaset -p $id scale log
xpaset -p $id cmap value 3.1 0.4
xpaset -p $id rgb red
xpaset -p $id file /astro/store/phat/ben/Brickwide/B04sing/M31-B04_F160W_drz.fits
xpaset -p $id scale limits 0.0 15.0
xpaset -p $id scale log
xpaset -p $id cmap value 2.5 0.5
xpaset -p $id regions delete all
xpaset -p $id regions load /astro/users/mlazz/Documents/ChandraPHAT/CreateFinders/NUSTAR_FieldA/chandra_total_notext.reg

xpaset -p $id pan to 10.9735255718 41.2820444582 wcs
xpaset -p $id print destination file
xpaset -p $id print filename Obs17008-S01-B04.ps
xpaset -p $id print palette cmyk
xpaset -p $id print level 2
xpaset -p $id print resolution 150
xpaset -p $id print command '{gv -}'
xpaset -p $id print

xpaset -p $id pan to 10.96151607 41.3550329061 wcs
xpaset -p $id print destination file
xpaset -p $id print filename Obs17008-S03-B04.ps
xpaset -p $id print palette cmyk
xpaset -p $id print level 2
xpaset -p $id print resolution 150
xpaset -p $id print command '{gv -}'
xpaset -p $id print

xpaset -p $id pan to 11.0113218764 41.2866598279 wcs
xpaset -p $id print destination file
xpaset -p $id print filename Obs17008-S11-B04.ps
xpaset -p $id print palette cmyk
xpaset -p $id print level 2
xpaset -p $id print resolution 150
xpaset -p $id print command '{gv -}'
xpaset -p $id print

xpaset -p $id rgb blue 
xpaset -p $id file /astro/store/phat/ben/Brickwide/B05sing/M31-B05_F475W_drz.fits
xpaset -p $id scale limits 0 5.0
xpaset -p $id scale log
xpaset -p $id cmap value 4.7 0.4
xpaset -p $id rgb green
xpaset -p $id file /astro/store/phat/ben/Brickwide/B05sing/M31-B05_F814W_drz.fits
xpaset -p $id scale limits 0 15
xpaset -p $id scale log
xpaset -p $id cmap value 3.1 0.4
xpaset -p $id rgb red
xpaset -p $id file /astro/store/phat/ben/Brickwide/B05sing/M31-B05_F160W_drz.fits
xpaset -p $id scale limits 0.0 15.0
xpaset -p $id scale log
xpaset -p $id cmap value 2.5 0.5
xpaset -p $id regions delete all
xpaset -p $id regions load /astro/users/mlazz/Documents/ChandraPHAT/CreateFinders/NUSTAR_FieldA/chandra_total_notext.reg

xpaset -p $id pan to 10.9851257456 41.3675033399 wcs
xpaset -p $id print destination file
xpaset -p $id print filename Obs17008-S14-B05.ps
xpaset -p $id print palette cmyk
xpaset -p $id print level 2
xpaset -p $id print resolution 150
xpaset -p $id print command '{gv -}'
xpaset -p $id print

xpaset -p $id rgb blue 
xpaset -p $id file /astro/store/phat/ben/Brickwide/B06sing/M31-B06_F475W_drz.fits
xpaset -p $id scale limits 0 5.0
xpaset -p $id scale log
xpaset -p $id cmap value 4.7 0.4
xpaset -p $id rgb green
xpaset -p $id file /astro/store/phat/ben/Brickwide/B06sing/M31-B06_F814W_drz.fits
xpaset -p $id scale limits 0 15
xpaset -p $id scale log
xpaset -p $id cmap value 3.1 0.4
xpaset -p $id rgb red
xpaset -p $id file /astro/store/phat/ben/Brickwide/B06sing/M31-B06_F160W_drz.fits
xpaset -p $id scale limits 0.0 15.0
xpaset -p $id scale log
xpaset -p $id cmap value 2.5 0.5
xpaset -p $id regions delete all
xpaset -p $id regions load /astro/users/mlazz/Documents/ChandraPHAT/CreateFinders/NUSTAR_FieldA/chandra_total_notext.reg

xpaset -p $id pan to 11.1545044744 41.3310236402 wcs
xpaset -p $id print destination file
xpaset -p $id print filename Obs17008-S02-B06.ps
xpaset -p $id print palette cmyk
xpaset -p $id print level 2
xpaset -p $id print resolution 150
xpaset -p $id print command '{gv -}'
xpaset -p $id print

xpaset -p $id pan to 11.0197992341 41.3575596632 wcs
xpaset -p $id print destination file
xpaset -p $id print filename Obs17008-S04-B06.ps
xpaset -p $id print palette cmyk
xpaset -p $id print level 2
xpaset -p $id print resolution 150
xpaset -p $id print command '{gv -}'
xpaset -p $id print

xpaset -p $id pan to 11.1232025845 41.3599132051 wcs
xpaset -p $id print destination file
xpaset -p $id print filename Obs17008-S05-B06.ps
xpaset -p $id print palette cmyk
xpaset -p $id print level 2
xpaset -p $id print resolution 150
xpaset -p $id print command '{gv -}'
xpaset -p $id print

xpaset -p $id pan to 11.1072212892 41.3784424895 wcs
xpaset -p $id print destination file
xpaset -p $id print filename Obs17008-S06-B06.ps
xpaset -p $id print palette cmyk
xpaset -p $id print level 2
xpaset -p $id print resolution 150
xpaset -p $id print command '{gv -}'
xpaset -p $id print

xpaset -p $id pan to 11.123877765 41.3827706381 wcs
xpaset -p $id print destination file
xpaset -p $id print filename Obs17008-S07-B06.ps
xpaset -p $id print palette cmyk
xpaset -p $id print level 2
xpaset -p $id print resolution 150
xpaset -p $id print command '{gv -}'
xpaset -p $id print

xpaset -p $id pan to 11.1269011363 41.3862998891 wcs
xpaset -p $id print destination file
xpaset -p $id print filename Obs17008-S08-B06.ps
xpaset -p $id print palette cmyk
xpaset -p $id print level 2
xpaset -p $id print resolution 150
xpaset -p $id print command '{gv -}'
xpaset -p $id print

xpaset -p $id pan to 11.2005453837 41.3799733228 wcs
xpaset -p $id print destination file
xpaset -p $id print filename Obs17008-S15-B06.ps
xpaset -p $id print palette cmyk
xpaset -p $id print level 2
xpaset -p $id print resolution 150
xpaset -p $id print command '{gv -}'
xpaset -p $id print

xpaset -p $id pan to 11.2391147779 41.3800935844 wcs
xpaset -p $id print destination file
xpaset -p $id print filename Obs17008-S16-B06.ps
xpaset -p $id print palette cmyk
xpaset -p $id print level 2
xpaset -p $id print resolution 150
xpaset -p $id print command '{gv -}'
xpaset -p $id print

xpaset -p $id pan to 11.1256941509 41.3838022079 wcs
xpaset -p $id print destination file
xpaset -p $id print filename Obs17008-S18-B06.ps
xpaset -p $id print palette cmyk
xpaset -p $id print level 2
xpaset -p $id print resolution 150
xpaset -p $id print command '{gv -}'
xpaset -p $id print

xpaset -p $id rgb blue 
xpaset -p $id file /astro/store/phat/ben/Brickwide/B07sing/M31-B07_F475W_drz.fits
xpaset -p $id scale limits 0 5.0
xpaset -p $id scale log
xpaset -p $id cmap value 4.7 0.4
xpaset -p $id rgb green
xpaset -p $id file /astro/store/phat/ben/Brickwide/B07sing/M31-B07_F814W_drz.fits
xpaset -p $id scale limits 0 15
xpaset -p $id scale log
xpaset -p $id cmap value 3.1 0.4
xpaset -p $id rgb red
xpaset -p $id file /astro/store/phat/ben/Brickwide/B07sing/M31-B07_F160W_drz.fits
xpaset -p $id scale limits 0.0 15.0
xpaset -p $id scale log
xpaset -p $id cmap value 2.5 0.5
xpaset -p $id regions delete all
xpaset -p $id regions load /astro/users/mlazz/Documents/ChandraPHAT/CreateFinders/NUSTAR_FieldA/chandra_total_notext.reg

xpaset -p $id pan to 11.066667073 41.5161468796 wcs
xpaset -p $id print destination file
xpaset -p $id print filename Obs17009-S01-B07.ps
xpaset -p $id print palette cmyk
xpaset -p $id print level 2
xpaset -p $id print resolution 150
xpaset -p $id print command '{gv -}'
xpaset -p $id print

xpaset -p $id rgb blue 
xpaset -p $id file /astro/store/phat/ben/Brickwide/B08sing/M31-B08_F475W_drz.fits
xpaset -p $id scale limits 0 5.0
xpaset -p $id scale log
xpaset -p $id cmap value 4.7 0.4
xpaset -p $id rgb green
xpaset -p $id file /astro/store/phat/ben/Brickwide/B08sing/M31-B08_F814W_drz.fits
xpaset -p $id scale limits 0 15
xpaset -p $id scale log
xpaset -p $id cmap value 3.1 0.4
xpaset -p $id rgb red
xpaset -p $id file /astro/store/phat/ben/Brickwide/B08sing/M31-B08_F160W_drz.fits
xpaset -p $id scale limits 0.0 15.0
xpaset -p $id scale log
xpaset -p $id cmap value 2.5 0.5
xpaset -p $id regions delete all
xpaset -p $id regions load /astro/users/mlazz/Documents/ChandraPHAT/CreateFinders/NUSTAR_FieldA/chandra_total_notext.reg

xpaset -p $id rgb blue 
xpaset -p $id file /astro/store/phat/ben/Brickwide/B10sing/M31-B10_F475W_drz.fits
xpaset -p $id scale limits 0 5.0
xpaset -p $id scale log
xpaset -p $id cmap value 4.7 0.4
xpaset -p $id rgb green
xpaset -p $id file /astro/store/phat/ben/Brickwide/B10sing/M31-B10_F814W_drz.fits
xpaset -p $id scale limits 0 15
xpaset -p $id scale log
xpaset -p $id cmap value 3.1 0.4
xpaset -p $id rgb red
xpaset -p $id file /astro/store/phat/ben/Brickwide/B10sing/M31-B10_F160W_drz.fits
xpaset -p $id scale limits 0.0 15.0
xpaset -p $id scale log
xpaset -p $id cmap value 2.5 0.5
xpaset -p $id regions delete all
xpaset -p $id regions load /astro/users/mlazz/Documents/ChandraPHAT/CreateFinders/NUSTAR_FieldA/chandra_total_notext.reg

xpaset -p $id pan to 11.367681121 41.4955384175 wcs
xpaset -p $id print destination file
xpaset -p $id print filename Obs17010-S02-B10.ps
xpaset -p $id print palette cmyk
xpaset -p $id print level 2
xpaset -p $id print resolution 150
xpaset -p $id print command '{gv -}'
xpaset -p $id print

xpaset -p $id pan to 11.3637426503 41.5483627619 wcs
xpaset -p $id print destination file
xpaset -p $id print filename Obs17010-S03-B10.ps
xpaset -p $id print palette cmyk
xpaset -p $id print level 2
xpaset -p $id print resolution 150
xpaset -p $id print command '{gv -}'
xpaset -p $id print

xpaset -p $id pan to 11.2311667393 41.5780798816 wcs
xpaset -p $id print destination file
xpaset -p $id print filename Obs17010-S04-B10.ps
xpaset -p $id print palette cmyk
xpaset -p $id print level 2
xpaset -p $id print resolution 150
xpaset -p $id print command '{gv -}'
xpaset -p $id print

xpaset -p $id pan to 11.3617287769 41.538161173 wcs
xpaset -p $id print destination file
xpaset -p $id print filename Obs17010-S17-B10.ps
xpaset -p $id print palette cmyk
xpaset -p $id print level 2
xpaset -p $id print resolution 150
xpaset -p $id print command '{gv -}'
xpaset -p $id print

xpaset -p $id rgb blue 
xpaset -p $id file /astro/store/phat/ben/Brickwide/B12sing/M31-B12_F475W_drz.fits
xpaset -p $id scale limits 0 5.0
xpaset -p $id scale log
xpaset -p $id cmap value 4.7 0.4
xpaset -p $id rgb green
xpaset -p $id file /astro/store/phat/ben/Brickwide/B12sing/M31-B12_F814W_drz.fits
xpaset -p $id scale limits 0 15
xpaset -p $id scale log
xpaset -p $id cmap value 3.1 0.4
xpaset -p $id rgb red
xpaset -p $id file /astro/store/phat/ben/Brickwide/B12sing/M31-B12_F160W_drz.fits
xpaset -p $id scale limits 0.0 15.0
xpaset -p $id scale log
xpaset -p $id cmap value 2.5 0.5
xpaset -p $id regions delete all
xpaset -p $id regions load /astro/users/mlazz/Documents/ChandraPHAT/CreateFinders/NUSTAR_FieldA/chandra_total_notext.reg

xpaset -p $id pan to 11.377557081 41.6001347973 wcs
xpaset -p $id print destination file
xpaset -p $id print filename Obs17010-S37-B12.ps
xpaset -p $id print palette cmyk
xpaset -p $id print level 2
xpaset -p $id print resolution 150
xpaset -p $id print command '{gv -}'
xpaset -p $id print

xpaset -p $id pan to 11.4398671067 41.6617012832 wcs
xpaset -p $id print destination file
xpaset -p $id print filename Obs17011-S01-B12.ps
xpaset -p $id print palette cmyk
xpaset -p $id print level 2
xpaset -p $id print resolution 150
xpaset -p $id print command '{gv -}'
xpaset -p $id print

xpaset -p $id pan to 11.3661786397 41.6515387437 wcs
xpaset -p $id print destination file
xpaset -p $id print filename Obs17011-S11-B12.ps
xpaset -p $id print palette cmyk
xpaset -p $id print level 2
xpaset -p $id print resolution 150
xpaset -p $id print command '{gv -}'
xpaset -p $id print

xpaset -p $id pan to 11.3363161661 41.6591085182 wcs
xpaset -p $id print destination file
xpaset -p $id print filename Obs17011-S12-B12.ps
xpaset -p $id print palette cmyk
xpaset -p $id print level 2
xpaset -p $id print resolution 150
xpaset -p $id print command '{gv -}'
xpaset -p $id print

xpaset -p $id pan to 11.3265859049 41.6601796766 wcs
xpaset -p $id print destination file
xpaset -p $id print filename Obs17011-S13-B12.ps
xpaset -p $id print palette cmyk
xpaset -p $id print level 2
xpaset -p $id print resolution 150
xpaset -p $id print command '{gv -}'
xpaset -p $id print

xpaset -p $id pan to 11.3075242227 41.63532269 wcs
xpaset -p $id print destination file
xpaset -p $id print filename Obs17011-S26-B12.ps
xpaset -p $id print palette cmyk
xpaset -p $id print level 2
xpaset -p $id print resolution 150
xpaset -p $id print command '{gv -}'
xpaset -p $id print

xpaset -p $id pan to 11.3722302794 41.6311761202 wcs
xpaset -p $id print destination file
xpaset -p $id print filename Obs17011-S51-B12.ps
xpaset -p $id print palette cmyk
xpaset -p $id print level 2
xpaset -p $id print resolution 150
xpaset -p $id print command '{gv -}'
xpaset -p $id print

