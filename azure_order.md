Document: "edgegateway"


Path: "/tmp/azure-rest-api-specs/specification/edgegateway/resource-manager/Microsoft.DataBoxEdge/stable/2018-07-01/edgegateway.json")

## Order

The order details.

```puppet
azure_order {
  api_version => "api_version",
  device_name => "device_name",
  order => "order",
  properties => $azure_order_properties
  resource_group_name => "resource_group_name",
  subscription_id => "subscription_id",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | The API version. |
|device_name | String | true | Name of the edge device for which order needs to be added or updated. |
|order | Hash | true | Order to be added. |
|properties | [OrderProperties](#orderproperties) | false | The order properties. |
|resource_group_name | String | true | The resource group name. |
|subscription_id | String | true | The subscription ID. |
        
## OrderProperties

Order Properties.

```puppet
$azure_order_properties = {
  changeStatusTo => $azure_order_status
  contactInformation => $azure_contact_details
  deliveryTrackingInfo => $azure_tracking_info
  orderHistory => $azure_order_status
  returnTrackingInfo => $azure_tracking_info
  shippingAddress => $azure_address
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|changeStatusTo | [OrderStatus](#orderstatus) | false | Current status of the Order. |
|contactInformation | [ContactDetails](#contactdetails) | false | The contact details. |
|deliveryTrackingInfo | [TrackingInfo](#trackinginfo) | false | Tracking information related to the packages being delivered to the customer whether original or replacement devices. |
|orderHistory | [OrderStatus](#orderstatus) | false | List of status changes in the order. |
|returnTrackingInfo | [TrackingInfo](#trackinginfo) | false | Tracking information related to the package being returned from the customer whether original or replacement devices. |
|shippingAddress | [Address](#address) | false | The shipping address. |
        
## OrderStatus

Represents a single status change.

```puppet
$azure_order_status = {
  comments => "comments (optional)",
  status => "status",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|comments | String | false | Comments related to this status change. |
|status | String | true | Status of the order pertaining to the allowed StatusTypes. |
        
## ContactDetails

Contains all the contact details of the customer.

```puppet
$azure_contact_details = {
  companyName => "companyName",
  contactPerson => "contactPerson",
  emailList => "emailList",
  phone => "phone",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|companyName | String | true | Gets or sets the name of the company. |
|contactPerson | String | true | Gets or sets the contact person. |
|emailList | Array | true | Gets or sets the email list. |
|phone | String | true | Gets or sets the phone number. |
        
## TrackingInfo

Tracking courier information.

```puppet
$azure_tracking_info = {
  carrierName => "carrierName (optional)",
  serialNumber => "serialNumber (optional)",
  trackingId => "trackingId (optional)",
  trackingUrl => "trackingUrl (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|carrierName | String | false | Name of the carrier used in the delivery. |
|serialNumber | String | false | Serial number of the device being tracked. |
|trackingId | String | false | Tracking ID of the shipment. |
|trackingUrl | String | false | Tracking URL of the shipment. |
        
        
        
## Address

The shipping address of the customer.

```puppet
$azure_address = {
  addressLine1 => "addressLine1",
  addressLine2 => "addressLine2",
  addressLine3 => "addressLine3",
  city => "city",
  country => "country",
  postalCode => "postalCode",
  state => "state",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|addressLine1 | String | true | The address line1. |
|addressLine2 | String | true | The address line2. |
|addressLine3 | String | true | The address line3. |
|city | String | true | The city name. |
|country | String | true | The country name. |
|postalCode | String | true | The postal code. |
|state | String | true | The state name. |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the Order

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.DataBoxEdge/dataBoxEdgeDevices/%{device_name}/orders/default`|Put||Orders_CreateOrUpdate|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.DataBoxEdge/dataBoxEdgeDevices/%{device_name}/orders/default`|Get||Orders_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.DataBoxEdge/dataBoxEdgeDevices/%{device_name}/orders`|Get||Orders_ListByDataBoxEdgeDevice|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.DataBoxEdge/dataBoxEdgeDevices/%{device_name}/orders/default`|Put||Orders_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.DataBoxEdge/dataBoxEdgeDevices/%{device_name}/orders/default`|Delete||Orders_Delete|
