.class public abstract Lcm/aptoide/pt/v8engine/payment/Authorization;
.super Ljava/lang/Object;
.source "Authorization.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcm/aptoide/pt/v8engine/payment/Authorization$Status;
    }
.end annotation


# instance fields
.field private final payerId:Ljava/lang/String;

.field private final paymentId:I

.field private status:Lcm/aptoide/pt/v8engine/payment/Authorization$Status;


# direct methods
.method public constructor <init>(ILjava/lang/String;Lcm/aptoide/pt/v8engine/payment/Authorization$Status;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput p1, p0, Lcm/aptoide/pt/v8engine/payment/Authorization;->paymentId:I

    .line 19
    iput-object p2, p0, Lcm/aptoide/pt/v8engine/payment/Authorization;->payerId:Ljava/lang/String;

    .line 20
    iput-object p3, p0, Lcm/aptoide/pt/v8engine/payment/Authorization;->status:Lcm/aptoide/pt/v8engine/payment/Authorization$Status;

    .line 21
    return-void
.end method


# virtual methods
.method public getPayerId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/payment/Authorization;->payerId:Ljava/lang/String;

    return-object v0
.end method

.method public getPaymentId()I
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lcm/aptoide/pt/v8engine/payment/Authorization;->paymentId:I

    return v0
.end method

.method public getStatus()Lcm/aptoide/pt/v8engine/payment/Authorization$Status;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/payment/Authorization;->status:Lcm/aptoide/pt/v8engine/payment/Authorization$Status;

    return-object v0
.end method

.method public isAuthorized()Z
    .locals 2

    .prologue
    .line 32
    sget-object v0, Lcm/aptoide/pt/v8engine/payment/Authorization$Status;->ACTIVE:Lcm/aptoide/pt/v8engine/payment/Authorization$Status;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/payment/Authorization;->status:Lcm/aptoide/pt/v8engine/payment/Authorization$Status;

    invoke-virtual {v0, v1}, Lcm/aptoide/pt/v8engine/payment/Authorization$Status;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcm/aptoide/pt/v8engine/payment/Authorization$Status;->NONE:Lcm/aptoide/pt/v8engine/payment/Authorization$Status;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/payment/Authorization;->status:Lcm/aptoide/pt/v8engine/payment/Authorization$Status;

    invoke-virtual {v0, v1}, Lcm/aptoide/pt/v8engine/payment/Authorization$Status;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInitiated()Z
    .locals 2

    .prologue
    .line 36
    sget-object v0, Lcm/aptoide/pt/v8engine/payment/Authorization$Status;->INITIATED:Lcm/aptoide/pt/v8engine/payment/Authorization$Status;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/payment/Authorization;->status:Lcm/aptoide/pt/v8engine/payment/Authorization$Status;

    invoke-virtual {v0, v1}, Lcm/aptoide/pt/v8engine/payment/Authorization$Status;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isInvalid()Z
    .locals 2

    .prologue
    .line 44
    sget-object v0, Lcm/aptoide/pt/v8engine/payment/Authorization$Status;->CANCELLED:Lcm/aptoide/pt/v8engine/payment/Authorization$Status;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/payment/Authorization;->status:Lcm/aptoide/pt/v8engine/payment/Authorization$Status;

    invoke-virtual {v0, v1}, Lcm/aptoide/pt/v8engine/payment/Authorization$Status;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcm/aptoide/pt/v8engine/payment/Authorization$Status;->INACTIVE:Lcm/aptoide/pt/v8engine/payment/Authorization$Status;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/payment/Authorization;->status:Lcm/aptoide/pt/v8engine/payment/Authorization$Status;

    .line 45
    invoke-virtual {v0, v1}, Lcm/aptoide/pt/v8engine/payment/Authorization$Status;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcm/aptoide/pt/v8engine/payment/Authorization$Status;->EXPIRED:Lcm/aptoide/pt/v8engine/payment/Authorization$Status;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/payment/Authorization;->status:Lcm/aptoide/pt/v8engine/payment/Authorization$Status;

    .line 46
    invoke-virtual {v0, v1}, Lcm/aptoide/pt/v8engine/payment/Authorization$Status;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcm/aptoide/pt/v8engine/payment/Authorization$Status;->SESSION_EXPIRED:Lcm/aptoide/pt/v8engine/payment/Authorization$Status;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/payment/Authorization;->status:Lcm/aptoide/pt/v8engine/payment/Authorization$Status;

    .line 47
    invoke-virtual {v0, v1}, Lcm/aptoide/pt/v8engine/payment/Authorization$Status;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcm/aptoide/pt/v8engine/payment/Authorization$Status;->UNKNOWN_ERROR:Lcm/aptoide/pt/v8engine/payment/Authorization$Status;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/payment/Authorization;->status:Lcm/aptoide/pt/v8engine/payment/Authorization$Status;

    .line 48
    invoke-virtual {v0, v1}, Lcm/aptoide/pt/v8engine/payment/Authorization$Status;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPending()Z
    .locals 2

    .prologue
    .line 40
    sget-object v0, Lcm/aptoide/pt/v8engine/payment/Authorization$Status;->PENDING:Lcm/aptoide/pt/v8engine/payment/Authorization$Status;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/payment/Authorization;->status:Lcm/aptoide/pt/v8engine/payment/Authorization$Status;

    invoke-virtual {v0, v1}, Lcm/aptoide/pt/v8engine/payment/Authorization$Status;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
