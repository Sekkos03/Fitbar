INSERT INTO meals (name, category, price, description, nutrition_info, image_path, allergies) VALUES
  /* Frokost/Lunsj */
  ('Super Omelette',       'Frokost/Lunsj', 169.00,
    'Omelett fylt med kalkunpålegg og cherrytomater, toppet med cottage cheese og koriander. Serveres med frukt og en skive grillet, glutenfritt brød med extra virgin olivenolje og et dryss havsalt.',
    'Kalorier: 420 kcal; Protein: 36 g; Karbohydrater: 12 g; Fett: 28 g',
    '/images/frokost_lunsj/super_omelette.png',
    'Egg,Milk'
  ),
  ('Greek Yoghurt',        'Frokost/Lunsj', 149.00,
    'Laktosefri gresk yoghurt servert med sprø, glutenfri granola, skiver av banan, søte jordbær og saftige blåbær. Toppes med honning og chiafrø for naturlig sødme.',
    'Kalorier: 390 kcal; Protein: 32 g; Karbohydrater: 40 g; Fett: 14 g',
    '/images/frokost_lunsj/greek_yoghurt.png',
    'Milk'
  ),
  ('Supercado Toast',       'Frokost/Lunsj', 139.00,
    'Toastet glutenfritt brød med kremet most avokado, speilegg og sprø kyllingbacon. Toppes med frisk koriander og et hint av chili flakes for ekstra smak.',
    'Kalorier: 380 kcal; Protein: 30 g; Karbohydrater: 10 g; Fett: 28 g',
    '/images/frokost_lunsj/supercado_toast.png',
    'Egg'
  ),

  /* Wraps */
  ('Mediterraneo',          'Wraps',         199.00,
    'Glutenfri lefse fylt med strimlet kyllingfilet, avokado, cherrytomater, agurk, laktosefri fetaost og hummus. Friske middelhavsvibber – proteinrikt og crave-worthy!',
    'Kalorier: 550 kcal; Protein: 40 g; Karbohydrater: 18 g; Fett: 29 g',
    '/images/wraps/mediterraneo.png',
    'Milk,Sesame'
  ),
  ('Salmon Wrap',           'Wraps',         199.00,
    'Glutenfri lefse fylt med stekt laks, avokado, mango, cherrytomater, rødløk og ruccola. Friskt, sunt og full av feelgood-fett – en wrap som smaker sommer hele året!',
    'Kalorier: 560 kcal; Protein: 43 g; Karbohydrater: 15 g; Fett: 38 g',
    '/images/wraps/salmon_wrap.png',
    'Fish'
  ),
  ('BBQ Cheesesteak',       'Wraps',         199.00,
    'Glutenfri lefse fylt med stekt biffkjøtt, smeltet cheddar, sjampinjong, paprika og rødløk. Saftig, cheesy og proppfull av proteiner.',
    'Kalorier: 615 kcal; Protein: 51 g; Karbohydrater: 20 g; Fett: 40 g',
    '/images/wraps/bbq_cheesesteak.png',
    'Milk'
  ),

  /* Protein Shakes */
  ('Pistachio Explosion',   'Protein Shakes',119.00,
    'Proteinshake med Iso Whey Pistasj, banan, mandelsmør, kokos og 85% mørk sjokolade – blendes med valgfri melk. Toppes med knust pistasj. En kremet og luksuriøs energiboost.',
    'Kalorier: 460 kcal; Protein: 34 g; Karbohydrater: 28 g; Fett: 25 g',
    '/images/protein_shakes/pistachio_explosion.PNG',
    'Milk,Tree nuts'
  ),
  ('Muscle Freak',          'Protein Shakes',119.00,
    'Kraftfull proteinshake med Iso Whey Sjokolade, banan, avocado, eggehvite, mandelsirup, dadler og mørk sjokolade – blendes med valgfri melk og toppes med knust pistasj. Perfekt før eller etter trening.',
    'Kalorier: 480 kcal; Protein: 35 g; Karbohydrater: 32 g; Fett: 24 g',
    '/images/protein_shakes/muscle_freak.PNG',
    'Milk'
  ),
  ('Fitberry',              'Protein Shakes',119.00,
    'Lett og fruktig proteinshake med Iso Whey Vanilje, bringebær, jordbær og blåbær – blendes med valgfri melk. Perfekt balanse mellom søtt, protein og sommerfølelse i hver slurk.',
    'Kalorier: 340 kcal; Protein: 30 g; Karbohydrater: 26 g; Fett: 10 g',
    '/images/protein_shakes/fitberry.png',
    'Milk'
  ),
  ('Dubai Shake',           'Protein Shakes',129.00,
    'Proteinshake inspirert av viral Dubai-sjokolade. Laget med Iso Whey Sjokolade, dadler, kakao, valgfri melk og pistasjtopping. Toppes med crunchy pistasjkjerner og mørk sjokolade. Dessert goals – uten dårlig samvittighet.',
    'Kalorier: 450 kcal; Protein: 32 g; Karbohydrater: 30 g; Fett: 22 g',
    '/images/protein_shakes/dubai_shake.png',
    'Milk'
  ),
  

  /* Protein Iskaffe */
  ('Snickers Eller Protein Latte','Protein Iskaffe',119.00,
    'Iskaffe med Snickers Proteinpulver / Iso Whey Vanilje, kaffe og valgfri melk – smaksatt med sukkefri sirup. Serveres kald med isbiter for en perfekt energiboost og forfriskende dessert.',
    'Kalorier: 300 kcal; Protein: 30 g; Karbohydrater: 20 g; Fett: 12 g',
    '/images/protein_iskaffe/snickers.png',
    'Milk,Peanuts'
  ),
  ('Protein Matcha',        'Protein Iskaffe',129.00,
    'Forfriskende matcha-proteinshake med Iso Whey Vanilje, ekte matchapulver og valgfri melk – servert med isbiter. Harmonisk balanse av grønn te og vanilje, perfekt som naturlig energiboost.',
    'Kalorier: 270 kcal; Protein: 30 g; Karbohydrater: 16 g; Fett: 9 g',
    '/images/protein_iskaffe/protein_matcha.png',
    'Milk'
  ),

  /* Salat Bowls */
  ('Berry Lover',           'Salat Bowls',   199.00,
    'Frisk kyllingsalat med jordbær, blåbær, bringebær og grønt eple. Toppet med granateplekjerner og cottage cheese. Søtt, sprø og full av proteiner – perfekt for deg som vil spise digg og smart!',
    'Kalorier: 520 kcal; Protein: 50 g; Karbohydrater: 20 g; Fett: 24 g',
    '/images/salat_bowls/berry_lover.png',
    'Milk'
  ),
  ('The Chicken Salad',     'Salat Bowls',   199.00,
    'Salatmix toppet med grillet kylling, avocado, speilegg, cherrytomater, agurk og fetaost. Full av smak, protein og god energi – enkel, digg og alltid en vinner!',
    'Kalorier: 565 kcal; Protein: 55 g; Karbohydrater: 16 g; Fett: 30 g',
    '/images/salat_bowls/the_chicken_salad.png',
    'Milk'
  ),

  /* Gainz */
  ('Chicken Cashew',        'Gainz',         279.00,
    'Stekt kyllingbryst servert med basmatiris, stekt sopp, løk og squash. Toppes med koriander, chili flakes, sitronskive og cashewnøtter. En digg kombo som gir både power og smak!',
    'Kalorier: 635 kcal; Protein: 50 g; Karbohydrater: 35 g; Fett: 32 g',
    '/images/gainz/chicken_cashew.png',
    'Tree nuts'
  ),
  ('Power Beef',            'Gainz',         289.00,
    'Stekt biff servert med basmatiris, avocado, cherrytomater og brokkolini. En clean mix av protein og grønnsaker – for deg som vil holde det både digg og driftig.',
    'Kalorier: 655 kcal; Protein: 55 g; Karbohydrater: 25 g; Fett: 38 g',
    '/images/gainz/power_beef.png',
    NULL
  ),
  ('Omega Boost',           'Gainz',         279.00,
    'Stekt laksefilet servert med basmatiris, mango, avocado og cherrytomater. Toppes med sitronpepper, dill og en sitronskive. Friskt, fargerikt og full av feelgood-omega!',
    'Kalorier: 590 kcal; Protein: 44 g; Karbohydrater: 22 g; Fett: 36 g',
    '/images/gainz/omega_boost.png',
    'Fish'
  ),

  /* Protein Smoothie Bowls */
  ('Super Bowl',            'Protein Smoothie Bowls',199.00,
    'Proteinsmoothie med Iso Whey Sjokolade, banan, mandelsmør, kakao og valgfri melk – toppet med glutenfri granola, kokosflakes og biter av mørk sjokolade. Smaker dessert – funker som fuel!',
    'Kalorier: 420 kcal; Protein: 32 g; Karbohydrater: 30 g; Fett: 20 g',
    '/images/protein_smoothie_bowls/super_bowl.png',
    'Milk'
  ),
  ('Berry Explosion',       'Protein Smoothie Bowls',199.00,
    'Proteinsmoothie med Iso Whey Vanilje, bærmix og valgfri melk – toppet med jordbær, blåbær, bringebær, chiafrø og granola. Frisk, fyldig og full av protein – perfekt før eller etter økta!',
    'Kalorier: 390 kcal; Protein: 30 g; Karbohydrater: 28 g; Fett: 18 g',
    '/images/protein_smoothie_bowls/berry_explosion.png',
    'Milk'
  ),
  ('Acai Boost',            'Protein Smoothie Bowls',199.00,
    'Protein Açai-bowl med Iso Whey Vanilje, banan, blåbær og valgfri melk. Toppet med glutenfri granola, kokosflakes, bananskiver, peanøttsmør og blåbær. Perfekt som frokost, lunsj eller snack!',
    'Kalorier: 580 kcal; Protein: 15 g; Karbohydrater: 70 g; Fett: 25 g',
    '/images/protein_smoothie_bowls/acai_boost.png',
    'Milk,Peanuts'
  ),

  /* Wellness Shots */
  ('Supershot',             'Wellness Shots', 39.00,
    'Gylden shot med ingefær, økologisk honning og eplesidereddik – toppet med et hint av svart pepper for optimal effekt. En kraftfull og balansert boost for kropp og immunforsvar.',
    NULL,
    '/images/wellness_shots/supershot.PNG',
    NULL
  ),
  ('Hotshot',               'Wellness Shots', 39.00,
    'Frisk og kraftfull shot med presset sitron og ingefær – toppet med et kick av cayennepepper. En intens liten boost for immunforsvaret og energinivået.',
    NULL,
    '/images/wellness_shots/hotshot.PNG',
    NULL
  )
;
