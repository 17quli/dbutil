CREATE VIEW ${var:view_db}.dss_returns_keypoints_ir7 AS
SELECT z.ird_number, z.location_number, z.return_period_date, z.return_type, z.return_version_no, z.return_status, z.form_version_no, z.number_of_error_items, z.`timestamp`, z.accounts_included_flag_100023, z.accruals_property_ind_100205, z.div_rwt_withholding_cr_805, z.first_return_100197, z.gross_earnings_407, z.gross_payments_halex_861, z.inc_dist_to_partners_100208, z.laqc_loss_144, z.net_profit_702, z.no_assessment_ind_100209, z.other_income_liable_100087, z.other_tax_deductions_801, z.overseas_income_828, z.overseas_tax_credits_107, z.pre_encription_check_100018, z.pre_encription_ird_no_100019, z.pre_encription_loc_no_100020, z.pship_estate_trust_income_810, z.pship_estate_trust_tax_cr_811, z.rwt_and_other_tax_cr_803, z.share_of_imp_credits_705, z.std_disclaimer_applies_100047, z.taxable_income_109, z.total_expenses_829, z.total_gross_dividends_804, z.total_income_100472, z.total_interest_802, z.total_tax_credits_115, z.wh_tax_deductions_halex_860, z.tax_credits_to_partners_100524, z.acc_class_number_1_412, z.ac_premium_excl_gst_401, z.amount_transferred_100537, z.assessment_850, z.calc_employer_premium_403, z.credit_adj_red_of_fit_100540, z.earner_prem_eal_ep_100533, z.earner_prem_overdeduct_414, z.empl_prem_ind_levy_ind_100531, z.epr_resid_claim_levy_rt_100532, z.excess_to_emp_over_max_100529, z.fit_payable_100541, z.fs_assessment_602, z.gst_on_eal_earner_prem_100534, z.gst_on_resid_claims_levy_402, z.ica_closing_balance_nu_100538, z.interim_repayment_amount_854, z.interim_repayment_option_853, z.not_used_100072, z.nzs_surcharge_704, z.pay_after_1st_wk_reimb_100528, z.pay_emp_1st_wk_aftr_acc_100527, z.provisional_tax_option_501, z.provisional_tax_payable_502, z.residual_income_tax_108, z.student_loans_deductions_1336, z.taxable_activity_com_dt_100526, z.tax_on_taxable_income_721, z.tax_on_trustee_income_111, z.total_fstc_601, z.total_rebates_703, z.tot_eal_earner_prem_lbl_100535, z.tot_earn_lble_for_levy_100530, z.tot_rcl_eal_ep_pbl_sea_100536, z.transfer_to_ird_no_1, z.transfer_to_location_no_2, z.transfer_to_period_3, z.wpa_closing_balance_nu_100539, z.not_used_100024, z.not_used_100025, z.tot_maori_auth_credits_100585, z.tot_maori_auth_dist_100586, z.total_ltc_tax_credits_100791, z.total_active_ltc_income_100792, z.non_allowble_deductions_100793, z.adjusted_ltc_income_100794, z.net_inc_rntal_actvities_100785, z.extinguished_losses_100797, z.prior_years_deduction_100798, z.deductns_clamed_this_yr_100799, z.ir7p_attached_100800, z.ir7l_attached_100801, z.pr_yr_n_allw_ded_claimd_100829, z.l_total_ded_extgd_loss_100863, z.p_total_ded_extgd_loss_100864, z.record_effective_timestamp, z.record_expiry_timestamp, z.record_active_flag, z.record_deleted_flag, z.insert_object_run_key, z.update_object_run_key FROM ${var:source_db}.dss_returns_keypoints_ir7 z LEFT OUTER JOIN ${var:source_db}.dss_special_clients_all sc ON sc.ird_number = z.ird_number WHERE nvl(sc.special_classification, 'STD') = 'STD' AND nvl(sc.record_active_flag, 'Y') = 'Y' AND nvl(sc.record_deleted_flag, 'N') = 'N';
