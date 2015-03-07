# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


#id 1


ALL_USERS = [{lname:"Wozniacki", fname:"Caroline", gender:"F", username:"cwozniacki", password:"asdfasdf", email:"cwozniacki@gmail.com", level:"5.5+", area:"Peninsula", reveal_age:"Yes", birthday:"1990-07-11", picture:"http://www4.pictures.gi.zimbio.com/Caroline%2BWozniacki%2BPilot%2BPen%2BTennis%2BDay%2B5%2BslWAOH5d7mYl.jpg"},
  {lname:"Halep", fname:"Simona", gender:"F", username:"shalep", password:"asdfasdf", email:"shalep@gmail.com", area:"San Francisco", reveal_age:"Yes", birthday:"1991-09-27", picture:"http://www.10sballs.com/wordpress/wp-content/uploads/2014/06/h_51402714.jpg"},
  {lname:"Ivanovic", fname:"Ana", gender:"F", username:"aivanovic", password:"asdfasdf", email:"aivanovic@gmail.com", level:"5.5+", area:"Diablo North", reveal_age:"Yes", birthday:"1987-11-06", picture:"http://images.smh.com.au/ftsmh/ffximage/2009/03/29/anaivanovic_wideweb__470x323,0.jpg"},
  {lname:"Kvitova", fname:"Petra", gender:"F", username:"pkvitova", password:"asdfasdf", email:"pkvitova@gmail.com", level:"5.5+", area:"Diablo North", reveal_age:"Yes", birthday:"1990-03-08", picture:"http://www2.pictures.zimbio.com/gi/Petra%2BKvitova%2BOlympics%2BDay%2B1%2BTennis%2BuGsNbL89GyRl.jpg"},
  {lname:"Radwanska", fname:"Agnieszka", gender:"F", username:"aradwanska", password:"asdfasdf", email:"aradwanska@gmail.com", level:"5.5+", area:"Peninsula", reveal_age:"Yes", birthday:"1989-03-06", picture:"http://images.sportinglife.com/13/06/800x600/agnieszka-radwanska-french-open-tennis_2953921.jpg"},
  {lname:"Bouchard", fname:"Eugenie", gender:"F", username:"ebouchard", password:"asdfasdf", email:"ebouchard@gmail.com", level:"5.5+", area:"East Bay", reveal_age:"Yes", birthday:"1994-02-25", picture:"http://www.livetennisguide.com/wp-content/uploads/Eugenie-Bouchard4.jpg"},
  {lname:"Sharapova", fname:"Maria", gender:"F", username:"msharapova", password:"asdfasdf", email:"msharapova@gmail.com", area:"Diablo North", reveal_age:"Yes", birthday:"1987-04-19", picture:"http://topnews.in/files/Maria-Sharapova_3.jpg"},
  {lname:"Petkovic", fname:"Andrea", gender:"F", username:"apetkovic", password:"asdfasdf", email:"apetkovic@gmail.com", level:"5.5+", area:"Peninsula", reveal_age:"Yes", birthday:"1987-09-09", picture:"https://dedeporsche.files.wordpress.com/2012/03/t12_0085_fine.jpg"},
  {lname:"Kerber", fname:"Angelique", gender:"F", username:"akerber", password:"asdfasdf", email:"akerber@gmail.com", level:"5.5+", area:"Diablo South", reveal_age:"Yes", birthday:"1988-01-18", picture:"http://cdn.images.express.co.uk/img/dynamic/72/285x214/330650_1.jpg"},
  {lname:"Makarova", fname:"Ekaterina", gender:"F", username:"emakarova", password:"asdfasdf", email:"emakarova@gmail.com", level:"5.5+", area:"Diablo North", reveal_age:"Yes", birthday:"1988-06-07", picture:"http://www.womenstennisblog.com/wp-content/uploads/2013/05/Ekaterina-Makarova.jpg"},
  {lname:"Pliskova", fname:"Karolina", gender:"F", username:"kpliskova", password:"asdfasdf", email:"kpliskova@gmail.com", level:"5.5+", area:"East Bay", reveal_age:"Yes", birthday:"1992-03-21", picture:"http://2.bp.blogspot.com/-hBWXgdGSh6U/VDl-kuIjA7I/AAAAAAACdUw/S4DQjA7qgQk/s1600/IMG%252B573547.jpg"},
  {lname:"Pennetta", fname:"Flavia", gender:"F", username:"fpennetta", password:"asdfasdf", email:"fpennetta@gmail.com", level:"5.5+", area:"San Francisco", reveal_age:"Yes", birthday:"1982-02-25", picture:"http://www.hititover.net/wp-content/uploads/2011/09/Pennetta.jpg"},
  {lname:"Cibulkova", fname:"Dominika", gender:"F", username:"dcibulkova", password:"asdfasdf", email:"dcibulkova@gmail.com", level:"5.0", area:"Diablo North", reveal_age:"Yes", birthday:"1989-05-06", picture:"http://static.foxsports.com/content/fscom/img/2014/01/21/012114-Tennis-Aussie-Open-Dominika-Cibulkova-PI-CH_20140121213837282_660_320.JPG"},
  {lname:"Williams", fname:"Venus", gender:"F", username:"vwilliams", password:"asdfasdf", email:"vwilliams@gmail.com", level:"5.5+", area:"South Bay", reveal_age:"Yes", birthday:"1980-06-17", picture:"http://cdn.sheknows.com/articles/2010/09/Venus_Williams_Fireworks.jpg"},
  {lname:"Errani", fname:"Sara", gender:"F", username:"serrani", password:"asdfasdf", email:"serrani@gmail.com", level:"5.5+", area:"East Bay", reveal_age:"Yes", birthday:"1987-04-29", picture:"http://www.nuovosoldo.it/wp-content/uploads/2013/03/errani33.jpg"},
  {lname:"Keys", fname:"Madison", gender:"F", username:"mkeys", password:"asdfasdf", email:"mkeys@gmail.com", level:"5.0", area:"South Bay", reveal_age:"Yes", birthday:"1995-02-17", picture:"http://binaryapi.ap.org/1f85f497c021473d839d9fd4b4f551bc/512x.jpg"},
  {lname:"Safarova", fname:"Lucie", gender:"F", username:"lsafarova", password:"asdfasdf", email:"lsafarova@gmail.com", level:"5.5+", area:"Diablo South", reveal_age:"Yes", birthday:"1987-02-04", picture:"http://www2.pictures.zimbio.com/gi/Lucie%2BSafarova%2BWTA%2BDubai%2BDuty%2BFree%2BTennis%2BWpi_EG1O2adl.jpg"},
  {lname:"Cornet", fname:"Alize", gender:"F", username:"acornet", password:"asdfasdf", email:"acornet@gmail.com", level:"5.0", area:"Peninsula", reveal_age:"Yes", birthday:"1990-01-22", picture:"http://www2.pictures.zimbio.com/gi/Alize%2BCornet%2BWimbledon%2BTennis%2BChampionships%2B8qUFK3-iEGzl.jpg"},
  {lname:"Jankovic", fname:"Jelena", gender:"F", username:"jjankovic", password:"asdfasdf", email:"jjankovic@gmail.com", level:"5.0", area:"Diablo North", reveal_age:"Yes", birthday:"1985-02-28", picture:"http://www.tennisserver.com/turbo/images/pilotpen05/waite/Jankovic1.jpg"},
  {lname:"Kuznetsova", fname:"Svetlana", gender:"F", username:"skuznetsova", password:"asdfasdf", email:"skuznetsova@gmail.com", level:"5.0", area:"Diablo South", reveal_age:"Yes", birthday:"1985-06-27", picture:"http://www4.pictures.zimbio.com/gi/Svetlana%2BKuznetsova%2BWTA%2BDubai%2BBarclays%2BTennis%2BeS7FEyCccX6l.jpg"},
  {lname:"Svitolina", fname:"Elina", gender:"F", username:"esvitolina", password:"asdfasdf", email:"esvitolina@gmail.com", level:"5.0", area:"Diablo South", reveal_age:"Yes", birthday:"1994-09-12", picture:"http://www3.pictures.zimbio.com/gi/Elina%2BSvitolina%2BUS%2BOpen%2BDay%2B4%2BH7Lb_r51voJl.jpg"},
  {lname:"Lisicki", fname:"Sabine", gender:"F", username:"slisicki", password:"asdfasdf", email:"slisicki@gmail.com", level:"5.0", area:"South Bay", reveal_age:"Yes", birthday:"1989-09-22", picture:"http://celebmafia.com/wp-content/uploads/2014/07/sabine-lisicki-wimbledon-tennis-championships-2014-4th-round_1.jpg"},
  {lname:"Garcia", fname:"Caroline", gender:"F", username:"cgarcia", password:"asdfasdf", email:"cgarcia@gmail.com", level:"5.0", area:"Solano", reveal_age:"Yes", birthday:"1993-10-16", picture:"http://static.foxsports.com/content/fscom/img/2011/05/26/052611-Tennis-Caroline-Garcia-YOUTH-GONE-WILD-JW-PI_20110526152555196_660_320.JPG"},
  {lname:"Diyas", fname:"Zarina", gender:"F", username:"zdiyas", password:"asdfasdf", email:"zdiyas@gmail.com", level:"5.0", area:"East Bay", reveal_age:"Yes", birthday:"1993-10-18", picture:"http://www2.pictures.zimbio.com/gi/Zarina%2BDiyas%2BKremlin%2BCup%2BDay%2BFour%2BoVKJ2qRaNeOl.jpg"},
  {lname:"Lepchenko", fname:"Varvara", gender:"F", username:"vlepchenko", password:"asdfasdf", email:"vlepchenko@gmail.com", level:"5.0", area:"Diablo South", reveal_age:"Yes", birthday:"1986-05-21", picture:"http://www1.pictures.zimbio.com/gi/Varvara%2BLepchenko%2B2012%2BOpen%2BDay%2B5%2Bk1K1SRv6DBtl.jpg"},
  {lname:"Peng", fname:"Shuai", gender:"F", username:"speng", password:"asdfasdf", email:"speng@gmail.com", level:"5.0", area:"Solano", reveal_age:"Yes", birthday:"1986-01-08", picture:"http://www2.pictures.gi.zimbio.com/Madrid%2BTennis%2BOpen%2BDay%2BFive%2BfulPEl3LfHWl.jpg"},
  {lname:"Vandeweghe", fname:"Coco", gender:"F", username:"cvandeweghe", password:"asdfasdf", email:"cvandeweghe@gmail.com", level:"4.5", area:"South Bay", reveal_age:"Yes", birthday:"1991-12-06", picture:"http://www.wtatennis.com/javaImages/d9/1e/0,,12781~12918489,00.jpg"},
  {lname:"Bacsinszky", fname:"Timea", gender:"F", username:"tbacsinszky", password:"asdfasdf", email:"tbacsinszky@gmail.com", level:"4.5", area:"South Bay", reveal_age:"Yes", birthday:"1989-06-08", picture:"http://www2.pictures.zimbio.com/gi/Sony%2BEricsson%2BOpen%2BDay%2B3%2BL7sbKdjZ2zYl.jpg"},
  {lname:"Bencic", fname:"Belinda", gender:"F", username:"bbencic", password:"asdfasdf", email:"bbencic@gmail.com", level:"4.5", area:"East Bay", reveal_age:"Yes", birthday:"1997-03-10", picture:"http://www1.pictures.zimbio.com/gi/Belinda%2BBencic%2BWimbledon%2BTennis%2BChampionships%2BCk_kpkXkduTl.jpg"},
  {lname:"Barthel", fname:"Mona", gender:"F", username:"mbarthel", password:"asdfasdf", email:"mbarthel@gmail.com", level:"4.5", area:"East Bay", reveal_age:"Yes", birthday:"1990-07-11", picture:"http://www.tennisworldusa.org/Editor/Img/WTA-Tennis-img4843_668.jpg"},
  {lname:"Muguruza", fname:"Garbine", gender:"F", username:"gmuguruza", password:"asdfasdf", email:"gmuguruza@gmail.com", level:"5.0", area:"Diablo North", reveal_age:"Yes", birthday:"1993-10-08", picture:"http://s.wsj.net/public/resources/images/BN-BD739_ausope_G_20140118115138.jpg"},
  {lname:"Pavlyuchenkova", fname:"Anastasia", gender:"F", username:"apavlyuchenkova", password:"asdfasdf", email:"apavlyuchenkova@gmail.com", level:"4.5", area:"Solano", reveal_age:"Yes", birthday:"1991-07-03", picture:"http://images.supersport.com/2014/2/Anastasia-Pavlyuchenkova-fist-140118G300.jpg"},
  {lname:"Stephens", fname:"Sloane", gender:"F", username:"sstephens", password:"asdfasdf", email:"sstephens@gmail.com", level:"4.5", area:"Peninsula", reveal_age:"Yes", birthday:"1993-03-20", picture:"http://a.espncdn.com/media/motion/2012/0829/com_120829_espnw_scene_n_heard_sloane_stephens/com_120829_espnw_scene_n_heard_sloane_stephens.jpg"},
  {lname:"Vinci", fname:"Roberta", gender:"F", username:"rvinci", password:"asdfasdf", email:"rvinci@gmail.com", level:"4.5", area:"Peninsula", reveal_age:"Yes", birthday:"1983-02-18", picture:"http://www.tennisworldusa.org/Editor/Img/WTA-Tennis-img6169_668.jpg"},
  {lname:"Riske", fname:"Alison", gender:"F", username:"ariske", password:"asdfasdf", email:"ariske@gmail.com", level:"4.5", area:"Diablo South", reveal_age:"Yes", birthday:"1990-07-03", picture:"http://www4.pictures.zimbio.com/gi/Alison%2BRiske%2BChampionships%2BWimbledon%2B2011%2Bxnj70Pe3q9Ol.jpg"},
  {lname:"Dellacqua", fname:"Casey", gender:"F", username:"cdellacqua", password:"asdfasdf", email:"cdellacqua@gmail.com", level:"4.5", area:"Solano", reveal_age:"Yes", birthday:"1985-02-11", picture:"http://www.tennis.com.au/wp-content/uploads/2014/01/Dellacqua-700x450.jpg"},
  {lname:"Brengle", fname:"Madison", gender:"F", username:"mbrengle", password:"asdfasdf", email:"mbrengle@gmail.com", level:"4.5", area:"Diablo North", reveal_age:"Yes", birthday:"1990-04-03", picture:"http://www.independent.co.uk/incoming/article9983841.ece/alternates/w620/Heather-Watson-Madison-Brengle.jpg"},
  {lname:"Hantuchova", fname:"Daniela", gender:"F", username:"dhantuchova", password:"asdfasdf", email:"dhantuchova@gmail.com", level:"4.5", area:"Diablo North", reveal_age:"Yes", birthday:"1983-04-23", picture:"http://hottennisplayers.org/wp-content/uploads/5dh.jpg"},
  {lname:"Pironkova", fname:"Tsvetana", gender:"F", username:"tpironkova", password:"asdfasdf", email:"tpironkova@gmail.com", level:"4.0", area:"South Bay", reveal_age:"Yes", birthday:"1987-09-13", picture:"http://www.top2best.com/wp-content/uploads/2013/03/tsvetana-pironkova-wallpapers-2013.jpg"},
  {lname:"Kanepi", fname:"Kaia", gender:"F", username:"kkanepi", password:"asdfasdf", email:"kkanepi@gmail.com", level:"4.0", area:"San Francisco", reveal_age:"Yes", birthday:"1985-06-10", picture:"http://anmblog.typepad.com/.a/6a00d8341c565553ef017eeac20194970d-500wi"},
  {lname:"Watson", fname:"Heather", gender:"F", username:"hwatson", password:"asdfasdf", email:"hwatson@gmail.com", level:"4.5", area:"Peninsula", reveal_age:"Yes", birthday:"1992-05-19", picture:"http://www.tarkatennis.net/gallery/tennis94.jpg"},
  {lname:"Rybarikova", fname:"Magdalena", gender:"F", username:"mrybarikova", password:"asdfasdf", email:"mrybarikova@gmail.com", level:"4.0", area:"Diablo South", reveal_age:"Yes", birthday:"1988-10-04", picture:"http://www.coretennis.net/ct/1/image/Players/MJPage/WTA/R/Fiche/Rybarikova_Magdalena_Fiche.jpg"},
  {lname:"Tomljanovic", fname:"Ajla", gender:"F", username:"atomljanovic", password:"asdfasdf", email:"atomljanovic@gmail.com", level:"4.0", area:"Peninsula", reveal_age:"Yes", birthday:"1993-05-07", picture:"http://media.mlive.com/saginawnews/photo/2013/02/12250435-standard.jpg"},
  {lname:"Puig", fname:"Monica", gender:"F", username:"mpuig", password:"asdfasdf", email:"mpuig@gmail.com", level:"4.0", area:"Peninsula", reveal_age:"Yes", birthday:"1993-09-27", picture:"http://www3.pictures.zimbio.com/gi/Monica%2BPuig%2BWimbledon%2BTennis%2BChampionships%2B97qhpptkUrfl.jpg"},
  {lname:"Shvedova", fname:"Yaroslava", gender:"F", username:"yshvedova", password:"asdfasdf", email:"yshvedova@gmail.com", level:"4.0", area:"Solano", reveal_age:"Yes", birthday:"1987-09-12", picture:"http://www4.pictures.zimbio.com/gi/Yaroslava%252BShvedova%252B2011%252BHopman%252BCup%252BDay%252B2%252B31Eu-fKb56_l.jpg"},
  {lname:"Davis", fname:"Lauren", gender:"F", username:"ldavis", password:"asdfasdf", email:"ldavis@gmail.com", level:"4.0", area:"Solano", reveal_age:"Yes", birthday:"1993-10-09", picture:"http://www3.pictures.zimbio.com/gi/Lauren+Davis+ASB+Classic+Day+4+QsxghmyMYOql.jpg"},
  {lname:"Mchale", fname:"Christina", gender:"F", username:"cmchale", password:"asdfasdf", email:"cmchale@gmail.com", level:"4.0", area:"East Bay", reveal_age:"Yes", birthday:"1992-05-11", picture:"http://www4.pictures.zimbio.com/gi/Christina%2BMchale%2BBNP%2BParibas%2BOpen%2BDay%2B5%2BzDI5g2FAW0Ol.jpg"},
  {lname:"Knapp", fname:"Karin", gender:"F", username:"kknapp", password:"asdfasdf", email:"kknapp@gmail.com", level:"4.0", area:"San Francisco", reveal_age:"Yes", birthday:"1987-06-28", picture:"http://www.concordmonitor.com/csp/mediapool/sites/dt.common.streams.StreamServer.cls%3FSTREAMOID%3DiJn0GwGYSChBi2Oerq3uIM%24daE2N3K4ZzOUsqbU5sYsxwHF9ZrC8IN_xqxBsLrTMWCsjLu883Ygn4B49Lvm9bPe2QeMKQdVeZmXF%249l%244uCZ8QDXhaHEp3rvzXRJFdy0KqPHLoMevcTLo3h8xh70Y6N_U_CryOsw6FTOdKL_jpQ-%26CONTENTTYPE%3Dimage/jpeg"},
  {birthday:"1994-02-01", lname:"Friedsam", fname:"Anna-lena", gender:"F", username:"afriedsam", password:"asdfasdf", email:"afriedsam@gmail.com", level:"2.5", area:"Diablo North", reveal_age:"Yes", picture:"http://www.porsche-tennis.de/prod/pag/tennis.nsf/resources/T12_0199/%24file/T12_0199.jpg"},
  {birthday:"1982-03-09", lname:"Lucic-baroni", fname:"Mirjana", gender:"F", username:"mlucic-baroni", password:"asdfasdf", email:"mlucic-baroni@gmail.com", level:"3.5", area:"East Bay", reveal_age:"Yes", picture:"http://www3.pictures.zimbio.com/gi/Mirjana%2BLucic%2BBaroni%2BWimbledon%2BDay%2B1%2BXwgrtBOYRlil.jpg"},
  {birthday:"1985-04-17", lname:"Tsonga", fname:"Jo-wilfried", gender:"M", username:"jtsonga", password:"asdfasdf", email:"jtsonga@gmail.com", level:"5.5+", area:"East Bay", reveal_age:"Yes", picture:"http://b.smimg.net/14/09/jo-wilfried-tsonga.jpg"},
  {birthday:"1986-05-18", lname:"Anderson", fname:"Kevin", gender:"M", username:"kanderson", password:"asdfasdf", email:"kanderson@gmail.com", level:"5.5+", area:"South Bay", reveal_age:"Yes", picture:"http://www1.pictures.gi.zimbio.com/Tennis%2BChannel%2BOpen%2BDay%2B6%2BH8wHpRVWzG6l.jpg"},
  {birthday:"1983-06-04", lname:"Garcia-lopez", fname:"Guillermo", gender:"M", username:"ggarcia-lopez", password:"asdfasdf", email:"ggarcia-lopez@gmail.com", level:"5.0", area:"South Bay", reveal_age:"Yes", picture:"http://tennis-tips.co.uk/wp-content/uploads/2014/07/Guillermo-Garcia-Lopez.jpg"},
  {lname:"Schmiedlova", fname:"Anna", gender:"F", username:"aschmiedlova", password:"asdfasdf", email:"aschmiedlova@gmail.com", level:"4.0", area:"South Bay", reveal_age:"Yes", birthday:"1994-09-13", picture:"http://static4.demotix.com/sites/default/files/imagecache/a_scale_large/1900-0/photos/1953190.jpg"},
  {lname:"Smitkova", fname:"Tereza", gender:"F", username:"tsmitkova", password:"asdfasdf", email:"tsmitkova@gmail.com", level:"3.5", area:"Solano", reveal_age:"Yes", birthday:"1994-10-10", picture:"http://www1.pictures.zimbio.com/gi/Tereza%2BSmitkova%2BWimbledon%2BDay%2B3%2BoclJgjoDjudl.jpg"},
  {lname:"Azarenka", fname:"Victoria", gender:"F", username:"vazarenka", password:"asdfasdf", email:"vazarenka@gmail.com", level:"4.0", area:"East Bay", reveal_age:"Yes", birthday:"1989-07-31", picture:"http://celebritybase.info/wp-content/uploads/2014/01/victoria-azarenka-playing-tennis.jpg"},
  {lname:"Niculescu", fname:"Monica", gender:"F", username:"mniculescu", password:"asdfasdf", email:"mniculescu@gmail.com", level:"3.5", area:"Diablo North", reveal_age:"Yes", birthday:"1987-09-25", picture:"http://upload.wikimedia.org/wikipedia/commons/7/7f/2014_US_Open_(Tennis)_-_Tournament_-_Monica_Niculescu_(14920500768).jpg"},
  {lname:"Cepelova", fname:"Jana", gender:"F", username:"jcepelova", password:"asdfasdf", email:"jcepelova@gmail.com", level:"3.5", area:"Diablo South", reveal_age:"Yes", birthday:"1993-05-29", picture:"http://www.tennisnow.com/Files/Cepelova-2014-charleston.aspx"},
  {lname:"Schiavone", fname:"Francesca", gender:"F", username:"fschiavone", password:"asdfasdf", email:"fschiavone@gmail.com", level:"3.5", area:"Solano", reveal_age:"Yes", birthday:"1980-06-23", picture:"https://wtablogging.files.wordpress.com/2014/09/francescaschiavonechampionshipswimbledonbyrfiz_afxal.jpg"},
  {birthday:"1987-01-19", lname:"Soler-espinosa", fname:"SÍlvia", gender:"F", username:"ssoler-espinosa", password:"asdfasdf", email:"ssoler-espinosa@gmail.com", level:"3.5", area:"Peninsula", reveal_age:"Yes", picture:"http://cdn.tennis.com/uploads/img/2014/05/24/1405141307472354376_o/article.jpg"},
  {birthday:"1990-08-26", lname:"Begu", fname:"Irina-camelia", gender:"F", username:"ibegu", password:"asdfasdf", email:"ibegu@gmail.com", level:"4.5", area:"San Francisco", reveal_age:"Yes", picture:"http://www1.pictures.zimbio.com/gi/Irina%2BCamelia%2BBegu%2BToray%2BPan%2BPacific%2BOpen%2B4-UNaRNkHiXl.jpg"},
  {birthday:"1989-12-24", lname:"Johnson", fname:"Steve", gender:"M", username:"sjohnson", password:"asdfasdf", email:"sjohnson@gmail.com", level:"4.5", area:"South Bay", reveal_age:"Yes", picture:"http://images.onset.freedom.com/ocregister/blogs/usc.ocregister.com/stevejohnson.0427.jpg"},
  {birthday:"1989-07-23", lname:"Young", fname:"Donald", gender:"M", username:"dyoung", password:"asdfasdf", email:"dyoung@gmail.com", level:"4.5", area:"Diablo South", reveal_age:"Yes", picture:"http://www1.pictures.zimbio.com/gi/Donald%2BYoung%2BOlympics%2BDay%2B1%2BTennis%2BuazjdXjN0QFl.jpg"},
  {birthday:"1987-03-22", lname:"Haider-maurer", fname:"Andreas", gender:"M", username:"ahaider-maurer", password:"asdfasdf", email:"ahaider-maurer@gmail.com", level:"4.0", area:"Peninsula", reveal_age:"Yes", picture:"http://upload.wikimedia.org/wikipedia/commons/5/5c/2014_US_Open_(Tennis)_-_Tournament_-_Andreas_Haider-Maurer_(14915034070).jpg"},
  {lname:"Nara", fname:"Kurumi", gender:"F", username:"knara", password:"asdfasdf", email:"knara@gmail.com", level:"3.5", area:"South Bay", reveal_age:"Yes", birthday:"1991-12-30", picture:"http://www4.pictures.zimbio.com/gi/Kurumi%2BNara%2BToray%2BPan%2BPacific%2BOpen%2BDay%2B1%2BTPZx_7aDfORx.jpg"},
  {lname:"Flipkens", fname:"Kirsten", gender:"F", username:"kflipkens", password:"asdfasdf", email:"kflipkens@gmail.com", level:"3.5", area:"South Bay", reveal_age:"Yes", birthday:"1986-01-10", picture:"http://www4.pictures.zimbio.com/gi/Kirsten%2BFlipkens%2BAEGON%2BClassic%2BDay%2B4%2BYac5ntKrSDzl.jpg"},
  {lname:"Koukalova", fname:"Klara", gender:"F", username:"kkoukalova", password:"asdfasdf", email:"kkoukalova@gmail.com", level:"4.0", area:"Solano", reveal_age:"Yes", birthday:"1982-02-24", picture:"http://www2.pictures.zimbio.com/gi/Championships%2BWimbledon%2B2012%2BDay%2BThree%2B1yIJTsB76jMl.jpg"},
  {lname:"Gajdosova", fname:"Jarmila", gender:"F", username:"jgajdosova", password:"asdfasdf", email:"jgajdosova@gmail.com", level:"4.0", area:"Diablo South", reveal_age:"Yes", birthday:"1987-04-26", picture:"http://www.itftennis.com/media/145055/145055.jpg"},
  {lname:"Jovanovski", fname:"Bojana", gender:"F", username:"bjovanovski", password:"asdfasdf", email:"bjovanovski@gmail.com", level:"3.5", area:"San Francisco", reveal_age:"Yes", birthday:"1991-12-31", picture:"http://images5.fanpop.com/image/photos/24500000/WTA-wta-24590503-1067-1600.jpg"},
  {lname:"Hercog", fname:"Polona", gender:"F", username:"phercog", password:"asdfasdf", email:"phercog@gmail.com", level:"3.0", area:"South Bay", reveal_age:"Yes", birthday:"1991-01-20", picture:"http://www2.pictures.zimbio.com/gi/Polona%2BHercog%2BWTA%2BDubai%2BDuty%2BFree%2BTennis%2BChampionship%2BJmJZlYkS7k8l.jpg"},
  {lname:"Beck", fname:"Annika", gender:"F", username:"abeck", password:"asdfasdf", email:"abeck@gmail.com", level:"3.0", area:"Solano", reveal_age:"Yes", birthday:"1994-02-16", picture:"http://www4.pictures.zimbio.com/gi/Annika%2BBeck%2BNew%2BHaven%2BOpen%2BYale%2Bp-Y3_ocN9qJl.jpg"},
  {lname:"Bertens", fname:"Kiki", gender:"F", username:"kbertens", password:"asdfasdf", email:"kbertens@gmail.com", level:"3.5", area:"South Bay", reveal_age:"Yes", birthday:"1991-12-10", picture:"http://www.tennisphotoworld.com/wp-content/uploads/2013/11/Kiki-Bertens-Katowice-2013-BH-3053.jpg"},
  {birthday:"1991-02-22", lname:"Kuznetsov", fname:"Andrey", gender:"M", username:"akuznetsov", password:"asdfasdf", email:"akuznetsov@gmail.com", level:"3.0", area:"Peninsula", reveal_age:"Yes", picture:"http://www1.pictures.zimbio.com/gi/Andrey%2BKuznetsov%2BWimbledon%2BTennis%2BChampionships%2BdSZJ91lk3PFl.jpg"},
  {birthday:"1990-04-25", lname:"Struff", fname:"Jan-lennard", gender:"M", username:"jstruff", password:"asdfasdf", email:"jstruff@gmail.com", level:"3.0", area:"Solano", reveal_age:"Yes", picture:"http://www.sport1.de/media/_redaktion2012/sportarten_2/tennis_6/grandslams_1/frenchopen2014/Jan-Lennard_Struff_French_Open_5x4_Diashow.jpg"},
  {birthday:"1988-01-17", lname:"Ramos-vinolas", fname:"Albert", gender:"M", username:"aramos-vinolas", password:"asdfasdf", email:"aramos-vinolas@gmail.com", level:"3.5", area:"Peninsula", reveal_age:"Yes", picture:"http://tennisconnected.com/home/wp-content/uploads/2010/06/Albert-Ramos-Vinolas.jpg"},
  {lname:"Mladenovic", fname:"Kristina", gender:"F", username:"kmladenovic", password:"asdfasdf", email:"kmladenovic@gmail.com", level:"3.5", area:"Diablo South", reveal_age:"Yes", birthday:"1993-05-14", picture:"http://e2.365dm.com/13/06/660x350/Kristina-Mladenovic5_2962735.jpg"},
  {lname:"Zheng", fname:"Saisai", gender:"F", username:"szheng", password:"asdfasdf", email:"szheng@gmail.com", level:"3.0", area:"Solano", reveal_age:"Yes", birthday:"1994-02-05", picture:"http://www1.pictures.zimbio.com/gi/Saisai%2BZheng%2BBank%2BWest%2BClassic%2BDay%2B4%2BUgJh0-UMh5kl.jpg"},
  {lname:"Goerges", fname:"Julia", gender:"F", username:"jgoerges", password:"asdfasdf", email:"jgoerges@gmail.com", level:"3.5", area:"San Francisco", reveal_age:"Yes", birthday:"1988-11-02", picture:"http://www.ubitennis.com/english/wp-content/uploads/sites/2/2014/04/Julia-Goerges-in-Stuttgart.jpg"},
  {lname:"Hercog", fname:"Polona", gender:"F", username:"phercog", password:"asdfasdf", email:"phercog@gmail.com", level:"3.0", area:"South Bay", reveal_age:"Yes", birthday:"1991-01-20", picture:"http://www2.pictures.zimbio.com/gi/Polona%2BHercog%2BWTA%2BDubai%2BDuty%2BFree%2BTennis%2BChampionship%2BJmJZlYkS7k8l.jpg"},
  {lname:"Erakovic", fname:"Marina", gender:"F", username:"merakovic", password:"asdfasdf", email:"merakovic@gmail.com", level:"3.0", area:"San Francisco", reveal_age:"Yes", birthday:"1988-03-06", picture:"http://www.canterburytennis.co.nz/wp-content/uploads/2014/11/Marina%2BErakovic%2BChampionships%2BWimbledon%2B2011%2BYkL_K1t6MA3l.jpg"},
  {lname:"Rogers", fname:"Shelby", gender:"F", username:"srogers", password:"asdfasdf", email:"srogers@gmail.com", level:"3.0", area:"San Francisco", reveal_age:"Yes", birthday:"1992-10-13", picture:"http://sports.inquirer.net/files/2014/07/petkovic.jpg"},
  {lname:"Siniakova", fname:"Katerina", gender:"F", username:"ksiniakova", password:"asdfasdf", email:"ksiniakova@gmail.com", level:"3.0", area:"Diablo North", reveal_age:"Yes", birthday:"1996-05-10", picture:"http://www3.pictures.zimbio.com/gi/Katerina%2BSiniakova%2BOpen%2BDay%2B11%2Bw8YUt1md_pml.jpg"},
  {lname:"Gibbs", fname:"Nicole", gender:"F", username:"ngibbs", password:"asdfasdf", email:"ngibbs@gmail.com", level:"3.0", area:"San Francisco", reveal_age:"Yes", birthday:"1993-03-03", picture:"http://images.supersport.com/2012/Nicole-Gibbs-Inaction-120710G300.jpg"},
  {lname:"Vekic", fname:"Donna", gender:"F", username:"dvekic", password:"asdfasdf", email:"dvekic@gmail.com", level:"3.0", area:"East Bay", reveal_age:"Yes", birthday:"1996-06-28", picture:"http://www.oktennis.it/images/Varie_2015/Donna_Vekic.jpg"},
  {lname:"Allertova", fname:"Denisa", gender:"F", username:"dallertova", password:"asdfasdf", email:"dallertova@gmail.com", level:"2.5", area:"South Bay", reveal_age:"Yes", birthday:"1993-03-07", picture:"http://www1.pictures.zimbio.com/gi/Daria%2BGavrilova%2BOpen%2BDay%2B10%2BvIWSX6KcKsBl.jpg"},
  {lname:"Scheepers", fname:"Chanelle", gender:"F", username:"cscheepers", password:"asdfasdf", email:"cscheepers@gmail.com", level:"2.5", area:"San Francisco", reveal_age:"Yes", birthday:"1984-03-13", picture:"http://www.tennispanorama.com/wp-content/uploads/2012/07/Scheepers-e1342246778106.jpg"},
  {lname:"Tsurenko", fname:"Lesia", gender:"F", username:"ltsurenko", password:"asdfasdf", email:"ltsurenko@gmail.com", level:"2.5", area:"South Bay", reveal_age:"Yes", birthday:"1989-05-30", picture:"http://www.wtatennis.com/javaImages/a/77/0,,12781~10581770,00.jpg"},
  {lname:"Babos", fname:"Timea", gender:"F", username:"tbabos", password:"asdfasdf", email:"tbabos@gmail.com", level:"2.5", area:"Diablo North", reveal_age:"Yes", birthday:"1993-05-10", picture:"http://www2.pictures.zimbio.com/gi/Timea%2BBabos%2BChampionships%2BWimbledon%2B2012%2BDay%2BmAHIUWrw5c4l.jpg"},
  {lname:"Cetkovska", fname:"Petra", gender:"F", username:"pcetkovska", password:"asdfasdf", email:"pcetkovska@gmail.com", level:"2.5", area:"Diablo North", reveal_age:"Yes", birthday:"1985-02-08", picture:"http://www3.pictures.zimbio.com/gi/Petra%2BCetkovska%2BNew%2BHaven%2BOpen%2BYale%2BDay%2B6%2B2SkvFbdQbGol.jpg"},
  {lname:"Parmentier", fname:"Pauline", gender:"F", username:"pparmentier", password:"asdfasdf", email:"pparmentier@gmail.com", level:"2.5", area:"Solano", reveal_age:"Yes", birthday:"1986-01-31", picture:"http://www.wtnphotos.com/data/3290/056abfb637c779ca1d9c2492d72b9f76-getty-tennis-chile-wta-fra-ita-parmentier.jpg"},
  {lname:"Dulgheru", fname:"Alexandra", gender:"F", username:"adulgheru", password:"asdfasdf", email:"adulgheru@gmail.com", level:"2.5", area:"South Bay", reveal_age:"Yes", birthday:"1989-05-30", picture:"http://www2.pictures.zimbio.com/gi/Alexandra%2BDulgheru%2BWTA%2BDubai%2BBarclays%2BTennis%2BHRw5Uqm1lmCl.jpg"},
  {lname:"Stosur", fname:"Samantha", gender:"F", username:"sstosur", password:"asdfasdf", email:"sstosur@gmail.com", level:"5.0", area:"South Bay", reveal_age:"Yes", birthday:"1984-03-30", picture:"http://images.smh.com.au/ftsmh/ffximage/2009/05/11/sam_stosur_narrowweb__300x397,0.jpg"},
  {lname:"Giorgi", fname:"Camila", gender:"F", username:"cgiorgi", password:"asdfasdf", email:"cgiorgi@gmail.com", level:"4.5", area:"Diablo South", reveal_age:"Yes", birthday:"1991-12-30", picture:"http://hottennisplayers.org/wp-content/uploads/29cg5.jpg"},
  {lname:"Krunic", fname:"Aleksandra", gender:"F", username:"akrunic", password:"asdfasdf", email:"akrunic@gmail.com", level:"3.0", area:"San Francisco", reveal_age:"Yes", birthday:"1993-03-15", picture:"http://www2.pictures.zimbio.com/gi/Aleksandra%2BKrunic%2BOpen%2BDay%2B4%2BNcjVKXXVH3Il.jpg"},
  {lname:"Diatchenko", fname:"Vitalia", gender:"F", username:"vdiatchenko", password:"asdfasdf", email:"vdiatchenko@gmail.com", level:"3.0", area:"South Bay", reveal_age:"Yes", birthday:"1990-08-02", picture:"http://www3.pictures.gi.zimbio.com/2009%2BFrench%2BOpen%2BDay%2BFour%2BeG7f6Hkx3tzl.jpg"},
  {lname:"Vesnina", fname:"Elena", gender:"F", username:"evesnina", password:"asdfasdf", email:"evesnina@gmail.com", level:"3.5", area:"East Bay", reveal_age:"Yes", birthday:"1986-08-01", picture:"http://www2.pictures.zimbio.com/gi/Elena%2BVesnina%2B2012%2BASB%2BClassic%2BDay%2B4%2BvjMel5idjKil.jpg"},
  {lname:"Witthoeft", fname:"Carina", gender:"F", username:"cwitthoeft", password:"asdfasdf", email:"cwitthoeft@gmail.com", level:"2.5", area:"Solano", reveal_age:"Yes", birthday:"1995-02-16", picture:"http://www.itftennis.com/media/166318/166318.jpg"},
  {lname:"Wickmayer", fname:"Yanina", gender:"F", username:"ywickmayer", password:"asdfasdf", email:"ywickmayer@gmail.com", level:"3.0", area:"Peninsula", reveal_age:"Yes", birthday:"1989-10-20", picture:"http://www.sikids.com/sites/default/files/multimedia/photo_gallery/1001/tennis.australian.open.fashion/images/yanina-Wickmayer.TENNIS_A(16).jpg"},
  {lname:"Rodina", fname:"Evgeniya", gender:"F", username:"erodina", password:"asdfasdf", email:"erodina@gmail.com", level:"2.5", area:"South Bay", reveal_age:"Yes", birthday:"1989-02-04", picture:"http://www4.pictures.zimbio.com/gi/Evgeniya%2BRodina%2BChampionships%2BWimbledon%2B2011%2B4S2-Vdhrny1l.jpg"},
  {lname:"Min", fname:"Grace", gender:"F", username:"gmin", password:"asdfasdf", email:"gmin@gmail.com", level:"2.5", area:"Diablo South", reveal_age:"Yes", birthday:"1994-05-06", picture:"http://www4.pictures.zimbio.com/gi/Grace%2BMin%2B2011%2BUS%2BOpen%2BDay%2B14%2BWi0l48hXFuEl.jpg"},
  {lname:"Konjuh", fname:"Ana", gender:"F", username:"akonjuh", password:"asdfasdf", email:"akonjuh@gmail.com", level:"2.5", area:"South Bay", reveal_age:"Yes", birthday:"1997-12-27", picture:"http://www2.pictures.zimbio.com/gi/Ana%2BKonjuh%2BASB%2BClassic%2BDay%2B3%2BwAJm3-OeWphl.jpg"},
  {lname:"Arruabarrena", fname:"Lara", gender:"F", username:"larruabarrena", password:"asdfasdf", email:"larruabarrena@gmail.com", level:"3.0", area:"Diablo North", reveal_age:"Yes", birthday:"1992-03-20", picture:"http://www4.pictures.zimbio.com/gi/Lara%2BArruabarrena%2BVecino%2B2012%2BOpen%2BDay%2B4%2BiVdiNpq9hV2l.jpg"},
  {lname:"Federer", fname:"Roger", gender:"M", username:"rfederer", password:"asdfasdf", email:"rfederer@gmail.com", area:"Peninsula", reveal_age:"Yes", birthday:"1981-08-08", picture:"http://news.bbcimg.co.uk/media/images/65833000/jpg/_65833549_roger_federer_getty1.jpg"},
  {lname:"Raonic", fname:"Milos", gender:"M", username:"mraonic", password:"asdfasdf", email:"mraonic@gmail.com", level:"5.5+", area:"East Bay", reveal_age:"Yes", birthday:"1990-12-27", picture:"http://www.ctvnews.ca/polopoly_fs/1.1400695.1375839648!/httpImage/image.jpg_gen/derivatives/landscape_620/image.jpg"},
  {lname:"Wawrinka", fname:"Stan", gender:"M", username:"swawrinka", password:"asdfasdf", email:"swawrinka@gmail.com", level:"5.5+", area:"Peninsula", reveal_age:"Yes", birthday:"1985-03-28", picture:"http://skysportsng.com/wp-content/uploads/2014/09/stan-Wawrinka.jpg"},
  {lname:"Nishikori", fname:"Kei", gender:"M", username:"knishikori", password:"asdfasdf", email:"knishikori@gmail.com", level:"5.5+", area:"San Francisco", reveal_age:"Yes", birthday:"1989-12-29", picture:"http://www3.pictures.zimbio.com/gi/Kei%2BNishikori%2BOlympics%2BDay%2B2%2BTennis%2BGgN-TL6a9pfl.jpg"},
  {lname:"Djokovic", fname:"Novak", gender:"M", username:"ndjokovic", password:"asdfasdf", email:"ndjokovic@gmail.com", area:"South Bay", reveal_age:"Yes", birthday:"1987-05-22", picture:"http://i.telegraph.co.uk/multimedia/archive/02229/djokovic_2229397b.jpg"},
  {lname:"Murray", fname:"Andy", gender:"M", username:"amurray", password:"asdfasdf", email:"amurray@gmail.com", area:"Diablo North", reveal_age:"Yes", birthday:"1987-05-15", picture:"http://www.kwayedza.co.zw/wp-content/uploads/2015/02/ay100805294andy-murray-of-b.jpg"},
  {lname:"Berdych", fname:"Tomas", gender:"M", username:"tberdych", password:"asdfasdf", email:"tberdych@gmail.com", level:"5.5+", area:"Peninsula", reveal_age:"Yes", birthday:"1985-09-17", picture:"http://upload.wikimedia.org/wikipedia/commons/b/b0/Berdych_at_Queens_2013.jpg"},
  {lname:"Dimitrov", fname:"Grigor", gender:"M", username:"gdimitrov", password:"asdfasdf", email:"gdimitrov@gmail.com", level:"5.5+", area:"San Francisco", reveal_age:"Yes", birthday:"1991-05-16", picture:"http://upload.wikimedia.org/wikipedia/commons/6/69/Grigor_Dimitrov_-_Monte-Carlo_2013_-_001.jpg"},
  {lname:"Cilic", fname:"Marin", gender:"M", username:"mcilic", password:"asdfasdf", email:"mcilic@gmail.com", level:"5.5+", area:"Solano", reveal_age:"Yes", birthday:"1988-09-28", picture:"http://b.smimg.net/13/24/300x225/marin-cilic.jpg"},
  {lname:"Gulbis", fname:"Ernests", gender:"M", username:"egulbis", password:"asdfasdf", email:"egulbis@gmail.com", level:"5.5+", area:"Diablo North", reveal_age:"Yes", birthday:"1988-08-30", picture:"http://news.bbcimg.co.uk/media/images/75214000/jpg/_75214149_494596573.jpg"},
  {lname:"Lopez", fname:"Feliciano", gender:"M", username:"flopez", password:"asdfasdf", email:"flopez@gmail.com", level:"5.5+", area:"Peninsula", reveal_age:"Yes", birthday:"1981-09-20", picture:"http://www.wilson.com/servlet/resize/942096/390/390/Lopez_390x390/"},
  {lname:"Simon", fname:"Gilles", gender:"M", username:"gsimon", password:"asdfasdf", email:"gsimon@gmail.com", level:"5.5+", area:"South Bay", reveal_age:"Yes", birthday:"1984-12-27", picture:"http://www.topnews.in/files/Gilles-Simon_1.jpg"},
  {lname:"Ferrer", fname:"David", gender:"M", username:"dferrer", password:"asdfasdf", email:"dferrer@gmail.com", level:"5.5+", area:"East Bay", reveal_age:"Yes", birthday:"1982-04-02", picture:"http://www.stevegtennis.com/wp-content/uploads/David-Ferrer13.jpg"},
  {lname:"Monfils", fname:"Gael", gender:"M", username:"gmonfils", password:"asdfasdf", email:"gmonfils@gmail.com", level:"5.0", area:"East Bay", reveal_age:"Yes", birthday:"1986-09-01", picture:"http://a.espncdn.com/i/mag/blog/monfils(1)576x324.jpg"},
  {lname:"Robredo", fname:"Tommy", gender:"M", username:"trobredo", password:"asdfasdf", email:"trobredo@gmail.com", level:"5.0", area:"Solano", reveal_age:"Yes", birthday:"1982-05-01", picture:"http://www2.tennisserver.com/images/photofeed/2007/pilot-pen/waite/070820/robredo-gicquel/TommyRobredo3.jpg"},
  {lname:"Isner", fname:"John", gender:"M", username:"jisner", password:"asdfasdf", email:"jisner@gmail.com", level:"5.0", area:"Peninsula", reveal_age:"Yes", birthday:"1985-04-26", picture:"https://crackbillionair.files.wordpress.com/2010/08/isner-ankle.jpg"},
  {lname:"Nadal", fname:"Rafael", gender:"M", username:"rnadal", password:"asdfasdf", email:"rnadal@gmail.com", level:"5.5+", area:"San Francisco", reveal_age:"Yes", birthday:"1986-06-03", picture:"http://i.telegraph.co.uk/multimedia/archive/01375/rafael_nadal_1375582c.jpg"},
  {lname:"Karlovic", fname:"Ivo", gender:"M", username:"ikarlovic", password:"asdfasdf", email:"ikarlovic@gmail.com", level:"5.0", area:"Diablo North", reveal_age:"Yes", birthday:"1979-02-28", picture:"http://static.guim.co.uk/sys-images/Sport/Pix/columnists/2014/10/14/1413311892913/Ivo-Karlovic-tennis-014.jpg"},
  {lname:"Cuevas", fname:"Pablo", gender:"M", username:"pcuevas", password:"asdfasdf", email:"pcuevas@gmail.com", level:"5.0", area:"San Francisco", reveal_age:"Yes", birthday:"1986-01-01", picture:"http://www.tenfield.com.uy/wp-content/uploads/2013/04/Cuevas-Pablo1.jpg"},
  {lname:"Fognini", fname:"Fabio", gender:"M", username:"ffognini", password:"asdfasdf", email:"ffognini@gmail.com", level:"5.0", area:"Diablo North", reveal_age:"Yes", birthday:"1987-05-24", picture:"http://www2.pictures.gi.zimbio.com/Legg%2BMason%2BTennis%2BClassic%2BDay%2B4%2BFGrI5RJClLPl.jpg"},
  {lname:"Gasquet", fname:"Richard", gender:"M", username:"rgasquet", password:"asdfasdf", email:"rgasquet@gmail.com", level:"5.0", area:"Diablo North", reveal_age:"Yes", birthday:"1986-06-18", picture:"http://www.contactmusic.com/pics/ln/20130621/220613_boodles_tennis_challenge_day_4/richard-gasquet-boodles-tennis-challenge_3730458.jpg"},
  {lname:"Mayer", fname:"Leonardo", gender:"M", username:"lmayer", password:"asdfasdf", email:"lmayer@gmail.com", level:"5.0", area:"Peninsula", reveal_age:"Yes", birthday:"1987-05-15", picture:"http://www.wearetennis.com/files/players/m/324x274/Leonardo-MAYER.jpg"},
  {lname:"Goffin", fname:"David", gender:"M", username:"dgoffin", password:"asdfasdf", email:"dgoffin@gmail.com", level:"5.0", area:"San Francisco", reveal_age:"Yes", birthday:"1990-12-07", picture:"http://www4.pictures.zimbio.com/pc/David%2BGoffin%2BDavid%2BGoffin%2BCompetes%2BFrench%2Bkb61J9isogcl.jpg"},
  {lname:"Rosol", fname:"Lukas", gender:"M", username:"lrosol", password:"asdfasdf", email:"lrosol@gmail.com", level:"5.0", area:"South Bay", reveal_age:"Yes", birthday:"1985-07-24", picture:"http://static.sportskeeda.com/wp-content/uploads/2014/06/lukas-rosol-hd-wallpaper-1403698599.jpg"},
  {lname:"Benneteau", fname:"Julien", gender:"M", username:"jbenneteau", password:"asdfasdf", email:"jbenneteau@gmail.com", level:"5.0", area:"Diablo North", reveal_age:"Yes", birthday:"1981-12-20", picture:"http://www.lexpress.fr/pictures/533/273373_julien-benneteau-au-2e-tour-de-l-open-d-australie-contre-gilles-simon-le-19-janvier-2012-a-melbourne.jpg"},
  {lname:"Verdasco", fname:"Fernando", gender:"M", username:"fverdasco", password:"asdfasdf", email:"fverdasco@gmail.com", level:"5.0", area:"San Francisco", reveal_age:"Yes", birthday:"1983-11-15", picture:"http://www2.pictures.gi.zimbio.com/BNP%2BParibas%2BOpen%2BDay%2B10%2B2D7bMVzdukll.jpg"},
  {lname:"Dolgopolov", fname:"Alexandr", gender:"M", username:"adolgopolov", password:"asdfasdf", email:"adolgopolov@gmail.com", level:"4.5", area:"Peninsula", reveal_age:"Yes", birthday:"1988-11-07", picture:"http://fitmarkbags.com/blog/wp-content/uploads/2014/03/Alexandr-Dolgopolov.jpg"},
  {lname:"Seppi", fname:"Andreas", gender:"M", username:"aseppi", password:"asdfasdf", email:"aseppi@gmail.com", level:"4.5", area:"Peninsula", reveal_age:"Yes", birthday:"1984-02-21", picture:"http://www.vip.it/wp-content/uploads/2013/01/Andreas-Seppi-Open-Australia.png"},
  {lname:"Kohlschreiber", fname:"Philipp", gender:"M", username:"pkohlschreiber", password:"asdfasdf", email:"pkohlschreiber@gmail.com", level:"5.0", area:"Solano", reveal_age:"Yes", birthday:"1983-10-16", picture:"http://www2.pictures.zimbio.com/gi/Philipp%2BKohlschreiber%2BChampionships%2BWimbledon%2BVVqWGEWLUcQl.jpg"},
  {lname:"Giraldo", fname:"Santiago", gender:"M", username:"sgiraldo", password:"asdfasdf", email:"sgiraldo@gmail.com", level:"4.5", area:"Solano", reveal_age:"Yes", birthday:"1987-11-27", picture:"http://www4.pictures.zimbio.com/gi/Santiago%2BGiraldo%2BOlympics%2BDay%2B1%2BTennis%2BOvSATmUhClhl.jpg"},
  {lname:"Mannarino", fname:"Adrian", gender:"M", username:"amannarino", password:"asdfasdf", email:"amannarino@gmail.com", level:"4.5", area:"Solano", reveal_age:"Yes", birthday:"1988-06-29", picture:"http://upload.wikimedia.org/wikipedia/commons/thumb/f/fd/Mannarino_WM13-016_(9454422248).jpg/220px-Mannarino_WM13-016_(9454422248).jpg"},
  {lname:"Klizan", fname:"Martin", gender:"M", username:"mklizan", password:"asdfasdf", email:"mklizan@gmail.com", level:"4.5", area:"East Bay", reveal_age:"Yes", birthday:"1989-07-11", picture:"http://e1.365dm.com/12/09/504x378/Martin-Klizan-US-Open-2012_2833142.jpg"},
  {lname:"Muller", fname:"Gilles", gender:"M", username:"gmuller", password:"asdfasdf", email:"gmuller@gmail.com", level:"4.5", area:"Diablo North", reveal_age:"Yes", birthday:"1983-05-09", picture:"http://graphics8.nytimes.com/images/2011/09/06/sports/tennis/06muller2/06muller2-blog480.jpg"},
  {lname:"Chardy", fname:"Jeremy", gender:"M", username:"jchardy", password:"asdfasdf", email:"jchardy@gmail.com", level:"4.5", area:"Peninsula", reveal_age:"Yes", birthday:"1987-02-12", picture:"http://www.pix123.com/live-tennis/201401/Jan03/2014Jan03060353_460085403.jpg"},
  {lname:"Becker", fname:"Benjamin", gender:"M", username:"bbecker", password:"asdfasdf", email:"bbecker@gmail.com", level:"4.5", area:"Diablo South", reveal_age:"Yes", birthday:"1981-06-16", picture:"http://ais.badische-zeitung.de/piece/00/29/07/b9/2688953.jpg"},
  {lname:"Tomic", fname:"Bernard", gender:"M", username:"btomic", password:"asdfasdf", email:"btomic@gmail.com", level:"4.5", area:"Diablo North", reveal_age:"Yes", birthday:"1992-10-21", picture:"http://www.bernardtomic.com/wp-content/uploads/2013/06/Tomic-Eastbourne-422x298.jpg"},
  {lname:"Thiem", fname:"Dominic", gender:"M", username:"dthiem", password:"asdfasdf", email:"dthiem@gmail.com", level:"4.0", area:"East Bay", reveal_age:"Yes", birthday:"1993-09-03", picture:"http://www.itftennis.com/media/178075/178075.jpg"},
  {lname:"Vesely", fname:"Jiri", gender:"M", username:"jvesely", password:"asdfasdf", email:"jvesely@gmail.com", level:"4.0", area:"Solano", reveal_age:"Yes", birthday:"1993-07-10", picture:"http://www.atpworldtour.com/~/media/DA23564D4A7F4B0CBD1454DB83D71410.ashx"},
  {lname:"Janowicz", fname:"Jerzy", gender:"M", username:"jjanowicz", password:"asdfasdf", email:"jjanowicz@gmail.com", level:"4.0", area:"San Francisco", reveal_age:"Yes", birthday:"1990-11-13", picture:"http://media.mwcradio.com/mimesis/2012-11/04/2012-11-04T212850Z_1_CBRE8A31NO500_RTROPTP_3_SPORTS-US-TENNIS-MEN-MASTERS-JANOWICZ_JPG_475x310_q85.jpg"},
  {lname:"Kyrgios", fname:"Nick", gender:"M", username:"nkyrgios", password:"asdfasdf", email:"nkyrgios@gmail.com", level:"4.5", area:"San Francisco", reveal_age:"Yes", birthday:"1995-04-27", picture:"http://resources2.news.com.au/images/2014/05/04/1226904/569526-0e55f2e6-d2c9-11e3-b3dd-4bc0ed63383f.jpg"},
  {lname:"Sousa", fname:"Joao", gender:"M", username:"jsousa", password:"asdfasdf", email:"jsousa@gmail.com", level:"4.0", area:"Diablo South", reveal_age:"Yes", birthday:"1989-03-30", picture:"http://www.sportsrantzone.com/wp-content/uploads/2013/09/774210.jpg"},
  {lname:"Stakhovsky", fname:"Sergiy", gender:"M", username:"sstakhovsky", password:"asdfasdf", email:"sstakhovsky@gmail.com", level:"4.0", area:"East Bay", reveal_age:"Yes", birthday:"1986-01-06", picture:"http://www2.pictures.zimbio.com/gi/Sergiy%2BStakhovsky%2BWimbledon%2BTennis%2BChampionships%2BQF_cOeD6SHJl.jpg"},
  {lname:"Troicki", fname:"Viktor", gender:"M", username:"vtroicki", password:"asdfasdf", email:"vtroicki@gmail.com", level:"4.5", area:"Diablo South", reveal_age:"Yes", birthday:"1986-02-10", picture:"http://tennisconnected.com/home/wp-content/uploads/2010/01/Troicki.jpg"},
  {lname:"Sock", fname:"Jack", gender:"M", username:"jsock", password:"asdfasdf", email:"jsock@gmail.com", level:"4.0", area:"San Francisco", reveal_age:"Yes", birthday:"1992-09-24", picture:"http://blog.mlive.com/kzgazette/sports_impact/2009/08/large_0209771_2.jpg"},
  {lname:"Delbonis", fname:"Federico", gender:"M", username:"fdelbonis", password:"asdfasdf", email:"fdelbonis@gmail.com", level:"4.0", area:"East Bay", reveal_age:"Yes", birthday:"1990-10-05", picture:"http://ffaasstt.swide.com/wp-content/uploads/2013/12/Best-young-sports-talent-to-watch-out-for-in-2014-Federico-Delbonis-tennis.jpg"},
  {lname:"Youzhny", fname:"Mikhail", gender:"M", username:"myouzhny", password:"asdfasdf", email:"myouzhny@gmail.com", level:"4.0", area:"San Francisco", reveal_age:"Yes", birthday:"1982-06-25", picture:"http://static2.demotix.com/sites/default/files/imagecache/a_scale_large/1400-1/photos/1348245681-st-petersburg-open-atp-world-tour-tennis-tournament_1466581.jpg"},
  {lname:"Kukushkin", fname:"Mikhail", gender:"M", username:"mkukushkin", password:"asdfasdf", email:"mkukushkin@gmail.com", level:"4.0", area:"Solano", reveal_age:"Yes", birthday:"1987-12-26", picture:"http://www.wearetennis.com/files/players/m/324x274/Mikhail-KUKUSHKIN.jpg"},
  {lname:"Lu", fname:"Yen-hsun", gender:"M", username:"ylu", password:"asdfasdf", email:"ylu@gmail.com", level:"3.5", area:"Solano", reveal_age:"Yes", birthday:"1983-08-14", picture:"http://a2.fssta.com/content/dam/fsdigital/fscom/Tennis/images/2014/10/20/102014-18-TENNIS-Yen-Hsun-Lu-OB-PI.vadapt.620.high.0.jpg"},
  {lname:"Querrey", fname:"Sam", gender:"M", username:"squerrey", password:"asdfasdf", email:"squerrey@gmail.com", level:"4.5", area:"East Bay", reveal_age:"Yes", birthday:"1987-10-07", picture:"http://news.xinhuanet.com/english/photo/2014-01/13/133040522_13895945148281n.jpg"},
  {lname:"Monaco", fname:"Juan", gender:"M", username:"jmonaco", password:"asdfasdf", email:"jmonaco@gmail.com", level:"3.5", area:"South Bay", reveal_age:"Yes", birthday:"1984-03-29", picture:"http://upload.wikimedia.org/wikipedia/commons/9/9c/Juan_Monaco_2007_Australian_Open_R1.jpg"},
  {lname:"Bolelli", fname:"Simone", gender:"M", username:"sbolelli", password:"asdfasdf", email:"sbolelli@gmail.com", level:"4.0", area:"Solano", reveal_age:"Yes", birthday:"1985-10-08", picture:"http://www.tennisworldusa.org/Editor/Img/Simone-Bolelli-img19570_668.jpg"},
  {lname:"Granollers", fname:"Marcel", gender:"M", username:"mgranollers", password:"asdfasdf", email:"mgranollers@gmail.com", level:"4.0", area:"Solano", reveal_age:"Yes", birthday:"1986-04-12", picture:"http://tennis-tips.co.uk/wp-content/uploads/2014/07/granollers.png"},
  {lname:"Istomin", fname:"Denis", gender:"M", username:"distomin", password:"asdfasdf", email:"distomin@gmail.com", level:"3.5", area:"South Bay", reveal_age:"Yes", birthday:"1986-09-07", picture:"http://www.tennis.com.au/wp-content/uploads/2013/04/Istomin-700x450.jpg"},
  {lname:"Schwartzman", fname:"Diego", gender:"M", username:"dschwartzman", password:"asdfasdf", email:"dschwartzman@gmail.com", level:"3.5", area:"Diablo South", reveal_age:"Yes", birthday:"1992-08-16", picture:"http://celebrityemotion.com//wp-content/gallery/diego-schwartzman/Diego-Schwartzman-Argentine-Tennis-Player-Pictures.jpg"},
  {lname:"Pospisil", fname:"Vasek", gender:"M", username:"vpospisil", password:"asdfasdf", email:"vpospisil@gmail.com", level:"3.5", area:"East Bay", reveal_age:"Yes", birthday:"1990-06-23", picture:"http://images.glaciermedia.ca/polopoly_fs/1.622638.1379029561!/fileImage/httpImage/image.jpg_gen/derivatives/landscape_563/tennis-vasek-pospisil.jpg"},
  {lname:"Lorenzi", fname:"Paolo", gender:"M", username:"plorenzi", password:"asdfasdf", email:"plorenzi@gmail.com", level:"3.5", area:"Diablo North", reveal_age:"Yes", birthday:"1981-12-15", picture:"http://australianopen.tennis.it/files/Paolo_Lorenzi_AustralianOpen_9gennaio2012_470-1.jpg"},
  {lname:"Groth", fname:"Sam", gender:"M", username:"sgroth", password:"asdfasdf", email:"sgroth@gmail.com", level:"3.5", area:"Diablo North", reveal_age:"Yes", birthday:"1987-10-19", picture:"http://cdn.fairfaxregional.com.au/silverstone-feed-data/755038c7-964e-4d79-b253-09e74533c495.jpg"},
  {lname:"Baghdatis", fname:"Marcos", gender:"M", username:"mbaghdatis", password:"asdfasdf", email:"mbaghdatis@gmail.com", level:"3.5", area:"Peninsula", reveal_age:"Yes", birthday:"1985-06-17", picture:"http://www.theage.com.au/ffximage/2006/09/01/GALL_AGASSI_SS6_gallery__301x400.jpg"},
  {lname:"Andujar", fname:"Pablo", gender:"M", username:"pandujar", password:"asdfasdf", email:"pandujar@gmail.com", level:"3.5", area:"Diablo North", reveal_age:"Yes", birthday:"1986-01-23", picture:"http://images.lpcdn.ca/641x427/201305/10/686523-pablo-andujar-classe-113e-mondial.jpg"},
  {lname:"Jaziri", fname:"Malek", gender:"M", username:"mjaziri", password:"asdfasdf", email:"mjaziri@gmail.com", level:"3.5", area:"Solano", reveal_age:"Yes", birthday:"1984-01-20", picture:"http://www.tennisviewmag.com/sites/default/files/resize/Jaziri-715x476.jpg"},
  {lname:"Berlocq", fname:"Carlos", gender:"M", username:"cberlocq", password:"asdfasdf", email:"cberlocq@gmail.com", level:"3.0", area:"East Bay", reveal_age:"Yes", birthday:"1983-02-03", picture:"http://www.stevegtennis.com/wp-content/uploads/Carlos-Berlocq.jpg"},
  {lname:"Nieminen", fname:"Jarkko", gender:"M", username:"jnieminen", password:"asdfasdf", email:"jnieminen@gmail.com", level:"3.5", area:"South Bay", reveal_age:"Yes", birthday:"1981-07-23", picture:"http://www.atpworldtour.com/~/media/812D9AEBDF71440B8E8148C3CC697F96.ashx"},
  {lname:"Bellucci", fname:"Thomaz", gender:"M", username:"tbellucci", password:"asdfasdf", email:"tbellucci@gmail.com", level:"3.5", area:"Peninsula", reveal_age:"Yes", birthday:"1987-12-30", picture:"http://1.bp.blogspot.com/-c_5hQzByhYs/UEr1M722zCI/AAAAAAAAAW0/NSdqEVSFlJo/s1600/Thomaz%2BBellucci_.jpg"},
  {lname:"Lajovic", fname:"Dusan", gender:"M", username:"dlajovic", password:"asdfasdf", email:"dlajovic@gmail.com", level:"3.0", area:"South Bay", reveal_age:"Yes", birthday:"1990-06-30", picture:"http://static.sportskeeda.com/wp-content/uploads/2014/06/494818965-1401696625.jpg"},
  {lname:"Matosevic", fname:"Marinko", gender:"M", username:"mmatosevic", password:"asdfasdf", email:"mmatosevic@gmail.com", level:"3.0", area:"Diablo South", reveal_age:"Yes", birthday:"1985-08-08", picture:"http://cdn.images.express.co.uk/img/dynamic/72/590x/Matosevic-Murray-552988.jpg"},
  {lname:"Gabashvili", fname:"Teymuraz", gender:"M", username:"tgabashvili", password:"asdfasdf", email:"tgabashvili@gmail.com", level:"3.0", area:"San Francisco", reveal_age:"Yes", birthday:"1985-05-23", picture:"https://s.yimg.com/bt/api/res/1.2/bzX6kQjajhTK_ipNxlH_Rw--/YXBwaWQ9eW5ld3M7Zmk9aW5zZXQ7aD03MjA7aWw9cGxhbmU7cT03NTt3PTUxMg--/http://media.zenfs.com/en_us/News/Reuters/2015-01-05T183025Z_1639973064_GM1EB1606VH01_RTRMADP_3_TENNIS-MEN.JPG"},
  {lname:"Smyczek", fname:"Tim", gender:"M", username:"tsmyczek", password:"asdfasdf", email:"tsmyczek@gmail.com", level:"3.0", area:"South Bay", reveal_age:"Yes", birthday:"1987-12-30", picture:"http://s.ndtvimg.com/images/content/2015/jan/806/tim-smyczek-1.jpg"},
  {lname:"Coric", fname:"Borna", gender:"M", username:"bcoric", password:"asdfasdf", email:"bcoric@gmail.com", level:"3.0", area:"Peninsula", reveal_age:"Yes", birthday:"1996-11-14", picture:"http://www3.pictures.zimbio.com/gi/Borna%2BCoric%2BWimbledon%2BTennis%2BChampionships%2BzldbBG2Wt8ql.jpg"},
  {lname:"Soeda", fname:"Go", gender:"M", username:"gsoeda", password:"asdfasdf", email:"gsoeda@gmail.com", level:"3.0", area:"Solano", reveal_age:"Yes", birthday:"1984-09-05", picture:"https://10nis4all.files.wordpress.com/2010/07/soeda.jpg"},
  {lname:"Rola", fname:"Blaz", gender:"M", username:"brola", password:"asdfasdf", email:"brola@gmail.com", level:"3.0", area:"Diablo South", reveal_age:"Yes", birthday:"1990-10-05", picture:"http://grfx.cstv.com/photos/schools/osu/sports/m-tennis/auto_action/8819681.jpeg"},
  {lname:"Souza", fname:"Joao", gender:"M", username:"jsouza", password:"asdfasdf", email:"jsouza@gmail.com", level:"3.0", area:"Diablo South", reveal_age:"Yes", birthday:"1988-05-27", picture:"http://www1.pictures.zimbio.com/gi/Joao%2BSouza%2B2013%2BUS%2BOpen%2BDay%2B7%2B8W0XI2WAanZl.jpg"},
  {lname:"Stepanek", fname:"Radek", gender:"M", username:"rstepanek", password:"asdfasdf", email:"rstepanek@gmail.com", level:"3.5", area:"Diablo North", reveal_age:"Yes", birthday:"1978-11-27", picture:"http://images2.fanpop.com/image/photos/11900000/radek-stepanek-face-tennis-11953078-800-600.jpg"},
  {lname:"Lacko", fname:"Lukas", gender:"M", username:"llacko", password:"asdfasdf", email:"llacko@gmail.com", level:"2.5", area:"San Francisco", reveal_age:"Yes", birthday:"1987-11-03", picture:"http://i206.photobucket.com/albums/bb178/baby_nathii/tennisalternative/lacko.jpg"},
  {lname:"Dzumhur", fname:"Damir", gender:"M", username:"ddzumhur", password:"asdfasdf", email:"ddzumhur@gmail.com", level:"3.0", area:"Peninsula", reveal_age:"Yes", birthday:"1992-05-20", picture:"http://www3.pictures.zimbio.com/gi/Damir%252BDzumhur%252BU%252BS%252BOpen%252BDay%252B11%252BUWl3dGBkklal.jpg"},
  {lname:"Ito", fname:"Tatsuma", gender:"M", username:"tito", password:"asdfasdf", email:"tito@gmail.com", level:"2.5", area:"Solano", reveal_age:"Yes", birthday:"1988-05-18", picture:"http://www.itftennis.com/media/129333/129333.jpg"},
  {lname:"Berankis", fname:"Ricardas", gender:"M", username:"rberankis", password:"asdfasdf", email:"rberankis@gmail.com", level:"3.0", area:"Diablo South", reveal_age:"Yes", birthday:"1990-06-21", picture:"http://cdn.c.photoshelter.com/img-get/I0000nVbsaxWjwLM/s/900/900/Ricardas-Berankis-02052015-b0005.jpg"},
  {lname:"Melzer", fname:"Jurgen", gender:"M", username:"jmelzer", password:"asdfasdf", email:"jmelzer@gmail.com", level:"3.0", area:"Diablo South", reveal_age:"Yes", birthday:"1981-05-22", picture:"http://www4.pictures.zimbio.com/gi/Jurgen%2BMelzer%2BWimbledon%2BTennis%2BChampionships%2BcEXyBBAjsahl.jpg"},
  {lname:"Montanes", fname:"Albert", gender:"M", username:"amontanes", password:"asdfasdf", email:"amontanes@gmail.com", level:"2.5", area:"Peninsula", reveal_age:"Yes", birthday:"1980-11-26", picture:"http://www4.pictures.zimbio.com/gi/Albert%2BMontanes%2BATP%2BTennis%2BOpen%2BSud%2Bde%2BFrance%2BabVdCCMxCiNl.jpg"},
  {lname:"Dodig", fname:"Ivan", gender:"M", username:"idodig", password:"asdfasdf", email:"idodig@gmail.com", level:"2.5", area:"Solano", reveal_age:"Yes", birthday:"1985-01-02", picture:"http://www.wearetennis.com/files/players/m/324x274/Ivan-DODIG.jpg"},
  {lname:"Dustov", fname:"Farrukh", gender:"M", username:"fdustov", password:"asdfasdf", email:"fdustov@gmail.com", level:"2.5", area:"San Francisco", reveal_age:"Yes", birthday:"1986-05-22", picture:"https://proworldtennis.files.wordpress.com/2014/12/farrukh2.jpg"},
  {lname:"Almagro", fname:"Nicolas", gender:"M", username:"nalmagro", password:"asdfasdf", email:"nalmagro@gmail.com", level:"2.5", area:"Diablo South", reveal_age:"Yes", birthday:"1985-08-21", picture:"http://www.tennisticketstoday.com/images/nicolas-almagro.jpg"},
  {lname:"Hewitt", fname:"Lleyton", gender:"M", username:"lhewitt", password:"asdfasdf", email:"lhewitt@gmail.com", level:"2.5", area:"Solano", reveal_age:"Yes", birthday:"1981-02-24", picture:"http://www.smh.com.au/ffximage/2008/03/04/lleyton_hewitt_wideweb__470x327,0.jpg"},
  {birthday:"1989-02-07", lname:"Gonzalez", fname:"Alejandro", gender:"M", username:"agonzalez", password:"asdfasdf", email:"agonzalez@gmail.com", level:"2.5", area:"Solano", reveal_age:"Yes", picture:"http://tennis-tips.co.uk/wp-content/uploads/2014/07/rosol-672x372.jpg"},
  {lname:"Kamke", fname:"Tobias", gender:"M", username:"tkamke", password:"asdfasdf", email:"tkamke@gmail.com", level:"2.5", area:"Solano", reveal_age:"Yes", birthday:"1986-05-21", picture:"http://www.spox.com/de/sport/mehrsport/tennis/1306/Bilder/tobias-kamke-halle-514.jpg"},
  {lname:"Sela", fname:"Dudi", gender:"M", username:"dsela", password:"asdfasdf", email:"dsela@gmail.com", level:"2.5", area:"East Bay", reveal_age:"Yes", birthday:"1985-04-04", picture:"http://www.haaretz.com/polopoly_fs/1.609498.1423574123!/image/2010387736.jpg_gen/derivatives/landscape_640/2010387736.jpg"},
  {lname:"Brown", fname:"Dustin", gender:"M", username:"dbrown", password:"asdfasdf", email:"dbrown@gmail.com", level:"2.5", area:"San Francisco", reveal_age:"Yes", birthday:"1984-11-04", picture:"http://i2.cdnds.net/14/26/618x377/dustin-brown.jpg"},
  {birthday:"1988-08-17", lname:"Larsson", fname:"Johanna", gender:"F", username:"jlarsson", password:"asdfasdf", email:"jlarsson@gmail.com", level:"4.0", area:"Diablo South", reveal_age:"Yes", picture:"http://www3.pictures.zimbio.com/gi/Sony%2BOpen%2BTennis%2BDay%2B2%2BBoT3gryqoQPx.jpg"},
  {birthday:"1989-01-21", lname:"Zhang", fname:"Shuai", gender:"F", username:"szhang", password:"asdfasdf", email:"szhang@gmail.com", level:"3.5", area:"Diablo South", reveal_age:"Yes", picture:"http://www3.pictures.zimbio.com/gi/Shuai%2BZhang%2BWTA%2BDubai%2BBarclays%2BTennis%2BChampionship%2Bu4WQhfd1PD9l.jpg"},
  {birthday:"1992-01-14", lname:"Wang", fname:"Qiang", gender:"F", username:"qwang", password:"asdfasdf", email:"qwang@gmail.com", level:"3.0", area:"South Bay", reveal_age:"Yes", picture:"http://news.xinhuanet.com/english/titlepic/133679363_title1n.jpg"},
  {birthday:"1996-4-16", lname:"Townsend", fname:"Taylor", gender:"F", username:"ttownsend", password:"asdfasdf", email:"ttownsend@gmail.com", level:"2.5", area:"East Bay", reveal_age:"Yes", picture:"http://i.dailymail.co.uk/i/pix/2012/09/07/article-2200045-14E5C3B3000005DC-211_634x819.jpg"},
  {birthday:"1992-05-02", lname:"Torró-flor", fname:"Maria-teresa", gender:"F", username:"mtorró-flor", password:"asdfasdf", email:"mtorró-flor@gmail.com", level:"3.0", area:"Diablo South", reveal_age:"Yes", picture:"http://www3.pictures.zimbio.com/gi/Maria%2BTeresa%2BTorro%2BFlor%2BSony%2BEricsson%2BOpen%2BuwmCkJpFgAVl.jpg"},
  {birthday:"1986-03-28", lname:"Zahlavova strycova", fname:"Barbora", gender:"F", username:"bzahlavova", password:"asdfasdf", email:"bzahlavova strycova@gmail.com", level:"5.0", area:"San Francisco", reveal_age:"Yes", picture:"http://img002.lazygirls.info/people/barbora_zahlavova_strycova/barbora_zahlavova_strycova_tennis_4k1FwjO.sized.jpg"},
  {birthday:"1988-09-03", lname:"Suárez navarro", fname:"Carla", gender:"F", username:"csuárez", password:"asdfasdf", email:"csuárez navarro@gmail.com", level:"5.5+", area:"South Bay", reveal_age:"Yes", picture:"http://www3.pictures.zimbio.com/gi/Carla%2BSuarez%2BNavarro%2BWimbledon%2BTennis%2BChampionships%2BYSA3dT8jxipl.jpg"},
  {birthday:"1985-08-07", lname:"Gimeno-traver", fname:"Daniel", gender:"M", username:"dgimeno-traver", password:"asdfasdf", email:"dgimeno-traver@gmail.com", level:"2.5", area:"Diablo North", reveal_age:"Yes", picture:"http://www.livetennisguide.com/wp-content/uploads/Daniel-Gimeno-Traver-vs-Andreas-Beck.jpg"},
  {birthday:"1988-04-14", lname:"Bautista agut", fname:"Roberto", gender:"M", username:"rbautista", password:"asdfasdf", email:"rbautista agut@gmail.com", level:"5.5+", area:"South Bay", reveal_age:"Yes", picture:"http://aposta10.com/wordpress/wp-content/uploads/2015/01/Bautista-Agut.jpg"},
  {birthday:"1980-08-02", lname:"Estrella burgo", fname:"Victor", gender:"M", username:"vestrella", password:"asdfasdf", email:"vestrella burgos@gmail.com", level:"4.0", area:"San Francisco", reveal_age:"Yes", picture:"http://www1.pictures.zimbio.com/gi/Victor%2BEstrella%2BBurgos%2BCiti%2BOpen%2BDay%2B2%2BR-PomfCluQql.jpg"}

]




