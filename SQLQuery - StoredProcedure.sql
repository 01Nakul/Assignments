CREATE PROCEDURE [dbo].AllSalesorder

@SalesOrderID            bigint,
@SalesOrderDetailID      bigint,
@CarrierTrackingNumber   nvarchar,
@OrderQty                smallint,
@ProductID               bigint,
@SpecialOfferID          bigint,
@UnitPrice               money,
@UnitPriceDiscount       money,
@ModifiedDate            datetime
As
BEGIN

BEGIN TRY
    
BEGIN TRANSACTION

    Insert into Sales.AllSalesOrder(SalesOrderID, SalesOrderDetailID, 
	CarrierTrackingNumber, OrderQty, ProductID, SpecialOfferID, UnitPrice, UnitPriceDiscount)
    VALUES (@SalesOrderID,@SalesOrderDetailID, @CarrierTrackingNumber,
	@OrderQty, @ProductID, @SpecialOfferID, @UnitPrice, @UnitPriceDiscount)
END

