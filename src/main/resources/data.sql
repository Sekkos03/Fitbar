INSERT INTO meals (name, category, price, description, allergies, image_path, nutrition_info) VALUES
  /* Breakfast/Lunch */
  ('Super Omelette',     'Breakfast/Lunch', 169.00, 'Egg, kalkun pålegg, cottage cheese, cherrytomater, koriander. Serveres med en liten bolle fersk frukt (mango, druer, kiwi og ananas).', NULL, '/images/breakfast/super_omelette.png', NULL),
  ('Green Veggie Omelette','Breakfast/Lunch',169.00,'Egg, avokado, brokkoli, asparges, sopp, cherrytomater, spinat, paprika, rødløk. Serveres med en liten bolle fersk frukt (mango, druer, kiwi og ananas).', NULL, '/images/breakfast/green_veggie_omelette.png', NULL),
  ('Greek Yoghurt',       'Breakfast/Lunch', 129.00,'Gresk yoghurt (laktosefri) med glutenfri granola, banan, blåbær og jordbær, toppes med honning.', NULL, '/images/breakfast/greek_yoghurt.png', NULL),
  ('Supercado Toast',      'Breakfast/Lunch',  79.00,'Toastet glutenfri brødskive med most avokado og speilegg. Toppes med kyllingbacon i biter, koriander og chili flakes.', NULL, '/images/breakfast/supercado_toast.png', NULL),

  /* Salt Bowls */
  ('The Salad',           'Salt Bowls',     149.00,'Salatmix med grillet kylling, kokt egg, avokado, cherry tomater, agurk og kikerter.', NULL, '/images/salt_bowls/the_salad.png', NULL),
  ('Berry Lover',         'Salt Bowls',     159.00,'Salatmix med grillet kylling eller halloumi, grønt eple, jordbær, blåbær, bringebær og granateple.', NULL, '/images/salt_bowls/berry_lover.png', NULL),

  /* Wraps */
  ('Vegan Wrap',          'Wraps',          129.00,'Grillet halloumi, avokado, cherrytomater, rødløk og spinat i glutenfri lefse med vegansk dressing.', NULL, '/images/wraps/vegan_wrap.png', NULL),
  ('Salmon Wrap',         'Wraps',          129.00,'Stekt laks, avokado, cherrytomater, rødløk og spinat i glutenfri lefse med agavesenep.', NULL, '/images/wraps/salmon_wrap.png', NULL),
  ('Mediterrano',         'Wraps',          129.00,'Kyllingfilet, avokado, cherrytomater, agurk, laktosefri fetaost og hummus i glutenfri lefse.', NULL, '/images/wraps/mediterrano.png', NULL),
  ('BBQ Cheesesteak',     'Wraps',          129.00,'Biff, cheddar, sjampinjong, paprika og rødløk i glutenfri lefse med BBQ-saus.', NULL, '/images/wraps/bbq_cheesesteak.png', NULL),

  /* Rice Bowls */
  ('Chicken Cashew',      'Rice Bowls',     149.00,'Kylling med basmatiris/quinoa, cashewnøtter, paprika og løk, toppet med koriander og sursøt saus.', NULL, '/images/rice_bowls/chicken_cashew.png', NULL),
  ('Beef',                'Rice Bowls',     169.00,'Strimlet biff med basmatiris/quinoa, avokado, cherrytomater, svarte bønner, paprika og løk, toppet med koriander og sursøt saus.', NULL, '/images/rice_bowls/beef.png', NULL),
  ('The Omega',           'Rice Bowls',     159.00,'Laksefilet med ris/quinoa, cherrytomater, avokado og mango, toppet med linfrø og dill.', NULL, '/images/rice_bowls/the_omega.png', NULL),
  ('Vegan Power',         'Rice Bowls',     149.00,'Halloumi med quinoa, søtpotet, sopp, avokado, rødløk, brokkoli, blomkål, svarte bønner, kikerter og paprika, toppet med knust rødpepper og sririacha-saus.', NULL, '/images/rice_bowls/vegan_power.png', NULL),

  /* Protein Shakes */
  ('Muscle Freak',        'Protein Shakes',  99.00,'Iso Whey Sjokolade, valgfri melk, banan, avocado, eggehvite, mørk sjokolade 85%, mandelsmør, dadler, linolje. Alternativer: Almond milk, Coconut milk, Oatmilk, Laktosefri melk.', NULL, '/images/protein_shakes/muscle_freak.png', NULL),
  ('The Skinny',          'Protein Shakes',  79.00,'Iso Whey Vanilje, valgfri melk, ananas, jordbær. Alternativer: Almond milk, Coconut milk, Oatmilk, Laktosefri melk.', NULL, '/images/protein_shakes/the_skinny.png', NULL),
  ('Almond Dream',        'Protein Shakes',  79.00,'Iso Whey Vanilje, valgfri melk, mandelsmør, glutenfri havregryn, vaniljeis, dadler, honning. Alternativer: Almond milk, Coconut milk, Oatmilk, Laktosefri melk.', NULL, '/images/protein_shakes/almond_dream.png', NULL),
  ('Pistachio Explosion', 'Protein Shakes',  89.00,'Iso Whey Pistasj, valgfri melk, banan, kokos, mørk sjokolade 85%, mandelsmør, linolje med pistasjetopping. Alternativer: Almond milk, Coconut milk, Oatmilk, Laktosefri melk.', NULL, '/images/protein_shakes/pistachio_explosion.png', NULL),
  ('Protein Iskaffe (Snickers)','Protein Shakes',69.00,'Iso Whey Vanilje, Kaffe, hasselnøttsirup, sukkefri sjokoladesirup, sukkerfri karamellsirup, valgfri melk og isbiter. Alternativer: Almond milk, Coconut milk, Oatmilk, Laktosefri melk.', NULL, '/images/protein_shakes/protein_iskaffe_snickers.png', NULL),
  ('Vanilla',             'Protein Shakes',  79.00,'Iso Whey Vanilje, Kaffe, sukkerfri vaniljesirup, valgfri melk og isbiter. Alternativer: Almond milk, Coconut milk, Oatmilk, Laktosefri melk.', NULL, '/images/protein_shakes/vanilla.png', NULL),
  ('Protein Matcha',      'Protein Shakes',  79.00,'Iso Whey Vanilje, Matcha, valgfri melk og isbiter. Alternativer: Almond milk, Coconut milk, Oatmilk, Laktosefri melk.', NULL, '/images/protein_shakes/protein_matcha.png', NULL),

  /* Wellness Shots */
  ('Hotshot',             'Wellness Shots',  39.00,'Sitron og ingefær, toppet med cayennepepper.', NULL, '/images/wellness_shots/hotshot.png', NULL),
