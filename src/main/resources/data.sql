INSERT INTO meals (name, category, price, description, nutrition_info, image_path, allergies) VALUES
  /* Frokost/Lunsj */
  ('Greek Yoghurt',        'Frokost/Lunsj', 149.00,
    'Gresk yoghurt med granola, banan, jordbær og blåbær. Toppes med honning og chiafrø.',
    'Kalorier: 390 kcal; Protein: 32 g; Karbohydrater: 40 g; Fett: 14 g',
    '/images/frokost_lunsj/greek_yoghurt.png',
    'Melk'
  ),
  ('Supercado Toast',       'Frokost/Lunsj', 139.00,
    'Toastet brød med most avokado, cherrytomater, stekt kyllingbacon og speilegg. Toppes med koriander og chili flakes.',
    'Kalorier: 380 kcal; Protein: 30 g; Karbohydrater: 10 g; Fett: 28 g',
    '/images/frokost_lunsj/supercado_toast.png',
    'Egg'
  ),

  /* Wraps */
  ('Mediterraneo',          'Wraps',         199.00,
    'Lefse fylt med strimlet kyllingfilet, avokado, cherrytomater, agurk, laktosefri fetaost og hummus. Friske middelhavsvibber – proteinrikt og garantert crave-worthy!',
    'Kalorier: 550 kcal; Protein: 40 g; Karbohydrater: 18 g; Fett: 29 g',
    '/images/wraps/mediterraneo.png',
    'Melk og Sesame'
  ),
  ('Vegan Wrap',           'Wraps',         199.00,
    'Lefse fylt med kidneybønner, avokado, cherrytomater, agurk, salat, løk og hummus.

Helt veggiss og helt rå.',
    'Kalorier: 560 kcal; Protein: 43 g; Karbohydrater: 15 g; Fett: 38 g',
    '/images/wraps/vegan_wrap.png',
    'Fisk'
  ),
  ('BBQ Cheesesteak',       'Wraps',         199.00,
    'Lefse fylt med stekt biffkjøtt, smeltet cheddar, stekt sjampinjong, paprika og rødløk. 

Sunn mat i junk-forkledning. Digg nok for lørdag - bra nok for mandag.',
    'Kalorier: 615 kcal; Protein: 51 g; Karbohydrater: 20 g; Fett: 40 g',
    '/images/wraps/bbq_cheesesteak.png',
    'Melk'
  ),

  /* Protein Shakes */
  ('Pistachio Explosion',   'Protein Shakes',119.00,
    'Iso Whey Pistasj, banan, mandelsmør, kokos og 85% mørk sjokolade – blendes med valgfri melk. Toppes med knust pistasj. En kremet og luksuriøs energiboost med smak av ekte pistasj.',
    'Kalorier: 460 kcal; Protein: 34 g; Karbohydrater: 28 g; Fett: 25 g',
    '/images/protein_shakes/pistachio_explosion.png',
    'Melk og Nøtter'
  ),
  ('Muscle Freak',          'Protein Shakes',119.00,
    'Iso Whey Sjokolade, banan, avokado, eggehvite, mandelsmør, dadler, biter av 85% mørk sjokolade og valgfri melk. Toppes med knust mørk sjokolade. Perfekt som næringsrik drivstoff før eller etter trening.',
    'Kalorier: 480 kcal; Protein: 35 g; Karbohydrater: 32 g; Fett: 24 g',
    '/images/protein_shakes/muscle_freak.png ',
    'Melk'
  ),
  ('Fitberry',              'Protein Shakes',119.00,
    'Iso Whey Vanilje, bringebær, jordbær og blåbær – blendes med valgfri melk. En perfekt balanse mellom sødme, protein og sommerfølelse i hver slurk.',
    'Kalorier: 340 kcal; Protein: 30 g; Karbohydrater: 26 g; Fett: 10 g',
    '/images/protein_shakes/fitberry.png',
    'Melk'
  ),
  ('Dubai Shake',           'Protein Shakes',129.00,
    'Iso Whey Sjokolade, dadler, kakao, valgfri melk og pistasjekrem. Toppes med pistasjnøtter og mørk sjokolade. En digg proteinshake inspirert av den virale Dubai-sjokoladen.',
    'Kalorier: 450 kcal; Protein: 32 g; Karbohydrater: 30 g; Fett: 22 g',
    '/images/protein_shakes/dubai_shake.png',
    'Melk'
  ),
  

  /* Protein Iskaffe */
  ('Snickers Latte','Protein Iskaffe',119.00,
    'Snickers Proteinpulver, kaffe og valgfri melk – smaksatt med sukkerfri karamell- og sjokoladesirup. Serveres iskald med isbiter. En proteinrik og forfriskende energiboost med hint av dessert.',
    'Kalorier: 300 kcal; Protein: 30 g; Karbohydrater: 20 g; Fett: 12 g',
    '/images/protein_iskaffe/snickers.png',
    'Melk og Nøtter'
  ),
  ('Protein Matcha',        'Protein Iskaffe',129.00,
    'Iso Whey Vanilje, matchapulver og valgfri melk – servert iskald med isbiter. En harmonisk balanse av grønn te og vanilje, perfekt som en naturlig energiboost.',
    'Kalorier: 270 kcal; Protein: 30 g; Karbohydrater: 16 g; Fett: 9 g',
    '/images/protein_iskaffe/protein_matcha.png',
    'Melk'
  ),

  ('Power Latte',        'Protein Iskaffe',129.00,
    'Iso Whey Vanilje, kaffe og valgfri melk. Smaksatt med sukkerfri karamellsirup og servert iskald – fyldig, forfriskende og proteinrik latte med god smak i hver slurk.',
    'Kalorier: 270 kcal; Protein: 30 g; Karbohydrater: 16 g; Fett: 9 g',
    '/images/protein_iskaffe/power_latte.png',
    'Melk'
  ),


  /* Gainz */
  ('Chicken Cashew',        'Gainz',         279.00,
    'Stekt kylling servert med basmatiris, stekt sopp, løk og squash. Toppes med koriander, sitron og knuste cashewnøtter.

En smaksrik favoritt med varme og crunch. ',
    'Kalorier: 635 kcal; Protein: 50 g; Karbohydrater: 35 g; Fett: 32 g',
    '/images/gainz/chicken_cashew.png',
    'Nøtter'
  ),
  ('Berry Lover',           'Gainz',   199.00,
    'Salatmix med jordbær, blåbær, bringebær og grønt eple. Toppet med granateplekjerner og cottage cheese.

Frisk, fargerik og full av smak.',
    'Kalorier: 520 kcal; Protein: 50 g; Karbohydrater: 20 g; Fett: 24 g',
    '/images/gainz/berry_lover.png',
    'Melk'
  ),
  ('The Chicken Salad',     'Gainz',   199.00,
    'Salatmix med kyllingfilet i strimler, avokado, egg, cherrytomater, agurk og fetaost.

En klassiker med smak av sommer – lett og mettende.',
    'Kalorier: 565 kcal; Protein: 55 g; Karbohydrater: 16 g; Fett: 30 g',
    '/images/gainz/the_chicken_salad.png',
    'Melk'
  ),

  /* Protein Smoothie Bowls */
  ('Super Bowl',            'Protein Smoothie Bowls',199.00,
    'Iso Whey Sjokolade, banan, mandelsmør, kakao og valgfri melk – toppet med glutenfri granola, kokosflakes og biter av 85% mørk sjokolade. 

Smaker dessert – funker som fuel!
',
    'Kalorier: 420 kcal; Protein: 32 g; Karbohydrater: 30 g; Fett: 20 g',
    '/images/protein_smoothie_bowls/super_bowl.png',
    'Melk'
  ),
  ('Berry Explosion',       'Protein Smoothie Bowls',199.00,
    'Iso Whey Vanilje, bærmix og valgfri melk – toppet med jordbær, blåbær, bringebær, chiafrø og granola.

Frisk, fyldig og full av protein – perfekt før eller etter økta!',
    'Kalorier: 390 kcal; Protein: 30 g; Karbohydrater: 28 g; Fett: 18 g',
    '/images/protein_smoothie_bowls/berry_explosion.png',
    'Melk'
  ),
  ('Acai Boost',            'Protein Smoothie Bowls',199.00,
    'Iso Whey Vanilje, banan, blåbær og valgfri melk. Toppet med glutenfri granola, kokosflakes, bananskiver, peanøttsmør og blåbær. 

Perfekt som frokost, lunsj eller snack!',
    'Kalorier: 580 kcal; Protein: 15 g; Karbohydrater: 70 g; Fett: 25 g',
    '/images/protein_smoothie_bowls/acai_boost.png',
    'Melk og Nøtter'
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
