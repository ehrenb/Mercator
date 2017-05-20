.class public Lcm/aptoide/pt/dataprovider/ws/v3/CreatePaymentConfirmationRequest;
.super Lcm/aptoide/pt/dataprovider/ws/v3/V3;
.source "CreatePaymentConfirmationRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcm/aptoide/pt/dataprovider/ws/v3/V3",
        "<",
        "Lcm/aptoide/pt/model/v3/BaseV3Response;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Ljava/lang/String;Lcm/aptoide/pt/dataprovider/ws/v3/BaseBody;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Lcm/aptoide/pt/dataprovider/ws/v3/V3;-><init>(Ljava/lang/String;Lcm/aptoide/pt/dataprovider/ws/v3/BaseBody;)V

    .line 19
    return-void
.end method

.method private static getBaseBody(IILcm/aptoide/pt/dataprovider/NetworkOperatorManager;Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v3/BaseBody;
    .locals 3

    .prologue
    .line 30
    new-instance v0, Lcm/aptoide/pt/dataprovider/ws/v3/BaseBody;

    invoke-direct {v0}, Lcm/aptoide/pt/dataprovider/ws/v3/BaseBody;-><init>()V

    .line 31
    const-string v1, "productid"

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcm/aptoide/pt/dataprovider/ws/v3/BaseBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    const-string v1, "access_token"

    invoke-virtual {v0, v1, p3}, Lcm/aptoide/pt/dataprovider/ws/v3/BaseBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    const-string v1, "payType"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcm/aptoide/pt/dataprovider/ws/v3/BaseBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    const-string v1, "reqType"

    const-string v2, "rest"

    invoke-virtual {v0, v1, v2}, Lcm/aptoide/pt/dataprovider/ws/v3/BaseBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    invoke-static {p2, v0}, Lcm/aptoide/pt/dataprovider/ws/v3/CreatePaymentConfirmationRequest;->addNetworkInformation(Lcm/aptoide/pt/dataprovider/NetworkOperatorManager;Lcm/aptoide/pt/dataprovider/ws/v3/BaseBody;)V

    .line 38
    return-object v0
.end method

.method public static ofInApp(IILcm/aptoide/pt/dataprovider/NetworkOperatorManager;Ljava/lang/String;Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v3/CreatePaymentConfirmationRequest;
    .locals 3

    .prologue
    .line 23
    invoke-static {p0, p1, p2, p4}, Lcm/aptoide/pt/dataprovider/ws/v3/CreatePaymentConfirmationRequest;->getBaseBody(IILcm/aptoide/pt/dataprovider/NetworkOperatorManager;Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v3/BaseBody;

    move-result-object v0

    .line 24
    const-string v1, "developerPayload"

    invoke-virtual {v0, v1, p3}, Lcm/aptoide/pt/dataprovider/ws/v3/BaseBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    new-instance v1, Lcm/aptoide/pt/dataprovider/ws/v3/CreatePaymentConfirmationRequest;

    const-string v2, "https://webservices.aptoide.com/webservices/3/"

    invoke-direct {v1, v2, v0}, Lcm/aptoide/pt/dataprovider/ws/v3/CreatePaymentConfirmationRequest;-><init>(Ljava/lang/String;Lcm/aptoide/pt/dataprovider/ws/v3/BaseBody;)V

    return-object v1
.end method

.method public static ofInApp(IILcm/aptoide/pt/dataprovider/NetworkOperatorManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v3/CreatePaymentConfirmationRequest;
    .locals 3

    .prologue
    .line 44
    invoke-static {p0, p1, p2, p4}, Lcm/aptoide/pt/dataprovider/ws/v3/CreatePaymentConfirmationRequest;->getBaseBody(IILcm/aptoide/pt/dataprovider/NetworkOperatorManager;Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v3/BaseBody;

    move-result-object v0

    .line 45
    const-string v1, "paykey"

    invoke-virtual {v0, v1, p5}, Lcm/aptoide/pt/dataprovider/ws/v3/BaseBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    const-string v1, "developerPayload"

    invoke-virtual {v0, v1, p3}, Lcm/aptoide/pt/dataprovider/ws/v3/BaseBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    new-instance v1, Lcm/aptoide/pt/dataprovider/ws/v3/CreatePaymentConfirmationRequest;

    const-string v2, "https://webservices.aptoide.com/webservices/3/"

    invoke-direct {v1, v2, v0}, Lcm/aptoide/pt/dataprovider/ws/v3/CreatePaymentConfirmationRequest;-><init>(Ljava/lang/String;Lcm/aptoide/pt/dataprovider/ws/v3/BaseBody;)V

    return-object v1
.end method

.method public static ofPaidApp(IILcm/aptoide/pt/dataprovider/NetworkOperatorManager;Ljava/lang/String;Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v3/CreatePaymentConfirmationRequest;
    .locals 3

    .prologue
    .line 52
    invoke-static {p0, p1, p2, p4}, Lcm/aptoide/pt/dataprovider/ws/v3/CreatePaymentConfirmationRequest;->getBaseBody(IILcm/aptoide/pt/dataprovider/NetworkOperatorManager;Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v3/BaseBody;

    move-result-object v0

    .line 53
    const-string v1, "repo"

    invoke-virtual {v0, v1, p3}, Lcm/aptoide/pt/dataprovider/ws/v3/BaseBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    new-instance v1, Lcm/aptoide/pt/dataprovider/ws/v3/CreatePaymentConfirmationRequest;

    const-string v2, "https://webservices.aptoide.com/webservices/3/"

    invoke-direct {v1, v2, v0}, Lcm/aptoide/pt/dataprovider/ws/v3/CreatePaymentConfirmationRequest;-><init>(Ljava/lang/String;Lcm/aptoide/pt/dataprovider/ws/v3/BaseBody;)V

    return-object v1
.end method

.method public static ofPaidApp(IILcm/aptoide/pt/dataprovider/NetworkOperatorManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v3/CreatePaymentConfirmationRequest;
    .locals 3

    .prologue
    .line 60
    invoke-static {p0, p1, p2, p4}, Lcm/aptoide/pt/dataprovider/ws/v3/CreatePaymentConfirmationRequest;->getBaseBody(IILcm/aptoide/pt/dataprovider/NetworkOperatorManager;Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v3/BaseBody;

    move-result-object v0

    .line 61
    const-string v1, "paykey"

    invoke-virtual {v0, v1, p5}, Lcm/aptoide/pt/dataprovider/ws/v3/BaseBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    const-string v1, "repo"

    invoke-virtual {v0, v1, p3}, Lcm/aptoide/pt/dataprovider/ws/v3/BaseBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    new-instance v1, Lcm/aptoide/pt/dataprovider/ws/v3/CreatePaymentConfirmationRequest;

    const-string v2, "https://webservices.aptoide.com/webservices/3/"

    invoke-direct {v1, v2, v0}, Lcm/aptoide/pt/dataprovider/ws/v3/CreatePaymentConfirmationRequest;-><init>(Ljava/lang/String;Lcm/aptoide/pt/dataprovider/ws/v3/BaseBody;)V

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
            "Lcm/aptoide/pt/model/v3/BaseV3Response;",
            ">;"
        }
    .end annotation

    .prologue
    .line 68
    iget-object v0, p0, Lcm/aptoide/pt/dataprovider/ws/v3/CreatePaymentConfirmationRequest;->map:Lcm/aptoide/pt/dataprovider/ws/v3/BaseBody;

    invoke-interface {p1, v0}, Lcm/aptoide/pt/dataprovider/ws/v3/V3$Interfaces;->createPaymentConfirmation(Lcm/aptoide/pt/dataprovider/ws/v3/BaseBody;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic loadDataFromNetwork(Ljava/lang/Object;Z)Lrx/d;
    .locals 1

    .prologue
    .line 15
    check-cast p1, Lcm/aptoide/pt/dataprovider/ws/v3/V3$Interfaces;

    invoke-virtual {p0, p1, p2}, Lcm/aptoide/pt/dataprovider/ws/v3/CreatePaymentConfirmationRequest;->loadDataFromNetwork(Lcm/aptoide/pt/dataprovider/ws/v3/V3$Interfaces;Z)Lrx/d;

    move-result-object v0

    return-object v0
.end method
