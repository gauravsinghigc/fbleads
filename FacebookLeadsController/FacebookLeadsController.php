<?php

//Save Page details
if (isset($_POST['SavePageDetails'])) {
  $facebookAccountDetails = [
    "fb_page_name" => $_POST['fb_page_name'],
    "fb_adaccounts_id" => $_POST['fb_adaccounts_id'],
    "fb_campaigns_id" => $_POST['fb_campaigns_id'],
    "fb_campaigns_name" => $_POST['fb_campaigns_name'],
    "fb_adsets_id" => $_POST['fb_adsets_id'],
    "fb_adsets_name" => $_POST['fb_adsets_name'],
    "fb_ads_id" => $_POST['fb_ads_id'],
    "fb_ads_name" => $_POST['fb_ads_name'],
    "created_by" => AuthAppUser("UserId"),
    "updated_by" => AuthAppUser("UserId"),
    "CompanyID" => APP_COMPANY_ID,
  ];
  $Save = INSERT("config_facebook_accounts", $facebookAccountDetails);
  RESPONSE($Save, "Facebook account details successfully saved", "Something went wrong! Please try again later");

  //update facebook account details
} elseif (isset($_POST['UpdateFacebookDetails'])) {
  $id = SECURE($_POST['id'], "d");
  $facebookAccountDetails = [
    "fb_page_name" => $_POST['fb_page_name'],
    "fb_adaccounts_id" => $_POST['fb_adaccounts_id'],
    "fb_campaigns_id" => $_POST['fb_campaigns_id'],
    "fb_campaigns_name" => $_POST['fb_campaigns_name'],
    "fb_adsets_id" => $_POST['fb_adsets_id'],
    "fb_adsets_name" => $_POST['fb_adsets_name'],
    "fb_ads_id" => $_POST['fb_ads_id'],
    "fb_ads_name" => $_POST['fb_ads_name'],
    "updated_by" => AuthAppUser("UserId"),
  ];
  $Save = UPDATE_TABLE("config_facebook_accounts", $facebookAccountDetails, "id='$id'");
  RESPONSE($Save, "Facebook account details successfully updated!", "Something went wrong! Please try again later");

  //remove facebook account details
} elseif (isset($_GET['remove_facebook_pages'])) {
  DeleteReqHandler(
    "remove_facebook_pages",
    [
      "config_facebook_accounts" => "id='" . SECURE($_GET['control_id'], 'd') . "'",
    ],
    [
      "true" => "Facebook pages successfully removed!",
      "false" => "Unable to remove facebook pages! Please try again later",
    ]
  );

  //get leads from facebook accounts
} elseif (isset($_POST['FetchAllFBLeads'])) {
  $companyId = APP_COMPANY_ID;
  $GetFacebookPages = _DB_COMMAND_("SELECT * FROM config_facebook_accounts WHERE CompanyID='$companyId'", true);
  if ($GetFacebookPages != null) {
    foreach ($GetFacebookPages as $Facebook) {
      $Id = $Facebook->id;
      $fb_page_name = $Facebook->fb_page_name;
      $fb_adaccounts_id = $Facebook->fb_adaccounts_id;
      $fb_campaigns_id = $Facebook->fb_campaigns_id;
      $fb_campaigns_name = $Facebook->fb_campaigns_name;
      $fb_adsets_id = $Facebook->fb_adsets_id;
      $fb_adsets_name = $Facebook->fb_adsets_name;
      $fb_ads_id = $Facebook->fb_ads_id;
      $fb_ads_name = $Facebook->fb_ads_name;
      $fb_access_token = $Facebook->fb_access_token;
      $ch = curl_init();
      $url = "https://graph.facebook.com/v17.0/me?fields=id%2Cname%2Cadaccounts%7Baccount_id%2Caccount_status%2Ccampaigns%7Bid%2Cname%2Cstatus%2Cstart_time%2Cadsets%7Bid%2Cname%2Cstatus%2Cstart_time%2Cend_time%2Cads%7Bid%2Cname%2Cstatus%2Cleads%7D%7D%7D%7D&access_token=$fb_access_token";
      curl_setopt($ch, CURLOPT_URL, $url);
      curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
      $resp = curl_exec($ch);
      if ($e = curl_error($ch)) {
        echo $e;
      } else {
        $decoded = json_decode($resp);
        $campaigns = $decoded->adaccounts->data[0]->campaigns->data;
        foreach ($campaigns as $campaignsData) {
          if ($campaignsData->id == $fb_campaigns_id) {
            $Adsets = $campaignsData->adsets->data;
            foreach ($Adsets as $adsetsData) {
              if ($adsetsData->id == $fb_adsets_id) {
                $Ads = $adsetsData->ads->data;
                foreach ($Ads as $adsData) {
                  if ($adsData->id == $fb_ads_id) {
                    $leads = $adsData->leads->data;
                    foreach ($leads as $leadsData) {
                      foreach ($leadsData->field_data as $leadsFieldData) {

                        if ($leadsFieldData->name == "your_whatsapp_number") {
                          foreach ($leadsFieldData->values as $leadsFieldValues) {
                            $WhatsAppsNo = $leadsFieldValues;
                          }
                        }
                        if ($leadsFieldData->name == "full_name") {
                          foreach ($leadsFieldData->values as $leadsFieldValues) {
                            $FullName = $leadsFieldValues;
                          }
                        }
                        if ($leadsFieldData->name == "city") {
                          foreach ($leadsFieldData->values as $leadsFieldValues) {
                            $City = $leadsFieldValues;
                          }
                        }
                        if ($leadsFieldData->name == "your_mobile_number") {
                          foreach ($leadsFieldData->values as $leadsFieldValues) {
                            $MobileNo = $leadsFieldValues;
                          }
                        }
                      }
                      $isLeadExists = CHECK("SELECT LeadsPhone FROM lead_uploads WHERE LeadsPhone='$MobileNo'");
                      if ($isLeadExists != true) {
                        $FaceBookLeads = [
                          "LeadsName" => $FullName,
                          "LeadsPhone" => $MobileNo,
                          "LeadsWhatsappPhoneNumber" => $WhatsAppsNo,
                          "LeadsCity" => $City,
                          "LeadsSource" => "Facebook",
                          "UploadedOn" => CURRENT_DATE_TIME,
                          "LeadStatus" => "UPLOADED",
                          "LeadsUploadBy" => AuthAppUser("UserId"),
                          "LeadsUploadedfor" => "1",
                          "LeadsAddress" => "Null",
                          "LeadsProfession" => "Student",
                          "LeadProjectsRef" => "Null",
                        ];
                        $Save = INSERT("lead_uploads", $FaceBookLeads);
                      } else {
                        $Save = "Null";
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
      curl_close($ch);
    }
  }

  //transfer leads
  //TRANSFER LEADS to users

  //Distribute Leads
  $TotalLeads = TOTAL("SELECT * FROM lead_uploads where LeadStatus='UPLOADED' and CompanyID='$companyId'");
  if ($TotalLeads == 0) {
    RESPONSE(false, "", "New leads not found at the moment!");
  } else {
    $FetchAllUploadedLeads = _DB_COMMAND_("SELECT * FROM lead_uploads where LeadStatus='UPLOADED'", true);
    if ($FetchAllUploadedLeads != null) {
      foreach ($FetchAllUploadedLeads as $UploadedLead) {
        $LeadsCity = $UploadedLead->LeadsCity;
        $LeadPersonManagedBy = FETCH("SELECT * FROM users where UserId!='1' and UserStatus='1' ORDER BY RAND()", "UserId");

        //move leads into user accounts
        $leadsUploadId = $UploadedLead->leadsUploadId;
        $data = array(
          "LeadPersonFullname" => $UploadedLead->LeadsName,
          "LeadPersonPhoneNumber" => $UploadedLead->LeadsPhone,
          "LeadPersonEmailId" => $UploadedLead->LeadsEmail,
          "LeadPersonAddress" => $UploadedLead->LeadsAddress,
          "LeadPersonCreatedBy" => AuthAppUser("UserId"),
          "LeadPersonManagedBy" => $LeadPersonManagedBy,
          "LeadPersonStatus" => "FRESH LEAD",
          "LeadPriorityLevel" => "HIGH",
          "LeadPersonSource" => $UploadedLead->LeadsSource,
          "LeadPersonCreatedAt" => CURRENT_DATE_TIME,
          "LeadPersonLastUpdatedAt" => CURRENT_DATE_TIME,
        );
        $save = INSERT("leads", $data);
        $LeadMainId = FETCH("SELECT * FROM leads where LeadPersonPhoneNumber='" . $UploadedLead->LeadsPhone . "'", "LeadsId");
        $LeadRequirements = array(
          "LeadMainId" => $LeadMainId,
          "LeadRequirementDetails" => FETCH("SELECT * FROM projects where ProjectsId='" . $UploadedLead->LeadProjectsRef . "'", "ProjectName"),
          "LeadRequirementStatus" => "1",
          "LeadRequirementCreatedAt" => CURRENT_DATE_TIME,
          "LeadRequirementNotes" => "",
        );
        $Save = INSERT("lead_requirements", $LeadRequirements);
        $Update = UPDATE("UPDATE lead_uploads SET LeadStatus='TRANSFERRED' WHERE leadsUploadId='$leadsUploadId'");
      }
      RESPONSE($save, "Leads Fetched successfully!", "Fresh leads not found!");
    }
  }
}
