.class public Lcm/aptoide/pt/v8engine/payment/AptoidePayment;
.super Ljava/lang/Object;
.source "AptoidePayment.java"

# interfaces
.implements Lcm/aptoide/pt/v8engine/payment/Payment;


# instance fields
.field private authorization:Lcm/aptoide/pt/v8engine/payment/Authorization;

.field private final confirmationRepository:Lcm/aptoide/pt/v8engine/repository/PaymentConfirmationRepository;

.field private final description:Ljava/lang/String;

.field private final id:I

.field private final name:Ljava/lang/String;

.field private final price:Lcm/aptoide/pt/v8engine/payment/Price;

.field private final product:Lcm/aptoide/pt/v8engine/payment/Product;

.field private final requiresAuthorization:Z

.field private final type:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcm/aptoide/pt/v8engine/payment/Product;Lcm/aptoide/pt/v8engine/payment/Price;ZLcm/aptoide/pt/v8engine/repository/PaymentConfirmationRepository;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput p1, p0, Lcm/aptoide/pt/v8engine/payment/AptoidePayment;->id:I

    .line 32
    iput-object p2, p0, Lcm/aptoide/pt/v8engine/payment/AptoidePayment;->type:Ljava/lang/String;

    .line 33
    iput-object p3, p0, Lcm/aptoide/pt/v8engine/payment/AptoidePayment;->name:Ljava/lang/String;

    .line 34
    iput-object p5, p0, Lcm/aptoide/pt/v8engine/payment/AptoidePayment;->product:Lcm/aptoide/pt/v8engine/payment/Product;

    .line 35
    iput-object p6, p0, Lcm/aptoide/pt/v8engine/payment/AptoidePayment;->price:Lcm/aptoide/pt/v8engine/payment/Price;

    .line 36
    iput-object p4, p0, Lcm/aptoide/pt/v8engine/payment/AptoidePayment;->description:Ljava/lang/String;

    .line 37
    iput-boolean p7, p0, Lcm/aptoide/pt/v8engine/payment/AptoidePayment;->requiresAuthorization:Z

    .line 38
    iput-object p8, p0, Lcm/aptoide/pt/v8engine/payment/AptoidePayment;->confirmationRepository:Lcm/aptoide/pt/v8engine/repository/PaymentConfirmationRepository;

    .line 39
    return-void
.end method


# virtual methods
.method public getAuthorization()Lcm/aptoide/pt/v8engine/payment/Authorization;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/payment/AptoidePayment;->authorization:Lcm/aptoide/pt/v8engine/payment/Authorization;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/payment/AptoidePayment;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcm/aptoide/pt/v8engine/payment/AptoidePayment;->id:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/payment/AptoidePayment;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPrice()Lcm/aptoide/pt/v8engine/payment/Price;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/payment/AptoidePayment;->price:Lcm/aptoide/pt/v8engine/payment/Price;

    return-object v0
.end method

.method public getProduct()Lcm/aptoide/pt/v8engine/payment/Product;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/payment/AptoidePayment;->product:Lcm/aptoide/pt/v8engine/payment/Product;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/payment/AptoidePayment;->type:Ljava/lang/String;

    return-object v0
.end method

.method public isAuthorizationRequired()Z
    .locals 1

    .prologue
    .line 74
    iget-boolean v0, p0, Lcm/aptoide/pt/v8engine/payment/AptoidePayment;->requiresAuthorization:Z

    return v0
.end method

.method public process()Lrx/a;
    .locals 2

    .prologue
    .line 78
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/payment/AptoidePayment;->confirmationRepository:Lcm/aptoide/pt/v8engine/repository/PaymentConfirmationRepository;

    iget v1, p0, Lcm/aptoide/pt/v8engine/payment/AptoidePayment;->id:I

    invoke-virtual {v0, v1}, Lcm/aptoide/pt/v8engine/repository/PaymentConfirmationRepository;->createPaymentConfirmation(I)Lrx/a;

    move-result-object v0

    return-object v0
.end method

.method public setAuthorization(Lcm/aptoide/pt/v8engine/payment/Authorization;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcm/aptoide/pt/v8engine/payment/AptoidePayment;->authorization:Lcm/aptoide/pt/v8engine/payment/Authorization;

    .line 71
    return-void
.end method
