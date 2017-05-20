.class public Lcm/aptoide/pt/v8engine/payment/PurchaseIntentFactory;
.super Ljava/lang/Object;
.source "PurchaseIntentFactory.java"


# instance fields
.field private final codeFactory:Lcm/aptoide/pt/iab/ErrorCodeFactory;


# direct methods
.method public constructor <init>(Lcm/aptoide/pt/iab/ErrorCodeFactory;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcm/aptoide/pt/v8engine/payment/PurchaseIntentFactory;->codeFactory:Lcm/aptoide/pt/iab/ErrorCodeFactory;

    .line 22
    return-void
.end method


# virtual methods
.method public create(Lcm/aptoide/pt/v8engine/payment/Purchase;)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 28
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 29
    const-string v1, "INAPP_PURCHASE_DATA"

    invoke-interface {p1}, Lcm/aptoide/pt/v8engine/payment/Purchase;->getData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 30
    const-string v1, "RESPONSE_CODE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 32
    invoke-interface {p1}, Lcm/aptoide/pt/v8engine/payment/Purchase;->getSignature()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 33
    const-string v1, "INAPP_DATA_SIGNATURE"

    invoke-interface {p1}, Lcm/aptoide/pt/v8engine/payment/Purchase;->getSignature()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    :cond_0
    :goto_0
    return-object v0

    .line 35
    :catch_0
    move-exception v0

    .line 36
    invoke-virtual {p0, v0}, Lcm/aptoide/pt/v8engine/payment/PurchaseIntentFactory;->create(Ljava/lang/Throwable;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0
.end method

.method public create(Ljava/lang/Throwable;)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 42
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "RESPONSE_CODE"

    iget-object v2, p0, Lcm/aptoide/pt/v8engine/payment/PurchaseIntentFactory;->codeFactory:Lcm/aptoide/pt/iab/ErrorCodeFactory;

    invoke-virtual {v2, p1}, Lcm/aptoide/pt/iab/ErrorCodeFactory;->create(Ljava/lang/Throwable;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public createFromCancellation()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 46
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "RESPONSE_CODE"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method
