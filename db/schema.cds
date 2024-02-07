namespace com.nnrg.electrodb;
using {cuid} from '@sap/cds/common';
@assert.unique:{
    bpartner_no:[bpartner_no]
}
entity Business_Partner : cuid {
    bpartner_no:String(10);
    @title:'Name'
    name:String(30);
 @title:'Address 0'
    add1:String(90);
 @title:'Address 1'
    add2:String(90);
    @title:'City'
    city:String(30);
     @title:'State'
    state:Association to States;
     @title:'pin code'
    pinCode:String(20);
    @title:' Is_gstn_registered'
     Is_gstn_registered:Boolean default false;
       @title:' GSTIN number'
     GSTIN:String(20);
       @title:' is vendor'
    is_vendor:Boolean default false;
      @title:' is customer'
    is_customer:Boolean default false;
}
entity Store {
    key ID: UUID;
    store_id :String(10);
    name         : String(100);
    add1     : String(255);
    add2     : String(255);
    city         : String(100);
    state        : Association to States;
    PinCode      : String(10) @(assert.format: '^[1-9][0-9]{5}$');
}

entity Product {
    key ID: UUID;
    p_id           : String(30); 
    name     : String(100);
    imageURL        : String(300);
    costPrice       : Decimal(20, 5); 
    sellPrice       : Decimal(20, 5); 
}


entity Stock {
    key ID            : UUID;
    storeId         : Association to Store;
    productId       : Association to Product;
    stock_qty        : Integer;
}


@cds.persistence.skip
entity States {
    @title:'code'
    key code: String(3);
    @title:'description'
    description:String(10);
    
}






























