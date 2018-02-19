variable "product" {
    type = "string"
    default = "dm"
    description = "The name of your application"
}

variable "app_name" {
    default = "webshow"
}

variable "app_type" {
    default = "web"
}

variable "team_name" {
    default = "evidence"
}

variable "app_language" {
    default = "node"
}

variable "location" {
    type = "string"
    default = "UK South"
}

variable "env" {
    type = "string"
    description = "(Required) The environment in which to deploy the application infrastructure."
}

variable "subscription" {
    type = "string"
}

variable "ilbIp"{

}

variable "tenant_id" {

}

variable "jenkins_AAD_objectId" {
    type                        = "string"
    description                 = "(Required) The Azure AD object ID of a user, service principal or security group in the Azure Active Directory tenant for the vault. The object ID must be unique for the list of access policies."
}

////////////////////////////////////////////////
//Addtional Vars ///////////////////////////////
////////////////////////////////////////////////

////////////////////////////////////////////////
// Endpoints
////////////////////////////////////////////////
variable "idam-api-url" {
    default = "http://betaDevBccidamAppLB.reform.hmcts.net:80"
}

variable "s2s-url" {
    default = "http://betaDevBccidamS2SLB.reform.hmcts.net:80"
}
variable "idam-login-url" {
    default = "https://idam-test.dev.ccidam.reform.hmcts.net/login"
}

variable "em-viewer-web-url" {
    default = "em-viewer-web"
}
variable "dm-gw-web-url" {
    default = "dm-store-api-gateway-web"
}
variable "dm-store-app-url" {
    default = "dm-store-app"
}

////////////////////////////////////////////////
// Logging
////////////////////////////////////////////////
variable "root_appender" {
    default = "JSON_CONSOLE"
}

variable "json_console_pretty_print" {
    default = "false"
}

variable "log_output" {
    default = "single"
}

////////////////////////////////////////////////
// Toggle Features
////////////////////////////////////////////////

////////////////////////////////////////////////
//// Whitelists
////////////////////////////////////////////////

////////////////////////////////////////////////
// Addtional
////////////////////////////////////////////////
variable "userGroupAName" {
    default = "Group A"
}
variable "userGroupBUsers" {
    default = "Group B"
}
variable "userGroupCUsers" {
    default = "Group C"
}
variable "userGroupAUsers" {
    default = "user1a@test.com"
}
variable "userGroupBName" {
    default = "user1b@test.com"
}
variable "userGroupCName" {
    default = "user1c@test.com"
}
