student_email      = "your_email@example.com"
allowed_ip_address = "1.2.3.4/32"

app_allow_ip_rule  = "AllowVerificationAgent"
app_allow_tag_rule = "AllowTrafficManager"

resource_groups = {
  rg1 = {
    name     = "REPLACE_RG1_NAME"
    location = "eastus"
  }
  rg2 = {
    name     = "REPLACE_RG2_NAME"
    location = "westeurope"
  }
  rg3 = {
    name     = "REPLACE_RG3_NAME"
    location = "centralus"
  }
}

app_service_plans = {
  asp1 = {
    name               = "REPLACE_ASP1_NAME"
    resource_group_key = "rg1"
    os_type            = "Windows"
    sku_name           = "B1"
    worker_count       = 1
  }
  asp2 = {
    name               = "REPLACE_ASP2_NAME"
    resource_group_key = "rg2"
    os_type            = "Windows"
    sku_name           = "B1"
    worker_count       = 1
  }
}

app_services = {
  app1 = {
    name               = "REPLACE_APP1_NAME"
    resource_group_key = "rg1"
    plan_key           = "asp1"
  }
  app2 = {
    name               = "REPLACE_APP2_NAME"
    resource_group_key = "rg2"
    plan_key           = "asp2"
  }
}

traffic_manager = {
  name               = "REPLACE_TM_NAME"
  resource_group_key = "rg3"
  routing_method     = "Performance"
}