meetings = [
  {title: "Looking for a 4th",
    about: "one of our guys is out of town and we're looking for somebody to fill in",
    max_players: 4
  },
  {title: "Monday night dubs",
    about: "The same ol group, any new comers welcome",
    max_players: 0
  },
  {title: "League match",
    about: "We playing the Golden Gate Park team at home.  I will make a lineup based on available players",
    max_players: 0,
    level: ["4.5"]
  },
  {title: "league match",
    about: "We playing the SFTC team at home.  I will make a lineup based on available players",
    max_players: 0,
    level: ["4.5"]
  },
  {title: "league match",
    about: "We playing the Balboa Park team at home.  I will make a lineup based on available players",
    max_players: 0,
    level: ["4.5"]
  },
  {title: "Looking for some singles",
    about: "I'm new to town and looking for somebody to hit with",
    max_players: 2
  },
  {title: "Team Practice",
    about: "this is a team practice but we welcome new players",
    max_players: 0
  },
  {title: "Morning doubles",
    about: "Who's up for some tennis?  We can play for lunch if everybody's down.",
    max_players: 4
  },
  {title: "Open level hitting",
    about: "Looking for some high level players to hit with",
    max_players: 0,
    level: ["5.5+"]
  },
  {title: "Beginner tennis",
    about: "I just started playing and am looking for people to play with",
    max_players: 4,
    level: ["2.5"]
  },
  {title: "Daytime tennis",
    about: "I'm unemployed right now and looking for people that can play during the day",
    max_players: 2,
    time: "2000-01-01 12:00:00 UTC",
  },
  {title: "BBQ!",
    about: "We're having a bbq, the more the merrier but please accept if you are coming so we can get head count",
    max_players: 0,
    time: "2000-01-01 11:00:00 UTC",
    level: ['2.5', '3.0', '3.5', '4.0', '4.5', '5.0', '5.5+'],
  },
  {title: "Last minute tennis",
    about: "My buddy just canceled on me, anybody up for a hit?",
    max_players: 2
  },
  {title: "Looking to meet new people",
    about: "I'm new to the area and looking for people to hit with.  Preferably somebody close to my level, but all welcome",
    max_players: 2}
  ]


