.class public Lcm/aptoide/pt/dataprovider/ws/v3/InAppBillingPurchasesRequest;
.super Lcm/aptoide/pt/dataprovider/ws/v3/V3;
.source "InAppBillingPurchasesRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcm/aptoide/pt/dataprovider/ws/v3/V3",
        "<",
        "Lcm/aptoide/pt/model/v3/InAppBillingPurchasesResponse;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Ljava/lang/String;Lcm/aptoide/pt/dataprovider/ws/v3/BaseBody;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Lcm/aptoide/pt/dataprovider/ws/v3/V3;-><init>(Ljava/lang/String;Lcm/aptoide/pt/dataprovider/ws/v3/BaseBody;)V

    .line 20
    return-void
.end method

.method private static getBaseArgs(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v3/BaseBody;
    .locals 3

    .prologue
    .line 30
    new-instance v0, Lcm/aptoide/pt/dataprovider/ws/v3/BaseBody;

    invoke-direct {v0}, Lcm/aptoide/pt/dataprovider/ws/v3/BaseBody;-><init>()V

    .line 31
    const-string v1, "mode"

    const-string v2, "json"

    invoke-virtual {v0, v1, v2}, Lcm/aptoide/pt/dataprovider/ws/v3/BaseBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    const-string v1, "aptvercode"

    invoke-static {}, Lcm/aptoide/pt/utils/AptoideUtils$Core;->getVerCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcm/aptoide/pt/dataprovider/ws/v3/BaseBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    const-string v1, "package"

    invoke-virtual {v0, v1, p1}, Lcm/aptoide/pt/dataprovider/ws/v3/BaseBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    const-string v1, "apiversion"

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcm/aptoide/pt/dataprovider/ws/v3/BaseBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    const-string v1, "reqtype"

    const-string v2, "iabpurchases"

    invoke-virtual {v0, v1, v2}, Lcm/aptoide/pt/dataprovider/ws/v3/BaseBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    const-string v1, "access_token"

    invoke-virtual {v0, v1, p3}, Lcm/aptoide/pt/dataprovider/ws/v3/BaseBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    const-string v1, "purchasetype"

    invoke-virtual {v0, v1, p2}, Lcm/aptoide/pt/dataprovider/ws/v3/BaseBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    return-object v0
.end method

.method public static of(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v3/InAppBillingPurchasesRequest;
    .locals 3

    .prologue
    .line 24
    invoke-static {p0, p1, p2, p3}, Lcm/aptoide/pt/dataprovider/ws/v3/InAppBillingPurchasesRequest;->getBaseArgs(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v3/BaseBody;

    move-result-object v0

    .line 25
    new-instance v1, Lcm/aptoide/pt/dataprovider/ws/v3/InAppBillingPurchasesRequest;

    const-string v2, "https://webservices.aptoide.com/webservices/3/"

    invoke-direct {v1, v2, v0}, Lcm/aptoide/pt/dataprovider/ws/v3/InAppBillingPurchasesRequest;-><init>(Ljava/lang/String;Lcm/aptoide/pt/dataprovider/ws/v3/BaseBody;)V

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
            "Lcm/aptoide/pt/model/v3/InAppBillingPurchasesResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 44
    iget-object v0, p0, Lcm/aptoide/pt/dataprovider/ws/v3/InAppBillingPurchasesRequest;->map:Lcm/aptoide/pt/dataprovider/ws/v3/BaseBody;

    invoke-interface {p1, v0}, Lcm/aptoide/pt/dataprovider/ws/v3/V3$Interfaces;->getInAppBillingPurchases(Lcm/aptoide/pt/dataprovider/ws/v3/BaseBody;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic loadDataFromNetwork(Ljava/lang/Object;Z)Lrx/d;
    .locals 1

    .prologue
    .line 16
    check-cast p1, Lcm/aptoide/pt/dataprovider/ws/v3/V3$Interfaces;

    invoke-virtual {p0, p1, p2}, Lcm/aptoide/pt/dataprovider/ws/v3/InAppBillingPurchasesRequest;->loadDataFromNetwork(Lcm/aptoide/pt/dataprovider/ws/v3/V3$Interfaces;Z)Lrx/d;

    move-result-object v0

    return-object v0
.end method
