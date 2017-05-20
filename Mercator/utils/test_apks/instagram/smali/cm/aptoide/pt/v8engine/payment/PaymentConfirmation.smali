.class public Lcm/aptoide/pt/v8engine/payment/PaymentConfirmation;
.super Ljava/lang/Object;
.source "PaymentConfirmation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcm/aptoide/pt/v8engine/payment/PaymentConfirmation$Status;
    }
.end annotation


# instance fields
.field private final payerId:Ljava/lang/String;

.field private final paymentConfirmationId:Ljava/lang/String;

.field private final productId:I

.field private status:Lcm/aptoide/pt/v8engine/payment/PaymentConfirmation$Status;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Lcm/aptoide/pt/v8engine/payment/PaymentConfirmation$Status;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput p1, p0, Lcm/aptoide/pt/v8engine/payment/PaymentConfirmation;->productId:I

    .line 21
    iput-object p2, p0, Lcm/aptoide/pt/v8engine/payment/PaymentConfirmation;->payerId:Ljava/lang/String;

    .line 22
    iput-object p3, p0, Lcm/aptoide/pt/v8engine/payment/PaymentConfirmation;->paymentConfirmationId:Ljava/lang/String;

    .line 23
    iput-object p4, p0, Lcm/aptoide/pt/v8engine/payment/PaymentConfirmation;->status:Lcm/aptoide/pt/v8engine/payment/PaymentConfirmation$Status;

    .line 24
    return-void
.end method


# virtual methods
.method public getPayerId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/payment/PaymentConfirmation;->payerId:Ljava/lang/String;

    return-object v0
.end method

.method public getPaymentConfirmationId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/payment/PaymentConfirmation;->paymentConfirmationId:Ljava/lang/String;

    return-object v0
.end method

.method public getProductId()I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcm/aptoide/pt/v8engine/payment/PaymentConfirmation;->productId:I

    return v0
.end method

.method public getStatus()Lcm/aptoide/pt/v8engine/payment/PaymentConfirmation$Status;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/payment/PaymentConfirmation;->status:Lcm/aptoide/pt/v8engine/payment/PaymentConfirmation$Status;

    return-object v0
.end method

.method public isCompleted()Z
    .locals 2

    .prologue
    .line 47
    sget-object v0, Lcm/aptoide/pt/v8engine/payment/PaymentConfirmation$Status;->COMPLETED:Lcm/aptoide/pt/v8engine/payment/PaymentConfirmation$Status;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/payment/PaymentConfirmation;->status:Lcm/aptoide/pt/v8engine/payment/PaymentConfirmation$Status;

    invoke-virtual {v0, v1}, Lcm/aptoide/pt/v8engine/payment/PaymentConfirmation$Status;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isFailed()Z
    .locals 2

    .prologue
    .line 57
    sget-object v0, Lcm/aptoide/pt/v8engine/payment/PaymentConfirmation$Status;->FAILED:Lcm/aptoide/pt/v8engine/payment/PaymentConfirmation$Status;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/payment/PaymentConfirmation;->status:Lcm/aptoide/pt/v8engine/payment/PaymentConfirmation$Status;

    invoke-virtual {v0, v1}, Lcm/aptoide/pt/v8engine/payment/PaymentConfirmation$Status;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcm/aptoide/pt/v8engine/payment/PaymentConfirmation$Status;->CANCELED:Lcm/aptoide/pt/v8engine/payment/PaymentConfirmation$Status;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/payment/PaymentConfirmation;->status:Lcm/aptoide/pt/v8engine/payment/PaymentConfirmation$Status;

    .line 58
    invoke-virtual {v0, v1}, Lcm/aptoide/pt/v8engine/payment/PaymentConfirmation$Status;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcm/aptoide/pt/v8engine/payment/PaymentConfirmation$Status;->UNKNOWN_ERROR:Lcm/aptoide/pt/v8engine/payment/PaymentConfirmation$Status;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/payment/PaymentConfirmation;->status:Lcm/aptoide/pt/v8engine/payment/PaymentConfirmation$Status;

    .line 59
    invoke-virtual {v0, v1}, Lcm/aptoide/pt/v8engine/payment/PaymentConfirmation$Status;->equals(Ljava/lang/Object;)Z

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
    .line 51
    sget-object v0, Lcm/aptoide/pt/v8engine/payment/PaymentConfirmation$Status;->CREATED:Lcm/aptoide/pt/v8engine/payment/PaymentConfirmation$Status;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/payment/PaymentConfirmation;->status:Lcm/aptoide/pt/v8engine/payment/PaymentConfirmation$Status;

    invoke-virtual {v0, v1}, Lcm/aptoide/pt/v8engine/payment/PaymentConfirmation$Status;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcm/aptoide/pt/v8engine/payment/PaymentConfirmation$Status;->PROCESSING:Lcm/aptoide/pt/v8engine/payment/PaymentConfirmation$Status;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/payment/PaymentConfirmation;->status:Lcm/aptoide/pt/v8engine/payment/PaymentConfirmation$Status;

    .line 52
    invoke-virtual {v0, v1}, Lcm/aptoide/pt/v8engine/payment/PaymentConfirmation$Status;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcm/aptoide/pt/v8engine/payment/PaymentConfirmation$Status;->PENDING:Lcm/aptoide/pt/v8engine/payment/PaymentConfirmation$Status;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/payment/PaymentConfirmation;->status:Lcm/aptoide/pt/v8engine/payment/PaymentConfirmation$Status;

    .line 53
    invoke-virtual {v0, v1}, Lcm/aptoide/pt/v8engine/payment/PaymentConfirmation$Status;->equals(Ljava/lang/Object;)Z

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

.method public setStatus(Lcm/aptoide/pt/v8engine/payment/PaymentConfirmation$Status;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcm/aptoide/pt/v8engine/payment/PaymentConfirmation;->status:Lcm/aptoide/pt/v8engine/payment/PaymentConfirmation$Status;

    .line 44
    return-void
.end method
