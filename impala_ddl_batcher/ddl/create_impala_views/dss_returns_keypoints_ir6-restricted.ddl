create view ${var:view_db}.dss_returns_keypoints_ir6 as
select 
z.ird_number                     ,
z.location_number                ,
z.return_period_date             ,
z.return_type                    ,
z.return_version_no              ,
z.return_status                  ,
z.form_version_no                ,
z.number_of_error_items          ,
z.`timestamp`                      ,
z.accounts_included_flag_100023  ,
z.accruals_property_ind_100205   ,
z.deemed_loss_102                ,
z.div_rwt_withholding_cr_805     ,
z.estate_trust_exs_claim_100200  ,
z.first_return_100197            ,
z.income_after_expenses_101      ,
z.inc_allocn_to_beneficiary_714  ,
z.inc_alloc_to_trustee_716       ,
z.ir6b_beneficiary_income_100202 ,
z.ir6b_bficiary_tax_creds_100203 ,
z.ir6b_bficiary_tax_to_pay_715   ,
z.laqc_loss_144                  ,
z.loss_brought_forward_136       ,
z.loss_claimed_133               ,
z.net_profit_702                 ,
z.new_prov_tax_date_505          ,
z.other_income_liable_100087     ,
z.overseas_income_828            ,
z.overseas_tax_credits_107       ,
z.pre_encription_check_100018    ,
z.pre_encription_ird_no_100019   ,
z.pre_encription_loc_no_100020   ,
z.provisional_income_503         ,
z.provisional_tax_option_501     ,
z.provisional_tax_payable_502    ,
z.prov_tax_over_payment_504      ,
z.pship_estate_trust_income_810  ,
z.pship_estate_trust_tax_cr_811  ,
z.refund_by_cheque_146           ,
z.refund_tax_to_pay_701          ,
z.residual_income_tax_108        ,
z.rts_in_f_co_unit_trust_100204  ,
z.rwt_and_other_tax_cr_803       ,
z.share_of_imp_credits_705       ,
z.std_disclaimer_applies_100045  ,
z.taxable_income_109             ,
z.tax_on_trustee_income_111      ,
z.tax_payable_bficiaries_100206  ,
z.total_gross_dividends_804      ,
z.total_interest_802             ,
z.total_loss_carried_fwd_114     ,
z.total_taxable_dist_100201      ,
z.total_tax_credits_115          ,
z.tot_tax_creds_accrued_100199   ,
z.tot_tax_payable_trustee_717    ,
z.transfer_amount_100131         ,
z.transfer_to_ird_no_1           ,
z.transfer_to_location_no_2      ,
z.transfer_to_period_3           ,
z.trans_to_prov_tax_100043       ,
z.trustees_div_imput_crds_720    ,
z.trustees_oseas_tax_crd_718     ,
z.trustees_wh_tax_paye_ddt_719   ,
z.trustee_tax_paid_100207        ,
z.type_of_estate_trust_100198    ,
z.uplifted_rit_all_bens_730      ,
z.uplifted_rit_total_731         ,
z.final_return_100495            ,
z.acc_class_number_1_412         ,
z.ac_premium_excl_gst_401        ,
z.amount_transferred_100537      ,
z.are_you_associated_100574      ,
z.assessment_850                 ,
z.calc_employer_premium_403      ,
z.credit_adj_red_of_fit_100540   ,
z.earner_prem_eal_ep_100533      ,
z.earner_prem_overdeduct_414     ,
z.empl_prem_ind_levy_ind_100531  ,
z.epr_resid_claim_levy_rt_100532 ,
z.excess_to_emp_over_max_100529  ,
z.fit_payable_100541             ,
z.fs_assessment_602              ,
z.gross_earnings_407             ,
z.gst_on_eal_earner_prem_100534  ,
z.gst_on_resid_claims_levy_402   ,
z.ica_closing_balance_nu_100538  ,
z.interim_repayment_amount_854   ,
z.interim_repayment_option_853   ,
z.nzs_surcharge_704              ,
z.other_tax_deductions_801       ,
z.pay_after_1st_wk_reimb_100528  ,
z.pay_emp_1st_wk_aftr_acc_100527 ,
z.student_loans_deductions_1336  ,
z.tax_on_taxable_income_721      ,
z.total_fstc_601                 ,
z.total_rebates_703              ,
z.total_tax_credits_100173       ,
z.tot_eal_earner_prem_lbl_100535 ,
z.tot_earn_lble_for_levy_100530  ,
z.tot_rcl_eal_ep_pbl_sea_100536  ,
z.wpa_closing_balance_nu_100539  ,
z.are_you_associated_100572      ,
z.tot_maori_auth_credits_100585  ,
z.tot_maori_auth_dist_100586     ,
z.ir6b_benef_oth_credit_100690   ,
z.ir6b_imp_credit_100691         ,
z.trustee_income_100678          ,
z.rd_flag_100696                 ,
z.rd_tax_credit_100694           ,
z.sps_rd_amount_100695           ,
z.adjusted_ltc_income_100794     ,
z.non_allowble_deductions_100793 ,
z.total_active_ltc_income_100792 ,
z.total_ltc_tax_credits_100791   ,
z.nallw_deduction_claimed_100825 ,
z.tax_pay_trust_100824           ,
z.dis_foreign_int_100823         ,
z.record_effective_timestamp     ,
z.record_expiry_timestamp        ,
z.record_active_flag             ,
z.record_deleted_flag            ,
z.insert_object_run_key          ,
z.update_object_run_key          
from ${var:source_db}.dss_returns_keypoints_ir6 z
left outer join ${var:source_db}.dss_special_clients_all sc
on sc.ird_number= z.ird_number
where nvl(sc.special_classification, 'STD')='STD'
and nvl( sc.record_active_flag,'Y')='Y'
and nvl(sc.record_deleted_flag, 'N') = 'N'
;