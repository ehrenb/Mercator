.class public Lcm/aptoide/pt/v8engine/payment/AptoidePay;
.super Ljava/lang/Object;
.source "AptoidePay.java"


# instance fields
.field private final authorizationFactory:Lcm/aptoide/pt/v8engine/repository/PaymentAuthorizationFactory;

.field private final authorizationRepository:Lcm/aptoide/pt/v8engine/repository/PaymentAuthorizationRepository;

.field private final confirmationRepository:Lcm/aptoide/pt/v8engine/repository/PaymentConfirmationRepository;

.field private final payer:Lcm/aptoide/pt/v8engine/payment/Payer;

.field private final productRepository:Lcm/aptoide/pt/v8engine/repository/ProductRepository;


# direct methods
.method public constructor <init>(Lcm/aptoide/pt/v8engine/repository/PaymentConfirmationRepository;Lcm/aptoide/pt/v8engine/repository/PaymentAuthorizationRepository;Lcm/aptoide/pt/v8engine/repository/ProductRepository;Lcm/aptoide/pt/v8engine/repository/PaymentAuthorizationFactory;Lcm/aptoide/pt/v8engine/payment/Payer;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcm/aptoide/pt/v8engine/payment/AptoidePay;->confirmationRepository:Lcm/aptoide/pt/v8engine/repository/PaymentConfirmationRepository;

    .line 33
    iput-object p2, p0, Lcm/aptoide/pt/v8engine/payment/AptoidePay;->authorizationRepository:Lcm/aptoide/pt/v8engine/repository/PaymentAuthorizationRepository;

    .line 34
    iput-object p3, p0, Lcm/aptoide/pt/v8engine/payment/AptoidePay;->productRepository:Lcm/aptoide/pt/v8engine/repository/ProductRepository;

    .line 35
    iput-object p4, p0, Lcm/aptoide/pt/v8engine/payment/AptoidePay;->authorizationFactory:Lcm/aptoide/pt/v8engine/repository/PaymentAuthorizationFactory;

    .line 36
    iput-object p5, p0, Lcm/aptoide/pt/v8engine/payment/AptoidePay;->payer:Lcm/aptoide/pt/v8engine/payment/Payer;

    .line 37
    return-void
.end method

.method private addAuthorization(Ljava/util/List;Lcm/aptoide/pt/v8engine/payment/Payment;)Lrx/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcm/aptoide/pt/v8engine/payment/Authorization;",
            ">;",
            "Lcm/aptoide/pt/v8engine/payment/Payment;",
            ")",
            "Lrx/d",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 82
    invoke-static {p1}, Lrx/d;->a(Ljava/lang/Iterable;)Lrx/d;

    move-result-object v0

    invoke-static {p2}, Lcm/aptoide/pt/v8engine/payment/AptoidePay$$Lambda$10;->lambdaFactory$(Lcm/aptoide/pt/v8engine/payment/Payment;)Lrx/b/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->b(Lrx/b/b;)Lrx/d;

    move-result-object v0

    .line 86
    invoke-virtual {v0}, Lrx/d;->p()Lrx/d;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/v8engine/payment/AptoidePay$$Lambda$11;->lambdaFactory$()Lrx/b/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->g(Lrx/b/e;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method private addAuthorizations(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)Lrx/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcm/aptoide/pt/v8engine/payment/Payment;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcm/aptoide/pt/v8engine/payment/Authorization;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lrx/d",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 62
    invoke-static {p1}, Lrx/d;->a(Ljava/lang/Iterable;)Lrx/d;

    move-result-object v0

    invoke-static {p0, p2}, Lcm/aptoide/pt/v8engine/payment/AptoidePay$$Lambda$7;->lambdaFactory$(Lcm/aptoide/pt/v8engine/payment/AptoidePay;Ljava/util/List;)Lrx/b/e;

    move-result-object v1

    .line 63
    invoke-virtual {v0, v1}, Lrx/d;->e(Lrx/b/e;)Lrx/d;

    move-result-object v0

    invoke-static {p0, p3}, Lcm/aptoide/pt/v8engine/payment/AptoidePay$$Lambda$8;->lambdaFactory$(Lcm/aptoide/pt/v8engine/payment/AptoidePay;Ljava/lang/String;)Lrx/b/b;

    move-result-object v1

    .line 64
    invoke-virtual {v0, v1}, Lrx/d;->b(Lrx/b/b;)Lrx/d;

    move-result-object v0

    .line 76
    invoke-virtual {v0}, Lrx/d;->p()Lrx/d;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/v8engine/payment/AptoidePay$$Lambda$9;->lambdaFactory$()Lrx/b/e;

    move-result-object v1

    .line 77
    invoke-virtual {v0, v1}, Lrx/d;->g(Lrx/b/e;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method private getAuthorizationRequiredPaymentIds(Ljava/util/List;)Lrx/h;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcm/aptoide/pt/v8engine/payment/Payment;",
            ">;)",
            "Lrx/h",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 53
    invoke-static {p1}, Lrx/d;->a(Ljava/lang/Iterable;)Lrx/d;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/v8engine/payment/AptoidePay$$Lambda$5;->lambdaFactory$()Lrx/b/e;

    move-result-object v1

    .line 54
    invoke-virtual {v0, v1}, Lrx/d;->c(Lrx/b/e;)Lrx/d;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/v8engine/payment/AptoidePay$$Lambda$6;->lambdaFactory$()Lrx/b/e;

    move-result-object v1

    .line 55
    invoke-virtual {v0, v1}, Lrx/d;->g(Lrx/b/e;)Lrx/d;

    move-result-object v0

    .line 56
    invoke-virtual {v0}, Lrx/d;->p()Lrx/d;

    move-result-object v0

    .line 57
    invoke-virtual {v0}, Lrx/d;->b()Lrx/h;

    move-result-object v0

    return-object v0
.end method

.method private getPaymentsWithAuthorizations(Ljava/util/List;Ljava/lang/String;)Lrx/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcm/aptoide/pt/v8engine/payment/Payment;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lrx/d",
            "<",
            "Ljava/util/List",
            "<",
            "Lcm/aptoide/pt/v8engine/payment/Payment;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcm/aptoide/pt/v8engine/payment/AptoidePay;->getAuthorizationRequiredPaymentIds(Ljava/util/List;)Lrx/h;

    move-result-object v0

    invoke-static {p0, p2}, Lcm/aptoide/pt/v8engine/payment/AptoidePay$$Lambda$2;->lambdaFactory$(Lcm/aptoide/pt/v8engine/payment/AptoidePay;Ljava/lang/String;)Lrx/b/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/h;->b(Lrx/b/e;)Lrx/d;

    move-result-object v0

    invoke-static {p0, p1, p2}, Lcm/aptoide/pt/v8engine/payment/AptoidePay$$Lambda$3;->lambdaFactory$(Lcm/aptoide/pt/v8engine/payment/AptoidePay;Ljava/util/List;Ljava/lang/String;)Lrx/b/e;

    move-result-object v1

    .line 48
    invoke-virtual {v0, v1}, Lrx/d;->e(Lrx/b/e;)Lrx/d;

    move-result-object v0

    invoke-static {p1}, Lcm/aptoide/pt/v8engine/payment/AptoidePay$$Lambda$4;->lambdaFactory$(Ljava/util/List;)Lrx/b/e;

    move-result-object v1

    .line 49
    invoke-virtual {v0, v1}, Lrx/d;->g(Lrx/b/e;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$addAuthorization$10(Lcm/aptoide/pt/v8engine/payment/Payment;Lcm/aptoide/pt/v8engine/payment/Authorization;)V
    .locals 2

    .prologue
    .line 83
    invoke-interface {p0}, Lcm/aptoide/pt/v8engine/payment/Payment;->getId()I

    move-result v0

    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/payment/Authorization;->getPaymentId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 84
    invoke-interface {p0, p1}, Lcm/aptoide/pt/v8engine/payment/Payment;->setAuthorization(Lcm/aptoide/pt/v8engine/payment/Authorization;)V

    .line 86
    :cond_0
    return-void
.end method

.method static synthetic lambda$addAuthorization$11(Ljava/util/List;)Ljava/lang/Void;
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic lambda$addAuthorizations$9(Ljava/util/List;)Ljava/lang/Void;
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic lambda$getAuthorizationRequiredPaymentIds$4(Lcm/aptoide/pt/v8engine/payment/Payment;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 54
    invoke-interface {p0}, Lcm/aptoide/pt/v8engine/payment/Payment;->isAuthorizationRequired()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$getAuthorizationRequiredPaymentIds$5(Lcm/aptoide/pt/v8engine/payment/Payment;)Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 55
    invoke-interface {p0}, Lcm/aptoide/pt/v8engine/payment/Payment;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$getPaymentsWithAuthorizations$3(Ljava/util/List;Ljava/lang/Void;)Ljava/util/List;
    .locals 0

    .prologue
    .line 49
    return-object p0
.end method

.method static synthetic lambda$null$6(Lcm/aptoide/pt/v8engine/payment/Payment;Ljava/lang/Void;)Lcm/aptoide/pt/v8engine/payment/Payment;
    .locals 0

    .prologue
    .line 63
    return-object p0
.end method


# virtual methods
.method public authorize(I)Lrx/a;
    .locals 4

    .prologue
    .line 101
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/payment/AptoidePay;->authorizationRepository:Lcm/aptoide/pt/v8engine/repository/PaymentAuthorizationRepository;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/payment/AptoidePay;->authorizationFactory:Lcm/aptoide/pt/v8engine/repository/PaymentAuthorizationFactory;

    sget-object v2, Lcm/aptoide/pt/v8engine/payment/Authorization$Status;->PENDING:Lcm/aptoide/pt/v8engine/payment/Authorization$Status;

    iget-object v3, p0, Lcm/aptoide/pt/v8engine/payment/AptoidePay;->payer:Lcm/aptoide/pt/v8engine/payment/Payer;

    .line 102
    invoke-virtual {v3}, Lcm/aptoide/pt/v8engine/payment/Payer;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, p1, v2, v3}, Lcm/aptoide/pt/v8engine/repository/PaymentAuthorizationFactory;->create(ILcm/aptoide/pt/v8engine/payment/Authorization$Status;Ljava/lang/String;)Lcm/aptoide/pt/v8engine/payment/Authorization;

    move-result-object v1

    .line 101
    invoke-virtual {v0, v1}, Lcm/aptoide/pt/v8engine/repository/PaymentAuthorizationRepository;->saveAuthorization(Lcm/aptoide/pt/v8engine/payment/Authorization;)Lrx/a;

    move-result-object v0

    return-object v0
.end method

.method public availablePayments(Lcm/aptoide/pt/v8engine/payment/products/AptoideProduct;)Lrx/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcm/aptoide/pt/v8engine/payment/products/AptoideProduct;",
            ")",
            "Lrx/d",
            "<",
            "Ljava/util/List",
            "<",
            "Lcm/aptoide/pt/v8engine/payment/Payment;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 40
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/payment/AptoidePay;->productRepository:Lcm/aptoide/pt/v8engine/repository/ProductRepository;

    invoke-interface {v0, p1}, Lcm/aptoide/pt/v8engine/repository/ProductRepository;->getPayments(Lcm/aptoide/pt/v8engine/payment/products/AptoideProduct;)Lrx/h;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/payment/AptoidePay$$Lambda$1;->lambdaFactory$(Lcm/aptoide/pt/v8engine/payment/AptoidePay;)Lrx/b/e;

    move-result-object v1

    .line 41
    invoke-virtual {v0, v1}, Lrx/h;->b(Lrx/b/e;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public getAuthorization(I)Lrx/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lrx/d",
            "<",
            "Lcm/aptoide/pt/v8engine/payment/Authorization;",
            ">;"
        }
    .end annotation

    .prologue
    .line 97
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/payment/AptoidePay;->authorizationRepository:Lcm/aptoide/pt/v8engine/repository/PaymentAuthorizationRepository;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/payment/AptoidePay;->payer:Lcm/aptoide/pt/v8engine/payment/Payer;

    invoke-virtual {v1}, Lcm/aptoide/pt/v8engine/payment/Payer;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcm/aptoide/pt/v8engine/repository/PaymentAuthorizationRepository;->getPaymentAuthorization(ILjava/lang/String;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public getConfirmation(Lcm/aptoide/pt/v8engine/payment/products/AptoideProduct;)Lrx/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcm/aptoide/pt/v8engine/payment/products/AptoideProduct;",
            ")",
            "Lrx/d",
            "<",
            "Lcm/aptoide/pt/v8engine/payment/PaymentConfirmation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 106
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/payment/AptoidePay;->confirmationRepository:Lcm/aptoide/pt/v8engine/repository/PaymentConfirmationRepository;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/payment/AptoidePay;->payer:Lcm/aptoide/pt/v8engine/payment/Payer;

    invoke-virtual {v1}, Lcm/aptoide/pt/v8engine/payment/Payer;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcm/aptoide/pt/v8engine/repository/PaymentConfirmationRepository;->getPaymentConfirmation(Lcm/aptoide/pt/v8engine/payment/Product;Ljava/lang/String;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public initiate(Lcm/aptoide/pt/v8engine/payment/Authorization;)Lrx/a;
    .locals 2

    .prologue
    .line 90
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/payment/Authorization;->isInitiated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    invoke-static {}, Lrx/a;->a()Lrx/a;

    move-result-object v0

    .line 93
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/payment/AptoidePay;->authorizationRepository:Lcm/aptoide/pt/v8engine/repository/PaymentAuthorizationRepository;

    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/payment/Authorization;->getPaymentId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcm/aptoide/pt/v8engine/repository/PaymentAuthorizationRepository;->createPaymentAuthorization(I)Lrx/a;

    move-result-object v0

    goto :goto_0
.end method

.method synthetic lambda$addAuthorizations$7(Ljava/util/List;Lcm/aptoide/pt/v8engine/payment/Payment;)Lrx/d;
    .locals 2

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Lcm/aptoide/pt/v8engine/payment/AptoidePay;->addAuthorization(Ljava/util/List;Lcm/aptoide/pt/v8engine/payment/Payment;)Lrx/d;

    move-result-object v0

    invoke-static {p2}, Lcm/aptoide/pt/v8engine/payment/AptoidePay$$Lambda$12;->lambdaFactory$(Lcm/aptoide/pt/v8engine/payment/Payment;)Lrx/b/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->g(Lrx/b/e;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$addAuthorizations$8(Ljava/lang/String;Lcm/aptoide/pt/v8engine/payment/Payment;)V
    .locals 3

    .prologue
    .line 65
    invoke-interface {p2}, Lcm/aptoide/pt/v8engine/payment/Payment;->isAuthorizationRequired()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 66
    invoke-interface {p2}, Lcm/aptoide/pt/v8engine/payment/Payment;->getAuthorization()Lcm/aptoide/pt/v8engine/payment/Authorization;

    move-result-object v0

    if-nez v0, :cond_0

    .line 67
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/payment/AptoidePay;->authorizationFactory:Lcm/aptoide/pt/v8engine/repository/PaymentAuthorizationFactory;

    .line 68
    invoke-interface {p2}, Lcm/aptoide/pt/v8engine/payment/Payment;->getId()I

    move-result v1

    sget-object v2, Lcm/aptoide/pt/v8engine/payment/Authorization$Status;->INACTIVE:Lcm/aptoide/pt/v8engine/payment/Authorization$Status;

    invoke-virtual {v0, v1, v2, p1}, Lcm/aptoide/pt/v8engine/repository/PaymentAuthorizationFactory;->create(ILcm/aptoide/pt/v8engine/payment/Authorization$Status;Ljava/lang/String;)Lcm/aptoide/pt/v8engine/payment/Authorization;

    move-result-object v0

    .line 67
    invoke-interface {p2, v0}, Lcm/aptoide/pt/v8engine/payment/Payment;->setAuthorization(Lcm/aptoide/pt/v8engine/payment/Authorization;)V

    .line 75
    :cond_0
    :goto_0
    return-void

    .line 72
    :cond_1
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/payment/AptoidePay;->authorizationFactory:Lcm/aptoide/pt/v8engine/repository/PaymentAuthorizationFactory;

    .line 73
    invoke-interface {p2}, Lcm/aptoide/pt/v8engine/payment/Payment;->getId()I

    move-result v1

    sget-object v2, Lcm/aptoide/pt/v8engine/payment/Authorization$Status;->NONE:Lcm/aptoide/pt/v8engine/payment/Authorization$Status;

    invoke-virtual {v0, v1, v2, p1}, Lcm/aptoide/pt/v8engine/repository/PaymentAuthorizationFactory;->create(ILcm/aptoide/pt/v8engine/payment/Authorization$Status;Ljava/lang/String;)Lcm/aptoide/pt/v8engine/payment/Authorization;

    move-result-object v0

    .line 72
    invoke-interface {p2, v0}, Lcm/aptoide/pt/v8engine/payment/Payment;->setAuthorization(Lcm/aptoide/pt/v8engine/payment/Authorization;)V

    goto :goto_0
.end method

.method synthetic lambda$availablePayments$0(Ljava/util/List;)Lrx/d;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/payment/AptoidePay;->payer:Lcm/aptoide/pt/v8engine/payment/Payer;

    invoke-virtual {v0}, Lcm/aptoide/pt/v8engine/payment/Payer;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcm/aptoide/pt/v8engine/payment/AptoidePay;->getPaymentsWithAuthorizations(Ljava/util/List;Ljava/lang/String;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$getPaymentsWithAuthorizations$1(Ljava/lang/String;Ljava/util/List;)Lrx/d;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/payment/AptoidePay;->authorizationRepository:Lcm/aptoide/pt/v8engine/repository/PaymentAuthorizationRepository;

    invoke-virtual {v0, p2, p1}, Lcm/aptoide/pt/v8engine/repository/PaymentAuthorizationRepository;->getPaymentAuthorizations(Ljava/util/List;Ljava/lang/String;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$getPaymentsWithAuthorizations$2(Ljava/util/List;Ljava/lang/String;Ljava/util/List;)Lrx/d;
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0, p1, p3, p2}, Lcm/aptoide/pt/v8engine/payment/AptoidePay;->addAuthorizations(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public process(Lcm/aptoide/pt/v8engine/payment/Payment;)Lrx/a;
    .locals 1

    .prologue
    .line 110
    invoke-interface {p1}, Lcm/aptoide/pt/v8engine/payment/Payment;->process()Lrx/a;

    move-result-object v0

    return-object v0
.end method