LOCATIONS = [
  {area: "South Bay",	location: "Almaden Valley Athletic Club"},
  {area: "Sacramento",	location: "Auburn Racquet & Fitness Club"},
  {area: "Peninsula",	location: "Pacific Athletic Club"},
  {area: "South Bay",	location: "Bay Club - Santa Clara"},
  {area: "San Francisco",	location: "Bay Club San Francisco Tennis"},
  {area: "Diablo South",	location: "Bay Trees Tennis Park"},
  {area: "Solano",	location: "Benicia High School"},
  {area: "Diablo South",	location: "Blackhawk Country Club"},
  {area: "Sacramento",	location: "Broadstone Racquet Club"},
  {area: "San Francisco",	location: "California Tennis Club"},
  {area: "Monterey Bay",	location: "Carmel Valley Athletic Club"},
  {area: "East Bay",	location: "Claremont Resort & Spa"},
  {area: "Fresno",	location: "Clovis North High School"},
  {area: "Diablo South",	location: "Clubsport Fremont"},
  {area: "Diablo South",	location: "Clubsport of Pleasanton"},
  {area: "Diablo South",	location: "Club Sport San Ramon"},
  {area: "Diablo North",	location: "Clubsport Valley Vista"},
  {area: "Fresno",	location: "Copper River Country Club"},
  {area: "Peninsula",	location: "Courtside Club"},
  {area: "Diablo South",	location: "Crow Canyon Country Club"},
  {area: "Peninsula",	location: "Cubberley Center"},
  {area: "Peninsula",	location: "Cuesta Tennis Center"},
  {area: "Peninsula",	location: "Cupertino Sports Center"},
  {area: "East Bay",	location: "Davie Tennis Stadium"},
  {area: "Diablo South",	location: "Diablo Country Club"},
  {area: "Diablo North",	location: "Diamond Hills"},
  {area: "East Bay",	location: "Mervyn Morris Park"},
  {area: "South Bay",	location: "Evergreen Valley College"},
  {area: "South Bay",	location: "Fair Oaks West Apartments"},
  {area: "Peninsula",	location: "Edgewater Park"},
  {area: "Peninsula",	location: "Fremont Hills Country Club"},
  {area: "Diablo South",	location: "Fremont Tennis Center"},
  {area: "San Francisco",	location: "Gellert Park"},
  {area: "Monterey Bay",	location: "Gilroy Tennis Center"},
  {area: "San Francisco",	location: "San Francisco State University"},
  {area: "Sacramento",	location: "Gold River Racquet Club"},
  {area: "San Francisco",	location: "Golden Gate Park Tennis Complex"},
  {area: "San Francisco",	location: "Golden Gateway Tennis & Swim Club"},
  {area: "East Bay",	location: "Harbor Bay Club"},
  {area: "Marin",	location: "Harbor Point Tennis Club"},
  {area: "Peninsula",	location: "Highlands Rec Center San Mateo"},
  {area: "Fresno",	location: "Cliff Drysdale Tennis-Visalia"},
  {area: "Central Valley",	location: "In Shape Sports Club"},
  {area: "Monterey Bay",	location: "Jade Street Park"},
  {area: "Peninsula",	location: "Addison Penzak Jewish Community Center"},
  {area: "Sacramento",	location: "Johnson Ranch Racquet Club"},
  {area: "South Bay",	location: "Kona Kai Swim & Racquet Club"},
  {area: "Sonoma",	location: "La Cantera Racquet Club"},
  {area: "Peninsula",	location: "Ladera Oaks Swim and Tennis Club"},
  {area: "Diablo North",	location: "Lafayette Tennis Club"},
  {area: "Sacramento",	location: "Laguna Creek Racquet Club"},
  {area: "Marin",	location: "Lagunitas Country Club"},
  {area: "Peninsula",	location: "Los Altos Golf & Country Club"},
  {area: "Peninsula",	location: "Los Gatos Swim & Racquet Club"},
  {area: "Marin",	location: "Marin Tennis Club"},
  {area: "Sacramento",	location: "McKinley Park"},
  {area: "East Bay",	location: "Memorial Park (Albany)"},
  {area: "Peninsula",	location: "Menlo Circus Club"},
  {area: "Marin",	location: "Mill Valley Tennis Club"},
  {area: "Sacramento",	location: "Millennium by In-Shape El Dorado"},
  {area: "Solano",	location: "Millennium by In Shape Rancho Solano"},
  {area: "Solano",	location: "Millennium by In-Shape Browns Valley"},
  {area: "Diablo South",	location: "Mission Hills Athletic Club"},
  {area: "Monterey Bay",	location: "Monterey Tennis Center"},
  {area: "Diablo North",	location: "Moraga Country Club"},
  {area: "South Bay",	location: "Almaden Swim and Racquet Club"},
  {area: "Marin",	location: "Mt Tam Racquet Club"},
  {area: "Sacramento",	location: "Natomas Racquet Club"},
  {area: "Central Valley",	location: "Oak Park Tennis Complex"},
  {area: "San Francisco",	location: "Olympic Club"},
  {area: "Sacramento",	location: "Park Terrace Swim Tennis Club"},
  {area: "Peninsula",	location: "Peninsula Golf & Country Club"},
  {area: "Sonoma",	location: "Petaluma Valley Athletic Club"},
  {area: "Marin",	location: "Pioneer Park"},
  {area: "Diablo South",	location: "Pleasanton Tennis and Community Park"},
  {area: "Marin",	location: "Rafael Racquet Club"},
  {area: "East Bay",	location: "Refugio Valley Park"},
  {area: "Monterey Bay",	location: "Ridgemark Golf & Country Club"},
  {area: "Sacramento",	location: "Rio Del Oro Racquet Club"},
  {area: "Marin",	location: "Rolling Hills Club"},
  {area: "Sacramento",	location: "Rollingwood Racquet Club"},
  {area: "Diablo South",	location: "Round Hill Country Club"},
  {area: "San Francisco",	location: "San Bruno City Park"},
  {area: "Peninsula",	location: "Arguello Park"},
  {area: "South Bay",	location: "San Jose Swim Racquet Club"},
  {area: "Sonoma",	location: "Santa Rosa High"},
  {area: "Peninsula",	location: "Saratoga Country Club"},
  {area: "Monterey Bay",	location: "Seascape Sports Club"},
  {area: "Fresno",	location: "Sierra Sport Racquet Club"},
  {area: "South Bay",	location: "Silver Creek Valley Country Club"},
  {area: "Central Valley",	location: "Sportsmen of Stanislaus"},
  {area: "South Bay",	location: "Sunnyvale Municipal Tennis Center"},
  {area: "Marin",	location: "Tiburon Peninsula Club"},
  {area: "Central Valley",	location: "Twin Arbors Athletic Club"},
  {area: "Diablo South",	location: "Veterans' Memorial Park"},
  {area: "Peninsula",	location: "University Club of Palo Alto"},
  {area: "Peninsula",	location: "Valley Church"},
  {area: "South Bay",	location: "Wallenberg Park"},
  {area: "Diablo North",	location: "Walnut Country-Crossings"},
  {area: "Diablo North",	location: "Walnut Creek Tennis Center"},
  {area: "East Bay",	location: "Washington Park"},
  {area: "Diablo North",	location: "Willow Pass Park"},
  {area: "Sacramento",	location: "Yuba City Racquet Club"}
]

