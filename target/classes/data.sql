insert into medical_specialty (specialty_name) values ('CARDIOLOGISTA');
insert into medical_specialty (specialty_name) values ('GINECOLOGISTA');
insert into medical_specialty (specialty_name) values ('INFECTOLOGISTA');
insert into medical_specialty (specialty_name) values ('NEUROLOGISTA');

insert into health_provider (address,latitude,longitude,health_provider_name) values ('AVENIDA PRESIDENTE CASTELO BRANCO,2121, JARDIM ZAÍRA, MAUÁ, SP',-23.648556, -46.439246,'DR VIDA');
insert into health_provider (address,latitude,longitude,health_provider_name) values ('AVENIDA PRESIDENTE CASTELO BRANCO,1338, JARDIM ZAÍRA, MAUÁ, SP',-23.652880, -46.445983,'ODONTO COMPANY');
insert into health_provider (address,latitude,longitude,health_provider_name) values ('R. AGENOR FREIRE DE MORÃES, 2-76 - JARDIM ZAIRA, MAUÁ - SP',-23.661020, -46.448576,'CLÍNICA SAÚDE DA FAMÍLIA');
insert into health_provider (address,latitude,longitude,health_provider_name) values ('R. MARTIM AFONSO, 114 - VILA BOCAINA, MAUÁ - SP',-23.669549, -46.449649,'HOSPITAL AMÉRICA');
insert into health_provider (address,latitude,longitude,health_provider_name) values ('R. ÁLVARES MACHADO, 441 - VILA BOCAINA, MAUÁ - SP',-23.668723, -46.453769,'CLÍNICA ARBOS');
insert into health_provider (address,latitude,longitude,health_provider_name) values ('R. GEN. OSÓRIO, 228 - VILA BOCAINA, MAUÁ - SP',-23.668369, -46.457352,'CLÍNICA PALMED');
insert into health_provider (address,latitude,longitude,health_provider_name) values ('R. TERCÍLIO TAMAGNINI, 51 - MATRIZ, MAUÁ - SP',-23.668772, -46.462191,'CLÍNICA SERFIS');
insert into health_provider (address,latitude,longitude,health_provider_name) values ('R. PRINCESA ISABEL, 256 - VILA BOCAINA, MAUÁ - SP',-23.666895, -46.454338,'CLÍNICA OLHOS NAÇÕES');
insert into health_provider (address,latitude,longitude,health_provider_name) values ('AV. DR. ALBERTO BENEDETTI, 533 - VILA ASSUNÇÃO, SANTO ANDRÉ - SP',-23.667591, -46.526551,'CASA DA ESPERANÇA');
insert into health_provider (address,latitude,longitude,health_provider_name) values ('R. CEL. FRANCISCO AMARO, 679 - CENTRO, SANTO ANDRÉ - SP',-23.663690, -46.527291,'FRAD CLÍNICA MÉDICA');
insert into health_provider (address,latitude,longitude,health_provider_name) values ('R. FREI GASPAR, 941 - SALA 202 - VILA SANTA RITA DE CASSIA, SÃO BERNARDO DO CAMPO - SP',-23.712957, -46.556839,'CAORT');
insert into health_provider (address,latitude,longitude,health_provider_name) values ('AV. ANTÁRTICO, 164 - JARDIM DO MAR, SÃO BERNARDO DO CAMPO - SP',-23.687101, -46.561817,'TRATO FISIOTERAPIA');
insert into health_provider (address,latitude,longitude,health_provider_name) values ('R. CAVALHEIRO ERNESTO GIULIANO, 979 - SÃO JOSÉ, SÃO CAETANO DO SUL - SP',-23.630008, -46.563365,'CLÍNICA S CAETANO');
insert into health_provider (address,latitude,longitude,health_provider_name) values ('ALAMEDA TERRACOTA, 185 TORRE PARK, CONJUNTO 623 - CERÂMICA, SÃO CAETANO DO SUL - SP',-23.616482, -46.582248,'CLÍNICA SPHERA');
insert into health_provider (address,latitude,longitude,health_provider_name) values ('R. ALEGRE, 280 - SANTA PAULA, SÃO CAETANO DO SUL - SP',-23.614673, -46.553924,'CLÍNICA FRATURAS');
insert into health_provider (address,latitude,longitude,health_provider_name) values ('AV. ALDA, 1180 - CENTRO, DIADEMA - SP',-23.695058, -46.629080,'NEO');
insert into health_provider (address,latitude,longitude,health_provider_name) values ('R. GRACIOSA, 295 - CENTRO, DIADEMA - SP',-23.689713, -46.624188,'CLÍNICA SANTA CLARA');
insert into health_provider (address,latitude,longitude,health_provider_name) values ('AV. DR. CARLOS DE MORAES BARROS, 450 - VILA CAMPESINA, OSASCO - SP',-23.542130, -46.769037,'INSTITUTO BEM ESTAR');
insert into health_provider (address,latitude,longitude,health_provider_name) values ('AV. DIONYSIA ALVES BARRETO, 395 - VILA OSASCO, OSASCO - SP',23.532845, -46.785174,'CLÍNICA SANVIE');
insert into health_provider (address,latitude,longitude,health_provider_name) values ('R. DEP. EMÍLIO CARLOS, 1249 - 3º ANDAR - VILA CAMPESINA, OSASCO - SP',-23.544648, -46.762085,'BELCLINIS');

