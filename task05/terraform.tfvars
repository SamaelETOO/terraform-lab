student_email      = "giorgi_imerlishvili1@epam.com"
allowed_ip_address = "18.153.146.156/32"

app_allow_ip_rule  = "allow-ip"
app_allow_tag_rule = "allow-tm"

resource_groups = {
  rg1 = {
    name     = "cmaz-s0n7ozwy-mod5-rg-01"
    location = "eastus"
  }
  rg2 = {
    name     = "cmaz-s0n7ozwy-mod5-rg-02"
    location = "westeurope"
  }
  rg3 = {
    name     = "cmaz-s0n7ozwy-mod5-rg-03"
    location = "centralus"
  }
}

app_service_plans = {
  asp1 = {
    name               = "cmaz-s0n7ozwy-mod5-asp-01"
    resource_group_key = "rg1"
    os_type            = "Windows"
    sku_name           = "S1"
    worker_count       = 2
  }
  asp2 = {
    name               = "cmaz-s0n7ozwy-mod5-asp-02"
    resource_group_key = "rg2"
    os_type            = "Windows"
    sku_name           = "S1"
    worker_count       = 1
  }
}

app_services = {
  app1 = {
    name               = "cmaz-s0n7ozwy-mod5-app-01"
    resource_group_key = "rg1"
    plan_key           = "asp1"
  }
  app2 = {
    name               = "cmaz-s0n7ozwy-mod5-app-02"
    resource_group_key = "rg2"
    plan_key           = "asp2"
  }
}

traffic_manager = {
  name               = "cmaz-s0n7ozwy-mod5-traf"
  resource_group_key = "rg3"
  routing_method     = "Performance"
}