LEVELS = ["2.5","3.0","3.5","4.0","4.5","5.0","5.5+"]
GENDERS = ["M", "F"]
AGE_GROUPS = ['1-18','18-40','40-55','55-65','65+']


def create_meeting!(attrs)
  meeting = Meeting.new()
  objs_to_create = []
  attrs.each do |attr, value|
    if value.class.name == "Array"
      value.each do |value|
        attr_model = str_to_class(attr).where(attr => value).first
        allowed_obj_class = str_to_class("allowed_#{attr}")
        objs_to_create << allowed_obj_class.new({"#{attr}_id" => attr_model.id})
      end
    else
      meeting[attr] = value
    end
  end
  meeting.save!
  objs_to_create.each do |obj|
    obj.meeting_id = meeting.id
    obj.save!
  end

  meeting
end

def str_to_class(str)
  return str.to_s.singularize.camelize.constantize
end




def random_meeting(meetings)
  template = meetings.sample
  meeting = {}
  location = LOCATIONS.sample
  meeting[:area] = location[:area]
  meeting[:location] = location[:location]
  meeting[:title] = template[:title]
  meeting[:about] = template[:about]
  meeting[:max_players] = template[:max_players]
  meeting[:date] = template[:date] || random_date
  meeting[:time] = template[:date] || random_time
  meeting[:public] = "Yes"
  meeting[:level] = template[:level] || random_subset(LEVELS)
  meeting[:gender] = random_subset(GENDERS)
  meeting[:age_group] = random_subset(AGE_GROUPS)
  meeting[:age_group] << '18-40' unless meeting[:age_group].include?('18-40')
  meeting[:organizer_id] = random_organizer(meeting).id


  meeting