insert into specialty_health_provider (medical_specialty_id,health_provider_id) values ((select id from medical_specialty where specialty_name like 'CARDIOLOGISTA'), (select id from health_provider where health_provider_name like 'DR VIDA'));
insert into specialty_health_provider (medical_specialty_id,health_provider_id) values ((select id from medical_specialty where specialty_name like 'CARDIOLOGISTA'), (select id from health_provider where health_provider_name like 'ODONTO COMPANY'));
insert into specialty_health_provider (medical_specialty_id,health_provider_id) values ((select id from medical_specialty where specialty_name like 'CARDIOLOGISTA'), (select id from health_provider where health_provider_name like 'BELCLINIS'));
insert into specialty_health_provider (medical_specialty_id,health_provider_id) values ((select id from medical_specialty where specialty_name like 'CARDIOLOGISTA'), (select id from health_provider where health_provider_name like 'INSTITUTO BEM ESTAR'));
insert into specialty_health_provider (medical_specialty_id,health_provider_id) values ((select id from medical_specialty where specialty_name like 'CARDIOLOGISTA'), (select id from health_provider where health_provider_name like 'CAORT'));
insert into specialty_health_provider (medical_specialty_id,health_provider_id) values ((select id from medical_specialty where specialty_name like 'CARDIOLOGISTA'), (select id from health_provider where health_provider_name like 'CLÍNICA SERFIS'));

insert into specialty_health_provider (medical_specialty_id,health_provider_id) values ((select id from medical_specialty where specialty_name like 'GINECOLOGISTA'), (select id from health_provider where health_provider_name like 'DR VIDA'));
insert into specialty_health_provider (medical_specialty_id,health_provider_id) values ((select id from medical_specialty where specialty_name like 'GINECOLOGISTA'), (select id from health_provider where health_provider_name like 'ODONTO COMPANY'));
insert into specialty_health_provider (medical_specialty_id,health_provider_id) values ((select id from medical_specialty where specialty_name like 'GINECOLOGISTA'), (select id from health_provider where health_provider_name like 'CLÍNICA SAÚDE DA FAMÍLIA'));
insert into specialty_health_provider (medical_specialty_id,health_provider_id) values ((select id from medical_specialty where specialty_name like 'GINECOLOGISTA'), (select id from health_provider where health_provider_name like 'HOSPITAL AMÉRICA'));
insert into specialty_health_provider (medical_specialty_id,health_provider_id) values ((select id from medical_specialty where specialty_name like 'GINECOLOGISTA'), (select id from health_provider where health_provider_name like 'CLÍNICA ARBOS'));
insert into specialty_health_provider (medical_specialty_id,health_provider_id) values ((select id from medical_specialty where specialty_name like 'GINECOLOGISTA'), (select id from health_provider where health_provider_name like 'CLÍNICA PALMED'));

insert into specialty_health_provider (medical_specialty_id,health_provider_id) values ((select id from medical_specialty where specialty_name like 'INFECTOLOGISTA'), (select id from health_provider where health_provider_name like 'CLÍNICA OLHOS NAÇÕES'));
insert into specialty_health_provider (medical_specialty_id,health_provider_id) values ((select id from medical_specialty where specialty_name like 'INFECTOLOGISTA'), (select id from health_provider where health_provider_name like 'CLÍNICA SERFIS'));
insert into specialty_health_provider (medical_specialty_id,health_provider_id) values ((select id from medical_specialty where specialty_name like 'INFECTOLOGISTA'), (select id from health_provider where health_provider_name like 'CASA DA ESPERANÇA'));
insert into specialty_health_provider (medical_specialty_id,health_provider_id) values ((select id from medical_specialty where specialty_name like 'INFECTOLOGISTA'), (select id from health_provider where health_provider_name like 'FRAD CLÍNICA MÉDICA'));
insert into specialty_health_provider (medical_specialty_id,health_provider_id) values ((select id from medical_specialty where specialty_name like 'INFECTOLOGISTA'), (select id from health_provider where health_provider_name like 'TRATO FISIOTERAPIA'));
insert into specialty_health_provider (medical_specialty_id,health_provider_id) values ((select id from medical_specialty where specialty_name like 'INFECTOLOGISTA'), (select id from health_provider where health_provider_name like 'CLÍNICA S CAETANO'));

insert into specialty_health_provider (medical_specialty_id,health_provider_id) values ((select id from medical_specialty where specialty_name like 'NEUROLOGISTA'), (select id from health_provider where health_provider_name like 'CLÍNICA SPHERA'));
insert into specialty_health_provider (medical_specialty_id,health_provider_id) values ((select id from medical_specialty where specialty_name like 'NEUROLOGISTA'), (select id from health_provider where health_provider_name like 'CLÍNICA FRATURAS'));
insert into specialty_health_provider (medical_specialty_id,health_provider_id) values ((select id from medical_specialty where specialty_name like 'NEUROLOGISTA'), (select id from health_provider where health_provider_name like 'CLÍNICA SANTA CLARA'));
insert into specialty_health_provider (medical_specialty_id,health_provider_id) values ((select id from medical_specialty where specialty_name like 'NEUROLOGISTA'), (select id from health_provider where health_provider_name like 'INSTITUTO BEM ESTAR'));
insert into specialty_health_provider (medical_specialty_id,health_provider_id) values ((select id from medical_specialty where specialty_name like 'NEUROLOGISTA'), (select id from health_provider where health_provider_name like 'NEO'));
insert into specialty_health_provider (medical_specialty_id,health_provider_id) values ((select id from medical_specialty where specialty_name like 'NEUROLOGISTA'), (select id from health_provider where health_provider_name like 'CLÍNICA SANVIE'));
insert into specialty_health_provider (medical_specialty_id,health_provider_id) values ((select id from medical_specialty where specialty_name like 'NEUROLOGISTA'), (select id from health_provider where health_provider_name like 'BELCLINIS'));