<<<<<<< HEAD
  ('Supershot',           'Wellness Shots',  39.00,'Gurkemeie, ingefær, organisk honning og eplesidereddik, toppet med svart pepper.', NULL, '/images/wellness_shots/supershot.png', NULL)
;
=======
<<<<<<< HEAD
  ('Supershot',           'Wellness Shots',  39.00,'Gurkemeie, ingefær, organisk honning og eplesidereddik, toppet med svart pepper.', NULL, '/images/wellness_shots/supershot.png', NULL)
;
=======
  ('Supershot',           'Wellness Shots',  39.00,'Gurkemeie, ingefær, organisk honning og eplesidereddik, toppet med svart pepper.', NULL, '/images/wellness_shots/supershot.png', NULL),

  /*Cakes*/
  ('Bringebær Raw Cake', 'Cakes', 89.00, 'Bunn av dadler, mandler og valnøtter; fyll med cashewnøtter, honning, kokosolje, sitronsaft og bringebær.', 'Nøtter', '/images/cakes/bringebaer_raw_cake.png', 'Proteiner: 20 g; Kalorier: 370 kcal; Fett: 25 g; Karbohydrater: 18 g'),
  ('Raw Snickerskake med Iso Whey Sjokolade', 'Cakes', 89.00, 'Bunn av havremel, peanøttsmør og lønnesirup; fyll med kokoskrem, dadler, peanøtter, mørk sjokolade (vegansk), Delfia og Iso Whey Sjokolade.', 'Melk, Nøtter', '/images/cakes/raw_snickerskake.png', 'Proteiner: 20 g; Kalorier: 370 kcal; Fett: 24 g; Karbohydrater: 18 g')

;

UPDATE meals
SET
  allergies       = 'Egg, Melk',
  nutrition_info  = 'Proteiner: 35.5 g; Kalorier: 420 kcal; Fett: 28 g; Karbohydrater: 12 g'
WHERE name = 'Super Omelette';

-- 2. Green Veggie Omelette
UPDATE meals
SET
  allergies       = 'Egg, Melk',
  nutrition_info  = 'Proteiner: 36.5 g; Kalorier: 440 kcal; Fett: 30 g; Karbohydrater: 14 g'
WHERE name = 'Green Veggie Omelette';

-- 3. Greek Yoghurt
UPDATE meals
SET
  allergies       = 'Melk',
  nutrition_info  = 'Proteiner: 32 g; Kalorier: 390 kcal; Fett: 14 g; Karbohydrater: 40 g'
WHERE name = 'Greek Yoghurt';

-- 4. Supercado Toast
UPDATE meals
SET
  allergies       = 'Egg',
  nutrition_info  = 'Proteiner: 30 g; Kalorier: 380 kcal; Fett: 28 g; Karbohydrater: 10 g'
WHERE name = 'Supercado Toast';

-- 5. The Salad
UPDATE meals
SET
  allergies       = 'Egg, Melk',
  nutrition_info  = 'Proteiner: 55 g; Kalorier: 565 kcal; Fett: 30 g; Karbohydrater: 16 g'