end

def random_organizer(meet)
  organizers = []
  ALL_USERS.each do |user|
    if meet[:level].include?(user[:level]) &&
      meet[:gender].include?(user[:gender])
      organizers << user
    end
  end
  begin
  User.find_by(lname: (organizers.sample)[:lname])
  rescue
debugger
  end
end

RESPONSES = ["accepted", "maybe", "declined"]

def create_responses(meeting)
  responders = []
  Response.create!({respondent_id: meeting[:organizer_id], meeting_id: meeting.id,  response_status: "accepted"})
  ALL_USERS.each do |user|
    if meeting.levels.find_by(level: user[:level]) &&
       meeting.genders.find_by(gender: user[:gender])
       responders << user
    end
  end
  max_players = meeting[:max_players] == 0 ? 15 : meeting[:max_players]
  max_responders = responders.length > max_players ? max_players + 6 : responders.length
  responders = responders.sample(rand(2..max_responders))
  accepts = 1
  responders.each do |responder|
    responder = User.find_by(lname: responder[:lname])
    responses = ["maybe", "declined"]
    responses << "accepted" if accepts < max_players
    response = responses.sample
    accepts += 1 if response == "accepted"
    Response.create!({respondent_id: responder.id, meeting_id: meeting.id,  response_status: response})
  end
