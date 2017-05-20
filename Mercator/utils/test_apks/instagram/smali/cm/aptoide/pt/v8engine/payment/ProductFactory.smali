.class public Lcm/aptoide/pt/v8engine/payment/ProductFactory;
.super Ljava/lang/Object;
.source "ProductFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lcm/aptoide/pt/model/v3/InAppBillingSkuDetailsResponse$Metadata;ILjava/lang/String;Ljava/lang/String;Lcm/aptoide/pt/model/v3/InAppBillingSkuDetailsResponse$PurchaseDataObject;)Lcm/aptoide/pt/v8engine/payment/products/AptoideProduct;
    .locals 10

    .prologue
    .line 27
    new-instance v0, Lcm/aptoide/pt/v8engine/payment/products/InAppBillingProduct;

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v3/InAppBillingSkuDetailsResponse$Metadata;->getId()I

    move-result v1

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v3/InAppBillingSkuDetailsResponse$Metadata;->getIcon()Ljava/lang/String;

    move-result-object v2

    .line 28
    invoke-virtual {p5}, Lcm/aptoide/pt/model/v3/InAppBillingSkuDetailsResponse$PurchaseDataObject;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p5}, Lcm/aptoide/pt/model/v3/InAppBillingSkuDetailsResponse$PurchaseDataObject;->getDescription()Ljava/lang/String;

    move-result-object v4

    .line 29
    invoke-virtual {p5}, Lcm/aptoide/pt/model/v3/InAppBillingSkuDetailsResponse$PurchaseDataObject;->getProductId()Ljava/lang/String;

    move-result-object v6

    .line 30
    invoke-virtual {p5}, Lcm/aptoide/pt/model/v3/InAppBillingSkuDetailsResponse$PurchaseDataObject;->getType()Ljava/lang/String;

    move-result-object v9

    move v5, p2

    move-object v7, p4

    move-object v8, p3

    invoke-direct/range {v0 .. v9}, Lcm/aptoide/pt/v8engine/payment/products/InAppBillingProduct;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public create(Lcm/aptoide/pt/model/v7/GetAppMeta$App;)Lcm/aptoide/pt/v8engine/payment/products/AptoideProduct;
    .locals 9

    .prologue
    .line 20
    new-instance v1, Lcm/aptoide/pt/v8engine/payment/products/PaidAppProduct;

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getPay()Lcm/aptoide/pt/model/v7/GetAppMeta$Pay;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/GetAppMeta$Pay;->getProductId()I

    move-result v2

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getIcon()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getName()Ljava/lang/String;

    move-result-object v4

    .line 21
    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getMedia()Lcm/aptoide/pt/model/v7/GetAppMeta$Media;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/GetAppMeta$Media;->getDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getId()J

    move-result-wide v6

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getStore()Lcm/aptoide/pt/model/v7/store/Store;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/store/Store;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-direct/range {v1 .. v8}, Lcm/aptoide/pt/v8engine/payment/products/PaidAppProduct;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    return-object v1
.end method
