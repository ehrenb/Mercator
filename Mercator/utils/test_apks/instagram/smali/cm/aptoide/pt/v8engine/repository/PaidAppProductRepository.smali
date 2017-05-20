.class public Lcm/aptoide/pt/v8engine/repository/PaidAppProductRepository;
.super Ljava/lang/Object;
.source "PaidAppProductRepository.java"

# interfaces
.implements Lcm/aptoide/pt/v8engine/repository/ProductRepository;


# instance fields
.field private final appRepository:Lcm/aptoide/pt/v8engine/repository/AppRepository;

.field private final paymentFactory:Lcm/aptoide/pt/v8engine/payment/PaymentFactory;

.field private final purchaseFactory:Lcm/aptoide/pt/v8engine/payment/PurchaseFactory;


# direct methods
.method public constructor <init>(Lcm/aptoide/pt/v8engine/repository/AppRepository;Lcm/aptoide/pt/v8engine/payment/PurchaseFactory;Lcm/aptoide/pt/v8engine/payment/PaymentFactory;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcm/aptoide/pt/v8engine/repository/PaidAppProductRepository;->appRepository:Lcm/aptoide/pt/v8engine/repository/AppRepository;

    .line 32
    iput-object p2, p0, Lcm/aptoide/pt/v8engine/repository/PaidAppProductRepository;->purchaseFactory:Lcm/aptoide/pt/v8engine/payment/PurchaseFactory;

    .line 33
    iput-object p3, p0, Lcm/aptoide/pt/v8engine/repository/PaidAppProductRepository;->paymentFactory:Lcm/aptoide/pt/v8engine/payment/PaymentFactory;

    .line 34
    return-void
.end method

.method private getServerPaidAppPaymentServices(JZLjava/lang/String;Z)Lrx/h;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JZ",
            "Ljava/lang/String;",
            "Z)",
            "Lrx/h",
            "<",
            "Ljava/util/List",
            "<",
            "Lcm/aptoide/pt/model/v3/PaymentServiceResponse;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 59
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/repository/PaidAppProductRepository;->appRepository:Lcm/aptoide/pt/v8engine/repository/AppRepository;

    move-wide v2, p1

    move v4, p3

    move-object v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcm/aptoide/pt/v8engine/repository/AppRepository;->getPaidApp(JZLjava/lang/String;Z)Lrx/d;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/v8engine/repository/PaidAppProductRepository$$Lambda$4;->lambdaFactory$()Lrx/b/e;

    move-result-object v1

    .line 60
    invoke-virtual {v0, v1}, Lrx/d;->g(Lrx/b/e;)Lrx/d;

    move-result-object v0

    .line 61
    invoke-virtual {v0}, Lrx/d;->b()Lrx/h;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$getPayments$1(Ljava/util/List;)Ljava/lang/Iterable;
    .locals 0

    .prologue
    .line 51
    return-object p0
.end method

.method static synthetic lambda$getServerPaidAppPaymentServices$3(Lcm/aptoide/pt/model/v3/PaidApp;)Ljava/util/List;
    .locals 1

    .prologue
    .line 60
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v3/PaidApp;->getPayment()Lcm/aptoide/pt/model/v3/PaidApp$Payment;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v3/PaidApp$Payment;->getPaymentServices()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getPayments(Lcm/aptoide/pt/v8engine/payment/products/AptoideProduct;)Lrx/h;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcm/aptoide/pt/v8engine/payment/products/AptoideProduct;",
            ")",
            "Lrx/h",
            "<",
            "Ljava/util/List",
            "<",
            "Lcm/aptoide/pt/v8engine/payment/Payment;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 49
    move-object v0, p1

    check-cast v0, Lcm/aptoide/pt/v8engine/payment/products/PaidAppProduct;

    invoke-virtual {v0}, Lcm/aptoide/pt/v8engine/payment/products/PaidAppProduct;->getAppId()J

    move-result-wide v2

    const/4 v4, 0x0

    move-object v0, p1

    check-cast v0, Lcm/aptoide/pt/v8engine/payment/products/PaidAppProduct;

    .line 50
    invoke-virtual {v0}, Lcm/aptoide/pt/v8engine/payment/products/PaidAppProduct;->getStoreName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    move-object v1, p0

    .line 49
    invoke-direct/range {v1 .. v6}, Lcm/aptoide/pt/v8engine/repository/PaidAppProductRepository;->getServerPaidAppPaymentServices(JZLjava/lang/String;Z)Lrx/h;

    move-result-object v0

    .line 50
    invoke-virtual {v0}, Lrx/h;->a()Lrx/d;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/v8engine/repository/PaidAppProductRepository$$Lambda$2;->lambdaFactory$()Lrx/b/e;

    move-result-object v1

    .line 51
    invoke-virtual {v0, v1}, Lrx/d;->f(Lrx/b/e;)Lrx/d;

    move-result-object v0

    invoke-static {p0, p1}, Lcm/aptoide/pt/v8engine/repository/PaidAppProductRepository$$Lambda$3;->lambdaFactory$(Lcm/aptoide/pt/v8engine/repository/PaidAppProductRepository;Lcm/aptoide/pt/v8engine/payment/products/AptoideProduct;)Lrx/b/e;

    move-result-object v1

    .line 52
    invoke-virtual {v0, v1}, Lrx/d;->g(Lrx/b/e;)Lrx/d;

    move-result-object v0

    .line 53
    invoke-virtual {v0}, Lrx/d;->p()Lrx/d;

    move-result-object v0

    .line 54
    invoke-virtual {v0}, Lrx/d;->b()Lrx/h;

    move-result-object v0

    return-object v0
.end method

.method public getPurchase(Lcm/aptoide/pt/v8engine/payment/products/AptoideProduct;)Lrx/h;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcm/aptoide/pt/v8engine/payment/products/AptoideProduct;",
            ")",
            "Lrx/h",
            "<",
            "Lcm/aptoide/pt/v8engine/payment/Purchase;",
            ">;"
        }
    .end annotation

    .prologue
    .line 37
    check-cast p1, Lcm/aptoide/pt/v8engine/payment/products/PaidAppProduct;

    .line 38
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/repository/PaidAppProductRepository;->appRepository:Lcm/aptoide/pt/v8engine/repository/AppRepository;

    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/payment/products/PaidAppProduct;->getAppId()J

    move-result-wide v2

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/payment/products/PaidAppProduct;->getStoreName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lcm/aptoide/pt/v8engine/repository/AppRepository;->getPaidApp(JZLjava/lang/String;Z)Lrx/d;

    move-result-object v0

    .line 39
    invoke-virtual {v0}, Lrx/d;->b()Lrx/h;

    move-result-object v0

    invoke-static {p0, p1}, Lcm/aptoide/pt/v8engine/repository/PaidAppProductRepository$$Lambda$1;->lambdaFactory$(Lcm/aptoide/pt/v8engine/repository/PaidAppProductRepository;Lcm/aptoide/pt/v8engine/payment/products/PaidAppProduct;)Lrx/b/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/h;->a(Lrx/b/e;)Lrx/h;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$getPayments$2(Lcm/aptoide/pt/v8engine/payment/products/AptoideProduct;Lcm/aptoide/pt/model/v3/PaymentServiceResponse;)Lcm/aptoide/pt/v8engine/payment/Payment;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/repository/PaidAppProductRepository;->paymentFactory:Lcm/aptoide/pt/v8engine/payment/PaymentFactory;

    invoke-virtual {v0, p2, p1}, Lcm/aptoide/pt/v8engine/payment/PaymentFactory;->create(Lcm/aptoide/pt/model/v3/PaymentServiceResponse;Lcm/aptoide/pt/v8engine/payment/Product;)Lcm/aptoide/pt/v8engine/payment/Payment;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$getPurchase$0(Lcm/aptoide/pt/v8engine/payment/products/PaidAppProduct;Lcm/aptoide/pt/model/v3/PaidApp;)Lrx/h;
    .locals 3

    .prologue
    .line 40
    invoke-virtual {p2}, Lcm/aptoide/pt/model/v3/PaidApp;->getPayment()Lcm/aptoide/pt/model/v3/PaidApp$Payment;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v3/PaidApp$Payment;->isPaid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/repository/PaidAppProductRepository;->purchaseFactory:Lcm/aptoide/pt/v8engine/payment/PurchaseFactory;

    invoke-virtual {v0, p2}, Lcm/aptoide/pt/v8engine/payment/PurchaseFactory;->create(Lcm/aptoide/pt/model/v3/PaidApp;)Lcm/aptoide/pt/v8engine/payment/Purchase;

    move-result-object v0

    invoke-static {v0}, Lrx/h;->a(Ljava/lang/Object;)Lrx/h;

    move-result-object v0

    .line 43
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcm/aptoide/pt/v8engine/repository/exception/RepositoryItemNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Purchase not found for product "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 44
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/payment/products/PaidAppProduct;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcm/aptoide/pt/v8engine/repository/exception/RepositoryItemNotFoundException;-><init>(Ljava/lang/String;)V

    .line 43
    invoke-static {v0}, Lrx/h;->a(Ljava/lang/Throwable;)Lrx/h;

    move-result-object v0

    goto :goto_0
.end method
