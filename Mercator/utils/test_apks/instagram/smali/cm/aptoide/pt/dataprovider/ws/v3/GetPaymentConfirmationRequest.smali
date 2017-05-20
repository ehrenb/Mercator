.class public Lcm/aptoide/pt/dataprovider/ws/v3/GetPaymentConfirmationRequest;
.super Lcm/aptoide/pt/dataprovider/ws/v3/V3;
.source "GetPaymentConfirmationRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcm/aptoide/pt/dataprovider/ws/v3/V3",
        "<",
        "Lcm/aptoide/pt/model/v3/PaymentConfirmationResponse;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcm/aptoide/pt/dataprovider/ws/v3/BaseBody;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Lcm/aptoide/pt/dataprovider/ws/v3/V3;-><init>(Ljava/lang/String;Lcm/aptoide/pt/dataprovider/ws/v3/BaseBody;)V

    .line 20
    return-void
.end method

.method private static getBaseBody(ILcm/aptoide/pt/dataprovider/NetworkOperatorManager;Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v3/BaseBody;
    .locals 3

    .prologue
    .line 32
    new-instance v0, Lcm/aptoide/pt/dataprovider/ws/v3/BaseBody;

    invoke-direct {v0}, Lcm/aptoide/pt/dataprovider/ws/v3/BaseBody;-><init>()V

    .line 33
    const-string v1, "mode"

    const-string v2, "json"

    invoke-virtual {v0, v1, v2}, Lcm/aptoide/pt/dataprovider/ws/v3/BaseBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    const-string v1, "payreqtype"

    const-string v2, "rest"

    invoke-virtual {v0, v1, v2}, Lcm/aptoide/pt/dataprovider/ws/v3/BaseBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    const-string v1, "productid"

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcm/aptoide/pt/dataprovider/ws/v3/BaseBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    const-string v1, "access_token"

    invoke-virtual {v0, v1, p2}, Lcm/aptoide/pt/dataprovider/ws/v3/BaseBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    invoke-static {p1, v0}, Lcm/aptoide/pt/dataprovider/ws/v3/GetPaymentConfirmationRequest;->addNetworkInformation(Lcm/aptoide/pt/dataprovider/NetworkOperatorManager;Lcm/aptoide/pt/dataprovider/ws/v3/BaseBody;)V

    .line 39
    return-object v0
.end method

.method public static of(ILcm/aptoide/pt/dataprovider/NetworkOperatorManager;ILjava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v3/GetPaymentConfirmationRequest;
    .locals 3

    .prologue
    .line 24
    invoke-static {p0, p1, p3}, Lcm/aptoide/pt/dataprovider/ws/v3/GetPaymentConfirmationRequest;->getBaseBody(ILcm/aptoide/pt/dataprovider/NetworkOperatorManager;Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v3/BaseBody;

    move-result-object v0

    .line 25
    const-string v1, "reqtype"

    const-string v2, "iabpurchasestatus"

    invoke-virtual {v0, v1, v2}, Lcm/aptoide/pt/dataprovider/ws/v3/BaseBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    const-string v1, "apiversion"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcm/aptoide/pt/dataprovider/ws/v3/BaseBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    new-instance v1, Lcm/aptoide/pt/dataprovider/ws/v3/GetPaymentConfirmationRequest;

    const-string v2, "https://webservices.aptoide.com/webservices/3/"

    invoke-direct {v1, v2, v0}, Lcm/aptoide/pt/dataprovider/ws/v3/GetPaymentConfirmationRequest;-><init>(Ljava/lang/String;Lcm/aptoide/pt/dataprovider/ws/v3/BaseBody;)V

    return-object v1
.end method

.method public static of(ILcm/aptoide/pt/dataprovider/NetworkOperatorManager;Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v3/GetPaymentConfirmationRequest;
    .locals 3

    .prologue
    .line 44
    invoke-static {p0, p1, p2}, Lcm/aptoide/pt/dataprovider/ws/v3/GetPaymentConfirmationRequest;->getBaseBody(ILcm/aptoide/pt/dataprovider/NetworkOperatorManager;Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v3/BaseBody;

    move-result-object v0

    .line 45
    const-string v1, "reqtype"

    const-string v2, "apkpurchasestatus"

    invoke-virtual {v0, v1, v2}, Lcm/aptoide/pt/dataprovider/ws/v3/BaseBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    new-instance v1, Lcm/aptoide/pt/dataprovider/ws/v3/GetPaymentConfirmationRequest;

    const-string v2, "https://webservices.aptoide.com/webservices/3/"

    invoke-direct {v1, v2, v0}, Lcm/aptoide/pt/dataprovider/ws/v3/GetPaymentConfirmationRequest;-><init>(Ljava/lang/String;Lcm/aptoide/pt/dataprovider/ws/v3/BaseBody;)V

    return-object v1
.end method


# virtual methods
.method protected loadDataFromNetwork(Lcm/aptoide/pt/dataprovider/ws/v3/V3$Interfaces;Z)Lrx/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcm/aptoide/pt/dataprovider/ws/v3/V3$Interfaces;",
            "Z)",
            "Lrx/d",
            "<",
            "Lcm/aptoide/pt/model/v3/PaymentConfirmationResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 52
    iget-object v0, p0, Lcm/aptoide/pt/dataprovider/ws/v3/GetPaymentConfirmationRequest;->map:Lcm/aptoide/pt/dataprovider/ws/v3/BaseBody;

    invoke-interface {p1, v0}, Lcm/aptoide/pt/dataprovider/ws/v3/V3$Interfaces;->getPaymentConfirmation(Lcm/aptoide/pt/dataprovider/ws/v3/BaseBody;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic loadDataFromNetwork(Ljava/lang/Object;Z)Lrx/d;
    .locals 1

    .prologue
    .line 16
    check-cast p1, Lcm/aptoide/pt/dataprovider/ws/v3/V3$Interfaces;

    invoke-virtual {p0, p1, p2}, Lcm/aptoide/pt/dataprovider/ws/v3/GetPaymentConfirmationRequest;->loadDataFromNetwork(Lcm/aptoide/pt/dataprovider/ws/v3/V3$Interfaces;Z)Lrx/d;

    move-result-object v0

    return-object v0
.end method
