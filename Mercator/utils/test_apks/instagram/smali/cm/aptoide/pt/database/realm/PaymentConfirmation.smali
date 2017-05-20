.class public Lcm/aptoide/pt/database/realm/PaymentConfirmation;
.super Lio/realm/ad;
.source "PaymentConfirmation.java"

# interfaces
.implements Lio/realm/s;


# static fields
.field public static final PAYER_ID:Ljava/lang/String; = "payerId"

.field public static final PRODUCT_ID:Ljava/lang/String; = "productId"


# instance fields
.field private payerId:Ljava/lang/String;

.field private paymentConfirmationId:Ljava/lang/String;

.field private productId:I

.field private status:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lio/realm/ad;-><init>()V

    .line 27
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lio/realm/ad;-><init>()V

    .line 31
    iput-object p1, p0, Lcm/aptoide/pt/database/realm/PaymentConfirmation;->paymentConfirmationId:Ljava/lang/String;

    .line 32
    iput-object p3, p0, Lcm/aptoide/pt/database/realm/PaymentConfirmation;->status:Ljava/lang/String;

    .line 33
    iput p2, p0, Lcm/aptoide/pt/database/realm/PaymentConfirmation;->productId:I

    .line 34
    iput-object p4, p0, Lcm/aptoide/pt/database/realm/PaymentConfirmation;->payerId:Ljava/lang/String;

    .line 35
    return-void
.end method


# virtual methods
.method public getPayerId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    invoke-virtual {p0}, Lcm/aptoide/pt/database/realm/PaymentConfirmation;->realmGet$payerId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPaymentConfirmationId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0}, Lcm/aptoide/pt/database/realm/PaymentConfirmation;->realmGet$paymentConfirmationId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProductId()I
    .locals 1

    .prologue
    .line 46
    invoke-virtual {p0}, Lcm/aptoide/pt/database/realm/PaymentConfirmation;->realmGet$productId()I

    move-result v0

    return v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    invoke-virtual {p0}, Lcm/aptoide/pt/database/realm/PaymentConfirmation;->realmGet$status()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$payerId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcm/aptoide/pt/database/realm/PaymentConfirmation;->payerId:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$paymentConfirmationId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcm/aptoide/pt/database/realm/PaymentConfirmation;->paymentConfirmationId:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$productId()I
    .locals 1

    iget v0, p0, Lcm/aptoide/pt/database/realm/PaymentConfirmation;->productId:I

    return v0
.end method

.method public realmGet$status()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcm/aptoide/pt/database/realm/PaymentConfirmation;->status:Ljava/lang/String;

    return-object v0
.end method

.method public realmSet$payerId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcm/aptoide/pt/database/realm/PaymentConfirmation;->payerId:Ljava/lang/String;

    return-void
.end method

.method public realmSet$paymentConfirmationId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcm/aptoide/pt/database/realm/PaymentConfirmation;->paymentConfirmationId:Ljava/lang/String;

    return-void
.end method

.method public realmSet$productId(I)V
    .locals 0

    iput p1, p0, Lcm/aptoide/pt/database/realm/PaymentConfirmation;->productId:I

    return-void
.end method

.method public realmSet$status(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcm/aptoide/pt/database/realm/PaymentConfirmation;->status:Ljava/lang/String;

    return-void
.end method
