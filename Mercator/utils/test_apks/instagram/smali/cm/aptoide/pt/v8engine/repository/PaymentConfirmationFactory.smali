.class public Lcm/aptoide/pt/v8engine/repository/PaymentConfirmationFactory;
.super Ljava/lang/Object;
.source "PaymentConfirmationFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public convertToDatabasePaymentConfirmation(Lcm/aptoide/pt/v8engine/payment/PaymentConfirmation;)Lcm/aptoide/pt/database/realm/PaymentConfirmation;
    .locals 5

    .prologue
    .line 26
    new-instance v0, Lcm/aptoide/pt/database/realm/PaymentConfirmation;

    .line 27
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/payment/PaymentConfirmation;->getPaymentConfirmationId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/payment/PaymentConfirmation;->getProductId()I

    move-result v2

    .line 28
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/payment/PaymentConfirmation;->getStatus()Lcm/aptoide/pt/v8engine/payment/PaymentConfirmation$Status;

    move-result-object v3

    invoke-virtual {v3}, Lcm/aptoide/pt/v8engine/payment/PaymentConfirmation$Status;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/payment/PaymentConfirmation;->getPayerId()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcm/aptoide/pt/database/realm/PaymentConfirmation;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public convertToPaymentConfirmation(ILcm/aptoide/pt/model/v3/PaymentConfirmationResponse;Ljava/lang/String;)Lcm/aptoide/pt/v8engine/payment/PaymentConfirmation;
    .locals 3

    .prologue
    .line 20
    new-instance v0, Lcm/aptoide/pt/v8engine/payment/PaymentConfirmation;

    invoke-virtual {p2}, Lcm/aptoide/pt/model/v3/PaymentConfirmationResponse;->getPaymentConfirmationId()Ljava/lang/String;

    move-result-object v1

    .line 21
    invoke-virtual {p2}, Lcm/aptoide/pt/model/v3/PaymentConfirmationResponse;->getPaymentStatus()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcm/aptoide/pt/v8engine/payment/PaymentConfirmation$Status;->valueOf(Ljava/lang/String;)Lcm/aptoide/pt/v8engine/payment/PaymentConfirmation$Status;

    move-result-object v2

    invoke-direct {v0, p1, p3, v1, v2}, Lcm/aptoide/pt/v8engine/payment/PaymentConfirmation;-><init>(ILjava/lang/String;Ljava/lang/String;Lcm/aptoide/pt/v8engine/payment/PaymentConfirmation$Status;)V

    return-object v0
.end method

.method public convertToPaymentConfirmation(Lcm/aptoide/pt/database/realm/PaymentConfirmation;)Lcm/aptoide/pt/v8engine/payment/PaymentConfirmation;
    .locals 5

    .prologue
    .line 33
    new-instance v0, Lcm/aptoide/pt/v8engine/payment/PaymentConfirmation;

    invoke-virtual {p1}, Lcm/aptoide/pt/database/realm/PaymentConfirmation;->getProductId()I

    move-result v1

    .line 34
    invoke-virtual {p1}, Lcm/aptoide/pt/database/realm/PaymentConfirmation;->getPayerId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcm/aptoide/pt/database/realm/PaymentConfirmation;->getPaymentConfirmationId()Ljava/lang/String;

    move-result-object v3

    .line 35
    invoke-virtual {p1}, Lcm/aptoide/pt/database/realm/PaymentConfirmation;->getStatus()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcm/aptoide/pt/v8engine/payment/PaymentConfirmation$Status;->valueOf(Ljava/lang/String;)Lcm/aptoide/pt/v8engine/payment/PaymentConfirmation$Status;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcm/aptoide/pt/v8engine/payment/PaymentConfirmation;-><init>(ILjava/lang/String;Ljava/lang/String;Lcm/aptoide/pt/v8engine/payment/PaymentConfirmation$Status;)V

    return-object v0
.end method

.method public create(ILjava/lang/String;Lcm/aptoide/pt/v8engine/payment/PaymentConfirmation$Status;Ljava/lang/String;)Lcm/aptoide/pt/v8engine/payment/PaymentConfirmation;
    .locals 1

    .prologue
    .line 15
    new-instance v0, Lcm/aptoide/pt/v8engine/payment/PaymentConfirmation;

    invoke-direct {v0, p1, p4, p2, p3}, Lcm/aptoide/pt/v8engine/payment/PaymentConfirmation;-><init>(ILjava/lang/String;Ljava/lang/String;Lcm/aptoide/pt/v8engine/payment/PaymentConfirmation$Status;)V

    return-object v0
.end method
