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
  ('Supershot',           'Wellness Shots',  39.00,'Gurkemeie, ingefær, organisk honning og eplesidereddik, toppet med svart pepper.', NULL, '/images/wellness_shots/supershot.png', NULL)
;
