.class public Lcm/aptoide/pt/v8engine/repository/PaymentAuthorizationFactory;
.super Ljava/lang/Object;
.source "PaymentAuthorizationFactory.java"


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcm/aptoide/pt/v8engine/repository/PaymentAuthorizationFactory;->context:Landroid/content/Context;

    .line 19
    return-void
.end method


# virtual methods
.method public convertToDatabasePaymentAuthorization(ILcm/aptoide/pt/v8engine/payment/Authorization$Status;Ljava/lang/String;)Lcm/aptoide/pt/database/realm/PaymentAuthorization;
    .locals 6

    .prologue
    .line 41
    new-instance v0, Lcm/aptoide/pt/database/realm/PaymentAuthorization;

    const-string v2, ""

    const-string v3, ""

    invoke-virtual {p2}, Lcm/aptoide/pt/v8engine/payment/Authorization$Status;->name()Ljava/lang/String;

    move-result-object v4

    move v1, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcm/aptoide/pt/database/realm/PaymentAuthorization;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public convertToDatabasePaymentAuthorization(Lcm/aptoide/pt/model/v3/PaymentAuthorizationsResponse$PaymentAuthorizationResponse;Ljava/lang/String;)Lcm/aptoide/pt/database/realm/PaymentAuthorization;
    .locals 6

    .prologue
    .line 27
    new-instance v0, Lcm/aptoide/pt/database/realm/PaymentAuthorization;

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v3/PaymentAuthorizationsResponse$PaymentAuthorizationResponse;->getPaymentId()I

    move-result v1

    .line 28
    invoke-virtual {p1}, Lcm/aptoide/pt/model/v3/PaymentAuthorizationsResponse$PaymentAuthorizationResponse;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v3/PaymentAuthorizationsResponse$PaymentAuthorizationResponse;->getSuccessUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v3/PaymentAuthorizationsResponse$PaymentAuthorizationResponse;->getAuthorizationStatus()Ljava/lang/String;

    move-result-object v4

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcm/aptoide/pt/database/realm/PaymentAuthorization;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public convertToDatabasePaymentAuthorization(Lcm/aptoide/pt/v8engine/payment/Authorization;)Lcm/aptoide/pt/database/realm/PaymentAuthorization;
    .locals 6

    .prologue
    .line 33
    new-instance v0, Lcm/aptoide/pt/database/realm/PaymentAuthorization;

    .line 34
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/payment/Authorization;->getPaymentId()I

    move-result v1

    move-object v2, p1

    check-cast v2, Lcm/aptoide/pt/v8engine/payment/authorizations/WebAuthorization;

    invoke-virtual {v2}, Lcm/aptoide/pt/v8engine/payment/authorizations/WebAuthorization;->getUrl()Ljava/lang/String;

    move-result-object v2

    move-object v3, p1

    check-cast v3, Lcm/aptoide/pt/v8engine/payment/authorizations/WebAuthorization;

    .line 35
    invoke-virtual {v3}, Lcm/aptoide/pt/v8engine/payment/authorizations/WebAuthorization;->getRedirectUrl()Ljava/lang/String;

    move-result-object v3

    .line 36
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/payment/Authorization;->getStatus()Lcm/aptoide/pt/v8engine/payment/Authorization$Status;

    move-result-object v4

    invoke-virtual {v4}, Lcm/aptoide/pt/v8engine/payment/Authorization$Status;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/payment/Authorization;->getPayerId()Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcm/aptoide/pt/database/realm/PaymentAuthorization;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public convertToPaymentAuthorization(Lcm/aptoide/pt/database/realm/PaymentAuthorization;)Lcm/aptoide/pt/v8engine/payment/Authorization;
    .locals 7

    .prologue
    .line 47
    new-instance v0, Lcm/aptoide/pt/v8engine/payment/authorizations/WebAuthorization;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/repository/PaymentAuthorizationFactory;->context:Landroid/content/Context;

    invoke-virtual {p1}, Lcm/aptoide/pt/database/realm/PaymentAuthorization;->getPaymentId()I

    move-result v2

    .line 48
    invoke-virtual {p1}, Lcm/aptoide/pt/database/realm/PaymentAuthorization;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcm/aptoide/pt/database/realm/PaymentAuthorization;->getRedirectUrl()Ljava/lang/String;

    move-result-object v4

    .line 49
    invoke-virtual {p1}, Lcm/aptoide/pt/database/realm/PaymentAuthorization;->getStatus()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcm/aptoide/pt/v8engine/payment/Authorization$Status;->valueOf(Ljava/lang/String;)Lcm/aptoide/pt/v8engine/payment/Authorization$Status;

    move-result-object v5

    .line 50
    invoke-virtual {p1}, Lcm/aptoide/pt/database/realm/PaymentAuthorization;->getPayerId()Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcm/aptoide/pt/v8engine/payment/authorizations/WebAuthorization;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Lcm/aptoide/pt/v8engine/payment/Authorization$Status;Ljava/lang/String;)V

    return-object v0
.end method

.method public convertToPaymentAuthorization(Lcm/aptoide/pt/model/v3/PaymentAuthorizationsResponse$PaymentAuthorizationResponse;Ljava/lang/String;)Lcm/aptoide/pt/v8engine/payment/Authorization;
    .locals 7

    .prologue
    .line 55
    new-instance v0, Lcm/aptoide/pt/v8engine/payment/authorizations/WebAuthorization;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/repository/PaymentAuthorizationFactory;->context:Landroid/content/Context;

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v3/PaymentAuthorizationsResponse$PaymentAuthorizationResponse;->getPaymentId()I

    move-result v2

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v3/PaymentAuthorizationsResponse$PaymentAuthorizationResponse;->getUrl()Ljava/lang/String;

    move-result-object v3

    .line 56
    invoke-virtual {p1}, Lcm/aptoide/pt/model/v3/PaymentAuthorizationsResponse$PaymentAuthorizationResponse;->getSuccessUrl()Ljava/lang/String;

    move-result-object v4

    .line 57
    invoke-virtual {p1}, Lcm/aptoide/pt/model/v3/PaymentAuthorizationsResponse$PaymentAuthorizationResponse;->getAuthorizationStatus()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcm/aptoide/pt/v8engine/payment/Authorization$Status;->valueOf(Ljava/lang/String;)Lcm/aptoide/pt/v8engine/payment/Authorization$Status;

    move-result-object v5

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcm/aptoide/pt/v8engine/payment/authorizations/WebAuthorization;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Lcm/aptoide/pt/v8engine/payment/Authorization$Status;Ljava/lang/String;)V

    return-object v0
.end method

.method public create(ILcm/aptoide/pt/v8engine/payment/Authorization$Status;Ljava/lang/String;)Lcm/aptoide/pt/v8engine/payment/Authorization;
    .locals 7

    .prologue
    .line 22
    new-instance v0, Lcm/aptoide/pt/v8engine/payment/authorizations/WebAuthorization;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/repository/PaymentAuthorizationFactory;->context:Landroid/content/Context;

    const-string v3, ""

    const-string v4, ""

    move v2, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcm/aptoide/pt/v8engine/payment/authorizations/WebAuthorization;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Lcm/aptoide/pt/v8engine/payment/Authorization$Status;Ljava/lang/String;)V

    return-object v0
.end method
