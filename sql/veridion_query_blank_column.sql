SELECT 
  column_name,
  missing_count,
  -- Împărțim la numărul dinamic de rânduri totale, nu la o valoare fixă
  ROUND((missing_count / (SELECT COUNT(*) FROM `woven-howl-489214-k5.veridion.veridion_match_choosen`)) * 100, 2) AS missing_percentage
FROM (
  SELECT 'input_row_key' AS column_name, COUNTIF(input_row_key IS NULL) AS missing_count FROM `woven-howl-489214-k5.veridion.veridion_match_choosen` UNION ALL
  SELECT 'input_company_name', COUNTIF(input_company_name IS NULL OR TRIM(input_company_name) = '' OR LOWER(input_company_name) IN ('nan', 'null', 'none')) FROM `woven-howl-489214-k5.veridion.veridion_match_choosen` UNION ALL
  SELECT 'input_main_country_code', COUNTIF(input_main_country_code IS NULL OR TRIM(input_main_country_code) = '' OR LOWER(input_main_country_code) IN ('nan', 'null', 'none')) FROM `woven-howl-489214-k5.veridion.veridion_match_choosen` UNION ALL
  SELECT 'input_main_country', COUNTIF(input_main_country IS NULL OR TRIM(input_main_country) = '' OR LOWER(input_main_country) IN ('nan', 'null', 'none')) FROM `woven-howl-489214-k5.veridion.veridion_match_choosen` UNION ALL
  SELECT 'input_main_region', COUNTIF(input_main_region IS NULL OR TRIM(input_main_region) = '' OR LOWER(input_main_region) IN ('nan', 'null', 'none')) FROM `woven-howl-489214-k5.veridion.veridion_match_choosen` UNION ALL
  SELECT 'input_main_city', COUNTIF(input_main_city IS NULL OR TRIM(input_main_city) = '' OR LOWER(input_main_city) IN ('nan', 'null', 'none')) FROM `woven-howl-489214-k5.veridion.veridion_match_choosen` UNION ALL
  SELECT 'input_main_postcode', COUNTIF(input_main_postcode IS NULL OR TRIM(input_main_postcode) = '' OR LOWER(input_main_postcode) IN ('nan', 'null', 'none')) FROM `woven-howl-489214-k5.veridion.veridion_match_choosen` UNION ALL
  SELECT 'input_main_street', COUNTIF(input_main_street IS NULL OR TRIM(input_main_street) = '' OR LOWER(input_main_street) IN ('nan', 'null', 'none')) FROM `woven-howl-489214-k5.veridion.veridion_match_choosen` UNION ALL
  SELECT 'input_main_street_number', COUNTIF(input_main_street_number IS NULL OR TRIM(input_main_street_number) = '' OR LOWER(input_main_street_number) IN ('nan', 'null', 'none')) FROM `woven-howl-489214-k5.veridion.veridion_match_choosen` UNION ALL
  SELECT 'veridion_id', COUNTIF(veridion_id IS NULL OR TRIM(veridion_id) = '' OR LOWER(veridion_id) IN ('nan', 'null', 'none')) FROM `woven-howl-489214-k5.veridion.veridion_match_choosen` UNION ALL
  SELECT 'company_name', COUNTIF(company_name IS NULL OR TRIM(company_name) = '' OR LOWER(company_name) IN ('nan', 'null', 'none')) FROM `woven-howl-489214-k5.veridion.veridion_match_choosen` UNION ALL
  SELECT 'company_legal_names', COUNTIF(company_legal_names IS NULL OR TRIM(company_legal_names) = '' OR LOWER(company_legal_names) IN ('nan', 'null', 'none')) FROM `woven-howl-489214-k5.veridion.veridion_match_choosen` UNION ALL
  SELECT 'company_commercial_names', COUNTIF(company_commercial_names IS NULL OR TRIM(company_commercial_names) = '' OR LOWER(company_commercial_names) IN ('nan', 'null', 'none')) FROM `woven-howl-489214-k5.veridion.veridion_match_choosen` UNION ALL
  SELECT 'main_country_code', COUNTIF(main_country_code IS NULL OR TRIM(main_country_code) = '' OR LOWER(main_country_code) IN ('nan', 'null', 'none')) FROM `woven-howl-489214-k5.veridion.veridion_match_choosen` UNION ALL
  SELECT 'main_country', COUNTIF(main_country IS NULL OR TRIM(main_country) = '' OR LOWER(main_country) IN ('nan', 'null', 'none')) FROM `woven-howl-489214-k5.veridion.veridion_match_choosen` UNION ALL
  SELECT 'main_region', COUNTIF(main_region IS NULL OR TRIM(main_region) = '' OR LOWER(main_region) IN ('nan', 'null', 'none')) FROM `woven-howl-489214-k5.veridion.veridion_match_choosen` UNION ALL
  SELECT 'main_city', COUNTIF(main_city IS NULL OR TRIM(main_city) = '' OR LOWER(main_city) IN ('nan', 'null', 'none')) FROM `woven-howl-489214-k5.veridion.veridion_match_choosen` UNION ALL
  SELECT 'main_postcode', COUNTIF(main_postcode IS NULL OR TRIM(main_postcode) = '' OR LOWER(main_postcode) IN ('nan', 'null', 'none')) FROM `woven-howl-489214-k5.veridion.veridion_match_choosen` UNION ALL
  SELECT 'main_street', COUNTIF(main_street IS NULL OR TRIM(main_street) = '' OR LOWER(main_street) IN ('nan', 'null', 'none')) FROM `woven-howl-489214-k5.veridion.veridion_match_choosen` UNION ALL
  SELECT 'main_street_number', COUNTIF(main_street_number IS NULL OR TRIM(main_street_number) = '' OR LOWER(main_street_number) IN ('nan', 'null', 'none')) FROM `woven-howl-489214-k5.veridion.veridion_match_choosen` UNION ALL
  SELECT 'main_latitude', COUNTIF(main_latitude IS NULL) FROM `woven-howl-489214-k5.veridion.veridion_match_choosen` UNION ALL
  SELECT 'main_longitude', COUNTIF(main_longitude IS NULL) FROM `woven-howl-489214-k5.veridion.veridion_match_choosen` UNION ALL
  SELECT 'locations', COUNTIF(locations IS NULL OR TRIM(locations) = '' OR LOWER(locations) IN ('nan', 'null', 'none')) FROM `woven-howl-489214-k5.veridion.veridion_match_choosen` UNION ALL
  SELECT 'num_locations', COUNTIF(num_locations IS NULL) FROM `woven-howl-489214-k5.veridion.veridion_match_choosen` UNION ALL
  SELECT 'company_type', COUNTIF(company_type IS NULL OR TRIM(company_type) = '' OR LOWER(company_type) IN ('nan', 'null', 'none')) FROM `woven-howl-489214-k5.veridion.veridion_match_choosen` UNION ALL
  SELECT 'year_founded', COUNTIF(year_founded IS NULL) FROM `woven-howl-489214-k5.veridion.veridion_match_choosen` UNION ALL
  SELECT 'revenue', COUNTIF(revenue IS NULL) FROM `woven-howl-489214-k5.veridion.veridion_match_choosen` UNION ALL
  SELECT 'revenue_type', COUNTIF(revenue_type IS NULL OR TRIM(revenue_type) = '' OR LOWER(revenue_type) IN ('nan', 'null', 'none')) FROM `woven-howl-489214-k5.veridion.veridion_match_choosen` UNION ALL
  SELECT 'employee_count', COUNTIF(employee_count IS NULL) FROM `woven-howl-489214-k5.veridion.veridion_match_choosen` UNION ALL
  SELECT 'employee_count_type', COUNTIF(employee_count_type IS NULL OR TRIM(employee_count_type) = '' OR LOWER(employee_count_type) IN ('nan', 'null', 'none')) FROM `woven-howl-489214-k5.veridion.veridion_match_choosen` UNION ALL
  SELECT 'generated_description', COUNTIF(generated_description IS NULL OR TRIM(generated_description) = '' OR LOWER(generated_description) IN ('nan', 'null', 'none')) FROM `woven-howl-489214-k5.veridion.veridion_match_choosen` UNION ALL
  SELECT 'generated_business_tags', COUNTIF(generated_business_tags IS NULL OR TRIM(generated_business_tags) = '' OR LOWER(generated_business_tags) IN ('nan', 'null', 'none')) FROM `woven-howl-489214-k5.veridion.veridion_match_choosen` UNION ALL
  SELECT 'short_description', COUNTIF(short_description IS NULL OR TRIM(short_description) = '' OR LOWER(short_description) IN ('nan', 'null', 'none')) FROM `woven-howl-489214-k5.veridion.veridion_match_choosen` UNION ALL
  SELECT 'business_tags', COUNTIF(business_tags IS NULL OR TRIM(business_tags) = '' OR LOWER(business_tags) IN ('nan', 'null', 'none')) FROM `woven-howl-489214-k5.veridion.veridion_match_choosen` UNION ALL
  SELECT 'naics_2022_primary_code', COUNTIF(naics_2022_primary_code IS NULL) FROM `woven-howl-489214-k5.veridion.veridion_match_choosen` UNION ALL
  SELECT 'naics_2022_primary_label', COUNTIF(naics_2022_primary_label IS NULL OR TRIM(naics_2022_primary_label) = '' OR LOWER(naics_2022_primary_label) IN ('nan', 'null', 'none')) FROM `woven-howl-489214-k5.veridion.veridion_match_choosen` UNION ALL
  SELECT 'naics_2022_secondary_codes', COUNTIF(naics_2022_secondary_codes IS NULL) FROM `woven-howl-489214-k5.veridion.veridion_match_choosen` UNION ALL
  SELECT 'naics_2022_secondary_labels', COUNTIF(naics_2022_secondary_labels IS NULL OR TRIM(naics_2022_secondary_labels) = '' OR LOWER(naics_2022_secondary_labels) IN ('nan', 'null', 'none')) FROM `woven-howl-489214-k5.veridion.veridion_match_choosen` UNION ALL
  SELECT 'main_business_category', COUNTIF(main_business_category IS NULL OR TRIM(main_business_category) = '' OR LOWER(main_business_category) IN ('nan', 'null', 'none')) FROM `woven-howl-489214-k5.veridion.veridion_match_choosen` UNION ALL
  SELECT 'main_industry', COUNTIF(main_industry IS NULL OR TRIM(main_industry) = '' OR LOWER(main_industry) IN ('nan', 'null', 'none')) FROM `woven-howl-489214-k5.veridion.veridion_match_choosen` UNION ALL
  SELECT 'main_sector', COUNTIF(main_sector IS NULL OR TRIM(main_sector) = '' OR LOWER(main_sector) IN ('nan', 'null', 'none')) FROM `woven-howl-489214-k5.veridion.veridion_match_choosen` UNION ALL
  SELECT 'sics_codified_industry', COUNTIF(sics_codified_industry IS NULL OR TRIM(sics_codified_industry) = '' OR LOWER(sics_codified_industry) IN ('nan', 'null', 'none')) FROM `woven-howl-489214-k5.veridion.veridion_match_choosen` UNION ALL
  SELECT 'sics_codified_industry_code', COUNTIF(sics_codified_industry_code IS NULL OR TRIM(sics_codified_industry_code) = '' OR LOWER(sics_codified_industry_code) IN ('nan', 'null', 'none')) FROM `woven-howl-489214-k5.veridion.veridion_match_choosen` UNION ALL
  SELECT 'sics_codified_subsector', COUNTIF(sics_codified_subsector IS NULL OR TRIM(sics_codified_subsector) = '' OR LOWER(sics_codified_subsector) IN ('nan', 'null', 'none')) FROM `woven-howl-489214-k5.veridion.veridion_match_choosen` UNION ALL
  SELECT 'sics_codified_subsector_code', COUNTIF(sics_codified_subsector_code IS NULL OR TRIM(sics_codified_subsector_code) = '' OR LOWER(sics_codified_subsector_code) IN ('nan', 'null', 'none')) FROM `woven-howl-489214-k5.veridion.veridion_match_choosen` UNION ALL
  SELECT 'sics_codified_sector', COUNTIF(sics_codified_sector IS NULL OR TRIM(sics_codified_sector) = '' OR LOWER(sics_codified_sector) IN ('nan', 'null', 'none')) FROM `woven-howl-489214-k5.veridion.veridion_match_choosen` UNION ALL
  SELECT 'sics_codified_sector_code', COUNTIF(sics_codified_sector_code IS NULL OR TRIM(sics_codified_sector_code) = '' OR LOWER(sics_codified_sector_code) IN ('nan', 'null', 'none')) FROM `woven-howl-489214-k5.veridion.veridion_match_choosen` UNION ALL
  SELECT 'sic_codes', COUNTIF(sic_codes IS NULL OR TRIM(sic_codes) = '' OR LOWER(sic_codes) IN ('nan', 'null', 'none')) FROM `woven-howl-489214-k5.veridion.veridion_match_choosen` UNION ALL
  SELECT 'sic_labels', COUNTIF(sic_labels IS NULL OR TRIM(sic_labels) = '' OR LOWER(sic_labels) IN ('nan', 'null', 'none')) FROM `woven-howl-489214-k5.veridion.veridion_match_choosen` UNION ALL
  SELECT 'ibc_insurance_labels', COUNTIF(ibc_insurance_labels IS NULL OR TRIM(ibc_insurance_labels) = '' OR LOWER(ibc_insurance_labels) IN ('nan', 'null', 'none')) FROM `woven-howl-489214-k5.veridion.veridion_match_choosen` UNION ALL
  SELECT 'isic_v4_codes', COUNTIF(isic_v4_codes IS NULL OR TRIM(isic_v4_codes) = '' OR LOWER(isic_v4_codes) IN ('nan', 'null', 'none')) FROM `woven-howl-489214-k5.veridion.veridion_match_choosen` UNION ALL
  SELECT 'isic_v4_labels', COUNTIF(isic_v4_labels IS NULL OR TRIM(isic_v4_labels) = '' OR LOWER(isic_v4_labels) IN ('nan', 'null', 'none')) FROM `woven-howl-489214-k5.veridion.veridion_match_choosen` UNION ALL
  SELECT 'nace_rev2_codes', COUNTIF(nace_rev2_codes IS NULL OR TRIM(nace_rev2_codes) = '' OR LOWER(nace_rev2_codes) IN ('nan', 'null', 'none')) FROM `woven-howl-489214-k5.veridion.veridion_match_choosen` UNION ALL
  SELECT 'nace_rev2_labels', COUNTIF(nace_rev2_labels IS NULL OR TRIM(nace_rev2_labels) = '' OR LOWER(nace_rev2_labels) IN ('nan', 'null', 'none')) FROM `woven-howl-489214-k5.veridion.veridion_match_choosen` UNION ALL
  SELECT 'ibc_insurance_codes', COUNTIF(ibc_insurance_codes IS NULL OR TRIM(ibc_insurance_codes) = '' OR LOWER(ibc_insurance_codes) IN ('nan', 'null', 'none')) FROM `woven-howl-489214-k5.veridion.veridion_match_choosen` UNION ALL
  SELECT 'primary_phone', COUNTIF(primary_phone IS NULL) FROM `woven-howl-489214-k5.veridion.veridion_match_choosen` UNION ALL
  SELECT 'phone_numbers', COUNTIF(phone_numbers IS NULL OR TRIM(phone_numbers) = '' OR LOWER(phone_numbers) IN ('nan', 'null', 'none')) FROM `woven-howl-489214-k5.veridion.veridion_match_choosen` UNION ALL
  SELECT 'primary_email', COUNTIF(primary_email IS NULL OR TRIM(primary_email) = '' OR LOWER(primary_email) IN ('nan', 'null', 'none')) FROM `woven-howl-489214-k5.veridion.veridion_match_choosen` UNION ALL
  SELECT 'emails', COUNTIF(emails IS NULL OR TRIM(emails) = '' OR LOWER(emails) IN ('nan', 'null', 'none')) FROM `woven-howl-489214-k5.veridion.veridion_match_choosen` UNION ALL
  SELECT 'other_emails', COUNTIF(other_emails IS NULL OR TRIM(other_emails) = '' OR LOWER(other_emails) IN ('nan', 'null', 'none')) FROM `woven-howl-489214-k5.veridion.veridion_match_choosen` UNION ALL
  SELECT 'website_url', COUNTIF(website_url IS NULL OR TRIM(website_url) = '' OR LOWER(website_url) IN ('nan', 'null', 'none')) FROM `woven-howl-489214-k5.veridion.veridion_match_choosen` UNION ALL
  SELECT 'website_domain', COUNTIF(website_domain IS NULL OR TRIM(website_domain) = '' OR LOWER(website_domain) IN ('nan', 'null', 'none')) FROM `woven-howl-489214-k5.veridion.veridion_match_choosen` UNION ALL
  SELECT 'website_tld', COUNTIF(website_tld IS NULL OR TRIM(website_tld) = '' OR LOWER(website_tld) IN ('nan', 'null', 'none')) FROM `woven-howl-489214-k5.veridion.veridion_match_choosen` UNION ALL
  SELECT 'website_language_code', COUNTIF(website_language_code IS NULL OR TRIM(website_language_code) = '' OR LOWER(website_language_code) IN ('nan', 'null', 'none')) FROM `woven-howl-489214-k5.veridion.veridion_match_choosen` UNION ALL
  SELECT 'facebook_url', COUNTIF(facebook_url IS NULL OR TRIM(facebook_url) = '' OR LOWER(facebook_url) IN ('nan', 'null', 'none')) FROM `woven-howl-489214-k5.veridion.veridion_match_choosen` UNION ALL
  SELECT 'twitter_url', COUNTIF(twitter_url IS NULL OR TRIM(twitter_url) = '' OR LOWER(twitter_url) IN ('nan', 'null', 'none')) FROM `woven-howl-489214-k5.veridion.veridion_match_choosen` UNION ALL
  SELECT 'instagram_url', COUNTIF(instagram_url IS NULL OR TRIM(instagram_url) = '' OR LOWER(instagram_url) IN ('nan', 'null', 'none')) FROM `woven-howl-489214-k5.veridion.veridion_match_choosen` UNION ALL
  SELECT 'linkedin_url', COUNTIF(linkedin_url IS NULL OR TRIM(linkedin_url) = '' OR LOWER(linkedin_url) IN ('nan', 'null', 'none')) FROM `woven-howl-489214-k5.veridion.veridion_match_choosen` UNION ALL
  SELECT 'ios_app_url', COUNTIF(ios_app_url IS NULL OR TRIM(ios_app_url) = '' OR LOWER(ios_app_url) IN ('nan', 'null', 'none')) FROM `woven-howl-489214-k5.veridion.veridion_match_choosen` UNION ALL
  SELECT 'android_app_url', COUNTIF(android_app_url IS NULL OR TRIM(android_app_url) = '' OR LOWER(android_app_url) IN ('nan', 'null', 'none')) FROM `woven-howl-489214-k5.veridion.veridion_match_choosen` UNION ALL
  SELECT 'youtube_url', COUNTIF(youtube_url IS NULL OR TRIM(youtube_url) = '' OR LOWER(youtube_url) IN ('nan', 'null', 'none')) FROM `woven-howl-489214-k5.veridion.veridion_match_choosen` UNION ALL
  SELECT 'tiktok_url', COUNTIF(tiktok_url IS NULL OR TRIM(tiktok_url) = '' OR LOWER(tiktok_url) IN ('nan', 'null', 'none')) FROM `woven-howl-489214-k5.veridion.veridion_match_choosen` UNION ALL
  SELECT 'technologies', COUNTIF(technologies IS NULL OR TRIM(technologies) = '' OR LOWER(technologies) IN ('nan', 'null', 'none')) FROM `woven-howl-489214-k5.veridion.veridion_match_choosen` UNION ALL
  SELECT 'created_at', COUNTIF(created_at IS NULL) FROM `woven-howl-489214-k5.veridion.veridion_match_choosen` UNION ALL
  SELECT 'last_updated_at', COUNTIF(last_updated_at IS NULL) FROM `woven-howl-489214-k5.veridion.veridion_match_choosen`
)
ORDER BY missing_count DESC;