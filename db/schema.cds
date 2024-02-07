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
@cds.persistence.skip
entity States {
    @title:'code'
    key code: String(3);
    @title:'description'
    description:String(10);
    
}