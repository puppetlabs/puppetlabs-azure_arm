Document: "edgegateway"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/2fbb5118cd34f412a51d9bc8a274224b216763cf/specification/edgegateway/resource-manager/Microsoft.DataBoxEdge/stable/2019-03-01/edgegateway.json")

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
|device_name | String | true | The device name. |
|order | Hash | true | The order to be created or updated. |
|properties | [OrderProperties](#orderproperties) | false | The order properties. |
|resource_group_name | String | true | The resource group name. |
|subscription_id | String | true | The subscription ID. |
        
## OrderProperties

Order properties.

```puppet
$azure_order_properties = {
  contactInformation => $azure_contact_details
  currentStatus => $azure_order_status
  deliveryTrackingInfo => $azure_tracking_info
  orderHistory => $azure_order_status
  returnTrackingInfo => $azure_tracking_info
  shippingAddress => $azure_address
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|contactInformation | [ContactDetails](#contactdetails) | true | The contact details. |
|currentStatus | [OrderStatus](#orderstatus) | false | Current status of the order. |
|deliveryTrackingInfo | [TrackingInfo](#trackinginfo) | false | Tracking information for the package delivered to the customer whether it has an original or a replacement device. |
|orderHistory | [OrderStatus](#orderstatus) | false | List of status changes in the order. |
|returnTrackingInfo | [TrackingInfo](#trackinginfo) | false | Tracking information for the package returned from the customer whether it has an original or a replacement device. |
|shippingAddress | [Address](#address) | true | The shipping address. |
        
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
|companyName | String | true | The name of the company. |
|contactPerson | String | true | The contact person name. |
|emailList | Array | true | The email list. |
|phone | String | true | The phone number. |
        
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
|status | String | true | Status of the order as per the allowed status types. |
        
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
  addressLine2 => "addressLine2 (optional)",
  addressLine3 => "addressLine3 (optional)",
  city => "city",
  country => "country",
  postalCode => "postalCode",
  state => "state",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|addressLine1 | String | true | The address line1. |
|addressLine2 | String | false | The address line2. |
|addressLine3 | String | false | The address line3. |
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
