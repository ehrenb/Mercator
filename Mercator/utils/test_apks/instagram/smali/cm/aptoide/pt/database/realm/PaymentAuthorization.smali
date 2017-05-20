.class public Lcm/aptoide/pt/database/realm/PaymentAuthorization;
.super Lio/realm/ad;
.source "PaymentAuthorization.java"

# interfaces
.implements Lio/realm/q;


# static fields
.field public static final PAYER_ID:Ljava/lang/String; = "payerId"

.field public static final PAYMENT_ID:Ljava/lang/String; = "paymentId"


# instance fields
.field private payerId:Ljava/lang/String;

.field private paymentId:I

.field private redirectUrl:Ljava/lang/String;

.field private status:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lio/realm/ad;-><init>()V

    .line 29
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lio/realm/ad;-><init>()V

    .line 33
    iput p1, p0, Lcm/aptoide/pt/database/realm/PaymentAuthorization;->paymentId:I

    .line 34
    iput-object p2, p0, Lcm/aptoide/pt/database/realm/PaymentAuthorization;->url:Ljava/lang/String;

    .line 35
    iput-object p3, p0, Lcm/aptoide/pt/database/realm/PaymentAuthorization;->redirectUrl:Ljava/lang/String;

    .line 36
    iput-object p4, p0, Lcm/aptoide/pt/database/realm/PaymentAuthorization;->status:Ljava/lang/String;

    .line 37
    iput-object p5, p0, Lcm/aptoide/pt/database/realm/PaymentAuthorization;->payerId:Ljava/lang/String;

    .line 38
    return-void
.end method


# virtual methods
.method public getPayerId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    invoke-virtual {p0}, Lcm/aptoide/pt/database/realm/PaymentAuthorization;->realmGet$payerId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPaymentId()I
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0}, Lcm/aptoide/pt/database/realm/PaymentAuthorization;->realmGet$paymentId()I

    move-result v0

    return v0
.end method

.method public getRedirectUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    invoke-virtual {p0}, Lcm/aptoide/pt/database/realm/PaymentAuthorization;->realmGet$redirectUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    invoke-virtual {p0}, Lcm/aptoide/pt/database/realm/PaymentAuthorization;->realmGet$status()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    invoke-virtual {p0}, Lcm/aptoide/pt/database/realm/PaymentAuthorization;->realmGet$url()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$payerId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcm/aptoide/pt/database/realm/PaymentAuthorization;->payerId:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$paymentId()I
    .locals 1

    iget v0, p0, Lcm/aptoide/pt/database/realm/PaymentAuthorization;->paymentId:I

    return v0
.end method

.method public realmGet$redirectUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcm/aptoide/pt/database/realm/PaymentAuthorization;->redirectUrl:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$status()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcm/aptoide/pt/database/realm/PaymentAuthorization;->status:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$url()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcm/aptoide/pt/database/realm/PaymentAuthorization;->url:Ljava/lang/String;

    return-object v0
.end method

.method public realmSet$payerId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcm/aptoide/pt/database/realm/PaymentAuthorization;->payerId:Ljava/lang/String;

    return-void
.end method

.method public realmSet$paymentId(I)V
    .locals 0

    iput p1, p0, Lcm/aptoide/pt/database/realm/PaymentAuthorization;->paymentId:I

    return-void
.end method

.method public realmSet$redirectUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcm/aptoide/pt/database/realm/PaymentAuthorization;->redirectUrl:Ljava/lang/String;

    return-void
.end method

.method public realmSet$status(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcm/aptoide/pt/database/realm/PaymentAuthorization;->status:Ljava/lang/String;

    return-void
.end method

.method public realmSet$url(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcm/aptoide/pt/database/realm/PaymentAuthorization;->url:Ljava/lang/String;

    return-void
.end method
