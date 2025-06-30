# यह संसाधन एक वर्चुअल मशीन बनाता है।
# इसमें वर्चुअल मशीन का नाम, लोकेशन, और आवश्यक कॉन्फ़िगरेशन शामिल हैं।
# कृपया सुनिश्चित करें कि सभी आवश्यक इनपुट मान सही ढंग से प्रदान किए गए हैं।

resource "azurerm_storage_account" "pagal1storage" {
  name = var.stgacc_name
  resource_group_name      = var.rg_name
  location                 = var.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}
