.class public Lcm/aptoide/pt/dataprovider/ws/v3/GetPaymentAuthorizationsRequest;
.super Lcm/aptoide/pt/dataprovider/ws/v3/V3;
.source "GetPaymentAuthorizationsRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcm/aptoide/pt/dataprovider/ws/v3/V3",
        "<",
        "Lcm/aptoide/pt/model/v3/PaymentAuthorizationsResponse;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Ljava/lang/String;Lcm/aptoide/pt/dataprovider/ws/v3/BaseBody;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Lcm/aptoide/pt/dataprovider/ws/v3/V3;-><init>(Ljava/lang/String;Lcm/aptoide/pt/dataprovider/ws/v3/BaseBody;)V

    .line 18
    return-void
.end method

.method public static of(Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v3/GetPaymentAuthorizationsRequest;
    .locals 3

    .prologue
    .line 21
    new-instance v0, Lcm/aptoide/pt/dataprovider/ws/v3/BaseBody;

    invoke-direct {v0}, Lcm/aptoide/pt/dataprovider/ws/v3/BaseBody;-><init>()V

    .line 22
    const-string v1, "access_token"

    invoke-virtual {v0, v1, p0}, Lcm/aptoide/pt/dataprovider/ws/v3/BaseBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    new-instance v1, Lcm/aptoide/pt/dataprovider/ws/v3/GetPaymentAuthorizationsRequest;

    const-string v2, "https://webservices.aptoide.com/webservices/3/"

    invoke-direct {v1, v2, v0}, Lcm/aptoide/pt/dataprovider/ws/v3/GetPaymentAuthorizationsRequest;-><init>(Ljava/lang/String;Lcm/aptoide/pt/dataprovider/ws/v3/BaseBody;)V

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
            "Lcm/aptoide/pt/model/v3/PaymentAuthorizationsResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 29
    iget-object v0, p0, Lcm/aptoide/pt/dataprovider/ws/v3/GetPaymentAuthorizationsRequest;->map:Lcm/aptoide/pt/dataprovider/ws/v3/BaseBody;

    invoke-interface {p1, v0}, Lcm/aptoide/pt/dataprovider/ws/v3/V3$Interfaces;->getPaymentAuthorization(Lcm/aptoide/pt/dataprovider/ws/v3/BaseBody;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic loadDataFromNetwork(Ljava/lang/Object;Z)Lrx/d;
    .locals 1

    .prologue
    .line 14
    check-cast p1, Lcm/aptoide/pt/dataprovider/ws/v3/V3$Interfaces;

    invoke-virtual {p0, p1, p2}, Lcm/aptoide/pt/dataprovider/ws/v3/GetPaymentAuthorizationsRequest;->loadDataFromNetwork(Lcm/aptoide/pt/dataprovider/ws/v3/V3$Interfaces;Z)Lrx/d;

    move-result-object v0

    return-object v0
.end method