WHERE name = 'The Salad';

-- 6. Berry Lover
UPDATE meals
SET
  allergies       = 'Melk',
  nutrition_info  = 'Proteiner: 50 g; Kalorier: 520 kcal; Fett: 24 g; Karbohydrater: 20 g'
WHERE name = 'Berry Lover';

-- 7. Vegan Wrap
UPDATE meals
SET
  allergies       = 'Melk',
  nutrition_info  = 'Proteiner: 36 g; Kalorier: 510 kcal; Fett: 36 g; Karbohydrater: 18 g'
WHERE name = 'Vegan Wrap';

-- 8. Salmon Wrap
UPDATE meals
SET
  allergies       = 'Fisk',
  nutrition_info  = 'Proteiner: 43 g; Kalorier: 560 kcal; Fett: 38 g; Karbohydrater: 15 g'
WHERE name = 'Salmon Wrap';

-- 9. Mediterrano
UPDATE meals
SET
  allergies       = 'Melk, Sesam',
  nutrition_info  = 'Proteiner: 46 g; Kalorier: 550 kcal; Fett: 29 g; Karbohydrater: 18 g'
WHERE name = 'Mediterrano';

-- 10. BBQ Cheesesteak
UPDATE meals
SET
  allergies       = 'Melk',
  nutrition_info  = 'Proteiner: 51 g; Kalorier: 615 kcal; Fett: 40 g; Karbohydrater: 20 g'
WHERE name = 'BBQ Cheesesteak';

-- 11. Chicken Cashew
UPDATE meals
SET
  allergies       = 'Nøtter',
  nutrition_info  = 'Proteiner: 50 g; Kalorier: 635 kcal; Fett: 32 g; Karbohydrater: 35 g'
WHERE name = 'Chicken Cashew';

-- 12. Beef  (Power Beef)
UPDATE meals
SET
  allergies       = NULL,
  nutrition_info  = 'Proteiner: 55 g; Kalorier: 655 kcal; Fett: 38 g; Karbohydrater: 25 g'
WHERE name = 'Beef';

-- 13. The Omega  (Omega Boost)
UPDATE meals
SET
  allergies       = 'Fisk, Sesam',
  nutrition_info  = 'Proteiner: 44 g; Kalorier: 590 kcal; Fett: 36 g; Karbohydrater: 22 g'
WHERE name = 'The Omega';

-- 14. Vegan Power
--    (Ikke oppgitt i PDF-fil; lar nutrition_info stå tom eller settes ved senere oppdatering.)
UPDATE meals
SET
  allergies       = NULL,
  nutrition_info  = NULL
WHERE name = 'Vegan Power';

-- 15. Muscle Freak
UPDATE meals
SET
  allergies       = 'Melk, Nøtter',
  nutrition_info  = 'Proteiner: 35 g; Kalorier: 480 kcal; Fett: 24 g; Karbohydrater: 32 g'
WHERE name = 'Muscle Freak';

-- 16. The Skinny
UPDATE meals
SET
  allergies       = 'Melk',
  nutrition_info  = 'Proteiner: 30 g; Kalorier: 340 kcal; Fett: 10 g; Karbohydrater: 26 g'
WHERE name = 'The Skinny';

-- 17. Almond Dream
UPDATE meals
SET
  allergies       = 'Melk, Nøtter',
  nutrition_info  = 'Proteiner: 32 g; Kalorier: 450 kcal; Fett: 22 g; Karbohydrater: 30 g'
WHERE name = 'Almond Dream';

-- 18. Pistachio Explosion
UPDATE meals
SET
  allergies       = 'Melk, Nøtter',
  nutrition_info  = 'Proteiner: 34 g; Kalorier: 460 kcal; Fett: 25 g; Karbohydrater: 28 g'
WHERE name = 'Pistachio Explosion';

-- 19. Protein Iskaffe (Snickers)
UPDATE meals
SET
  allergies       = 'Melk',
  nutrition_info  = 'Proteiner: 30 g; Kalorier: 300 kcal; Fett: 12 g; Karbohydrater: 20 g'
WHERE name = 'Protein Iskaffe (Snickers)';

-- 20. Vanilla
UPDATE meals
SET
  allergies       = 'Melk',
  nutrition_info  = 'Proteiner: 30 g; Kalorier: 280 kcal; Fett: 10 g; Karbohydrater: 18 g'
WHERE name = 'Vanilla';

-- 21. Protein Matcha
UPDATE meals
SET
  allergies       = 'Melk',
  nutrition_info  = 'Proteiner: 30 g; Kalorier: 270 kcal; Fett: 9 g; Karbohydrater: 16 g'
WHERE name = 'Protein Matcha';
>>>>>>> 6f84a060 (Inital commit)
>>>>>>> 804ea3e5 (initial commit)