end

def random_date
  date = (Date.today + (rand * 90)) - 30
end

def random_subset(choices)
  first = rand(0..choices.length)
  last = rand(2..choices.length)
  first, last = last, first if first > last
  if last-first == 0
    if choices.length == first
      first -= 1
    else
      last += 1
    end
  end

  choices[first..last]
end

def random_time
  hour = rand(6..21)
  hour < 10 ? hour = "0#{hour.to_s}" : hour = hour.to_s

  "2000-01-01 #{hour}:00:00 UTC"
end


Level.create!([{level: "2.5"},
  {level: "3.0"},
  {level: "3.5"},
  {level: "4.0"},
  {level: "4.5"},
  {level: "5.0"},
  {level: "5.5+"}])
AgeGroup.create!([{age_group: '1-18'},
  {age_group: '18-40'},
  {age_group: '40-55'},
  {age_group: '55-65'},
  {age_group: '65+'}])
Gender.create!([{gender: 'M'}, {gender: 'F'}])
User.create!(ALL_USERS)
User.create!({fname: "Bryce",
  lname: "Young",
  password: "asdfasdf",
  email: "byoung@gmail.com",
  username: "b",
  level: "4.5",
  reveal_age: "no",
  phone_status: "verified"})
100.times do
  meet = create_meeting!(random_meeting(meetings))
  create_responses(meet)
end
