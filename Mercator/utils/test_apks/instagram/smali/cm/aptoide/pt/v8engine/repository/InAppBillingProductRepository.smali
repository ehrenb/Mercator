.class public Lcm/aptoide/pt/v8engine/repository/InAppBillingProductRepository;
.super Ljava/lang/Object;
.source "InAppBillingProductRepository.java"

# interfaces
.implements Lcm/aptoide/pt/v8engine/repository/ProductRepository;


# instance fields
.field final inAppBillingRepository:Lcm/aptoide/pt/v8engine/repository/InAppBillingRepository;

.field final paymentFactory:Lcm/aptoide/pt/v8engine/payment/PaymentFactory;

.field final purchaseFactory:Lcm/aptoide/pt/v8engine/payment/PurchaseFactory;


# direct methods
.method public constructor <init>(Lcm/aptoide/pt/v8engine/repository/InAppBillingRepository;Lcm/aptoide/pt/v8engine/payment/PurchaseFactory;Lcm/aptoide/pt/v8engine/payment/PaymentFactory;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcm/aptoide/pt/v8engine/repository/InAppBillingProductRepository;->inAppBillingRepository:Lcm/aptoide/pt/v8engine/repository/InAppBillingRepository;

    .line 31
    iput-object p2, p0, Lcm/aptoide/pt/v8engine/repository/InAppBillingProductRepository;->purchaseFactory:Lcm/aptoide/pt/v8engine/payment/PurchaseFactory;

    .line 32
    iput-object p3, p0, Lcm/aptoide/pt/v8engine/repository/InAppBillingProductRepository;->paymentFactory:Lcm/aptoide/pt/v8engine/payment/PaymentFactory;

    .line 33
    return-void
.end method

.method private convertToPurchase(Lcm/aptoide/pt/model/v3/InAppBillingPurchasesResponse$PurchaseInformation;Ljava/lang/String;)Lrx/d;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcm/aptoide/pt/model/v3/InAppBillingPurchasesResponse$PurchaseInformation;",
            "Ljava/lang/String;",
            ")",
            "Lrx/d",
            "<",
            "Lcm/aptoide/pt/v8engine/payment/Purchase;",
            ">;"
        }
    .end annotation

    .prologue
    .line 64
    invoke-virtual {p1}, Lcm/aptoide/pt/model/v3/InAppBillingPurchasesResponse$PurchaseInformation;->getPurchaseList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lrx/d;->a(Ljava/lang/Iterable;)Lrx/d;

    move-result-object v0

    .line 65
    invoke-virtual {p1}, Lcm/aptoide/pt/model/v3/InAppBillingPurchasesResponse$PurchaseInformation;->getSignatureList()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lrx/d;->a(Ljava/lang/Iterable;)Lrx/d;

    move-result-object v1

    invoke-static {p0, p2}, Lcm/aptoide/pt/v8engine/repository/InAppBillingProductRepository$$Lambda$5;->lambdaFactory$(Lcm/aptoide/pt/v8engine/repository/InAppBillingProductRepository;Ljava/lang/String;)Lrx/b/f;

    move-result-object v2

    .line 64
    invoke-static {v0, v1, v2}, Lrx/d;->b(Lrx/d;Lrx/d;Lrx/b/f;)Lrx/d;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/v8engine/repository/InAppBillingProductRepository$$Lambda$6;->lambdaFactory$()Lrx/b/e;

    move-result-object v1

    .line 71
    invoke-virtual {v0, v1}, Lrx/d;->c(Lrx/b/e;)Lrx/d;

    move-result-object v0

    new-instance v1, Lcm/aptoide/pt/v8engine/repository/exception/RepositoryItemNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No purchase found for SKU "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcm/aptoide/pt/v8engine/repository/exception/RepositoryItemNotFoundException;-><init>(Ljava/lang/String;)V

    .line 72
    invoke-static {v1}, Lrx/d;->a(Ljava/lang/Throwable;)Lrx/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->c(Lrx/d;)Lrx/d;

    move-result-object v0

    .line 74
    invoke-virtual {v0}, Lrx/d;->i()Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method private getServerInAppBillingPaymentServices(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lrx/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lrx/d",
            "<",
            "Ljava/util/List",
            "<",
            "Lcm/aptoide/pt/model/v3/PaymentServiceResponse;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 58
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/repository/InAppBillingProductRepository;->inAppBillingRepository:Lcm/aptoide/pt/v8engine/repository/InAppBillingRepository;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcm/aptoide/pt/v8engine/repository/InAppBillingRepository;->getSKUDetails(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lrx/d;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/v8engine/repository/InAppBillingProductRepository$$Lambda$4;->lambdaFactory$()Lrx/b/e;

    move-result-object v1

    .line 59
    invoke-virtual {v0, v1}, Lrx/d;->g(Lrx/b/e;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$convertToPurchase$5(Lcm/aptoide/pt/v8engine/payment/Purchase;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 71
    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic lambda$getPayments$1(Ljava/util/List;)Ljava/lang/Iterable;
    .locals 0

    .prologue
    .line 49
    return-object p0
.end method

.method static synthetic lambda$getServerInAppBillingPaymentServices$3(Lcm/aptoide/pt/model/v3/InAppBillingSkuDetailsResponse;)Ljava/util/List;
    .locals 1

    .prologue
    .line 59
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v3/InAppBillingSkuDetailsResponse;->getPaymentServices()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getPayments(Lcm/aptoide/pt/v8engine/payment/products/AptoideProduct;)Lrx/h;
    .locals 4
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
    .line 46
    move-object v0, p1

    check-cast v0, Lcm/aptoide/pt/v8engine/payment/products/InAppBillingProduct;

    invoke-virtual {v0}, Lcm/aptoide/pt/v8engine/payment/products/InAppBillingProduct;->getApiVersion()I

    move-result v1

    move-object v0, p1

    check-cast v0, Lcm/aptoide/pt/v8engine/payment/products/InAppBillingProduct;

    .line 47
    invoke-virtual {v0}, Lcm/aptoide/pt/v8engine/payment/products/InAppBillingProduct;->getPackageName()Ljava/lang/String;

    move-result-object v2

    move-object v0, p1

    check-cast v0, Lcm/aptoide/pt/v8engine/payment/products/InAppBillingProduct;

    invoke-virtual {v0}, Lcm/aptoide/pt/v8engine/payment/products/InAppBillingProduct;->getSku()Ljava/lang/String;

    move-result-object v3

    move-object v0, p1

    check-cast v0, Lcm/aptoide/pt/v8engine/payment/products/InAppBillingProduct;

    .line 48
    invoke-virtual {v0}, Lcm/aptoide/pt/v8engine/payment/products/InAppBillingProduct;->getType()Ljava/lang/String;

    move-result-object v0

    .line 46
    invoke-direct {p0, v1, v2, v3, v0}, Lcm/aptoide/pt/v8engine/repository/InAppBillingProductRepository;->getServerInAppBillingPaymentServices(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lrx/d;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/v8engine/repository/InAppBillingProductRepository$$Lambda$2;->lambdaFactory$()Lrx/b/e;

    move-result-object v1

    .line 48
    invoke-virtual {v0, v1}, Lrx/d;->f(Lrx/b/e;)Lrx/d;

    move-result-object v0

    invoke-static {p0, p1}, Lcm/aptoide/pt/v8engine/repository/InAppBillingProductRepository$$Lambda$3;->lambdaFactory$(Lcm/aptoide/pt/v8engine/repository/InAppBillingProductRepository;Lcm/aptoide/pt/v8engine/payment/products/AptoideProduct;)Lrx/b/e;

    move-result-object v1

    .line 50
    invoke-virtual {v0, v1}, Lrx/d;->g(Lrx/b/e;)Lrx/d;

    move-result-object v0

    .line 51
    invoke-virtual {v0}, Lrx/d;->p()Lrx/d;

    move-result-object v0

    .line 52
    invoke-virtual {v0}, Lrx/d;->b()Lrx/h;

    move-result-object v0

    .line 53
    invoke-static {}, Lrx/g/a;->d()Lrx/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/h;->a(Lrx/g;)Lrx/h;

    move-result-object v0

    return-object v0
.end method

.method public getPurchase(Lcm/aptoide/pt/v8engine/payment/products/AptoideProduct;)Lrx/h;
    .locals 4
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
    .line 36
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/repository/InAppBillingProductRepository;->inAppBillingRepository:Lcm/aptoide/pt/v8engine/repository/InAppBillingRepository;

    move-object v0, p1

    check-cast v0, Lcm/aptoide/pt/v8engine/payment/products/InAppBillingProduct;

    .line 37
    invoke-virtual {v0}, Lcm/aptoide/pt/v8engine/payment/products/InAppBillingProduct;->getApiVersion()I

    move-result v2

    move-object v0, p1

    check-cast v0, Lcm/aptoide/pt/v8engine/payment/products/InAppBillingProduct;

    .line 38
    invoke-virtual {v0}, Lcm/aptoide/pt/v8engine/payment/products/InAppBillingProduct;->getPackageName()Ljava/lang/String;

    move-result-object v3

    move-object v0, p1

    check-cast v0, Lcm/aptoide/pt/v8engine/payment/products/InAppBillingProduct;

    invoke-virtual {v0}, Lcm/aptoide/pt/v8engine/payment/products/InAppBillingProduct;->getType()Ljava/lang/String;

    move-result-object v0

    .line 36
    invoke-virtual {v1, v2, v3, v0}, Lcm/aptoide/pt/v8engine/repository/InAppBillingRepository;->getInAppPurchaseInformation(ILjava/lang/String;Ljava/lang/String;)Lrx/d;

    move-result-object v0

    invoke-static {p0, p1}, Lcm/aptoide/pt/v8engine/repository/InAppBillingProductRepository$$Lambda$1;->lambdaFactory$(Lcm/aptoide/pt/v8engine/repository/InAppBillingProductRepository;Lcm/aptoide/pt/v8engine/payment/products/AptoideProduct;)Lrx/b/e;

    move-result-object v1

    .line 39
    invoke-virtual {v0, v1}, Lrx/d;->e(Lrx/b/e;)Lrx/d;

    move-result-object v0

    .line 41
    invoke-virtual {v0}, Lrx/d;->b()Lrx/h;

    move-result-object v0

    .line 42
    invoke-static {}, Lrx/g/a;->d()Lrx/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/h;->a(Lrx/g;)Lrx/h;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$convertToPurchase$4(Ljava/lang/String;Lcm/aptoide/pt/model/v3/InAppBillingPurchasesResponse$InAppBillingPurchase;Ljava/lang/String;)Lcm/aptoide/pt/v8engine/payment/Purchase;
    .locals 1

    .prologue
    .line 66
    invoke-virtual {p2}, Lcm/aptoide/pt/model/v3/InAppBillingPurchasesResponse$InAppBillingPurchase;->getProductId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcm/aptoide/pt/model/v3/InAppBillingPurchasesResponse$InAppBillingPurchase;->getPurchaseState()I

    move-result v0

    if-nez v0, :cond_0

    .line 67
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/repository/InAppBillingProductRepository;->purchaseFactory:Lcm/aptoide/pt/v8engine/payment/PurchaseFactory;

    invoke-virtual {v0, p2, p3}, Lcm/aptoide/pt/v8engine/payment/PurchaseFactory;->create(Lcm/aptoide/pt/model/v3/InAppBillingPurchasesResponse$InAppBillingPurchase;Ljava/lang/String;)Lcm/aptoide/pt/v8engine/payment/Purchase;

    move-result-object v0

    .line 69
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method synthetic lambda$getPayments$2(Lcm/aptoide/pt/v8engine/payment/products/AptoideProduct;Lcm/aptoide/pt/model/v3/PaymentServiceResponse;)Lcm/aptoide/pt/v8engine/payment/Payment;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/repository/InAppBillingProductRepository;->paymentFactory:Lcm/aptoide/pt/v8engine/payment/PaymentFactory;

    invoke-virtual {v0, p2, p1}, Lcm/aptoide/pt/v8engine/payment/PaymentFactory;->create(Lcm/aptoide/pt/model/v3/PaymentServiceResponse;Lcm/aptoide/pt/v8engine/payment/Product;)Lcm/aptoide/pt/v8engine/payment/Payment;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$getPurchase$0(Lcm/aptoide/pt/v8engine/payment/products/AptoideProduct;Lcm/aptoide/pt/model/v3/InAppBillingPurchasesResponse$PurchaseInformation;)Lrx/d;
    .locals 1

    .prologue
    .line 39
    check-cast p1, Lcm/aptoide/pt/v8engine/payment/products/InAppBillingProduct;

    .line 40
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/payment/products/InAppBillingProduct;->getSku()Ljava/lang/String;

    move-result-object v0

    .line 39
    invoke-direct {p0, p2, v0}, Lcm/aptoide/pt/v8engine/repository/InAppBillingProductRepository;->convertToPurchase(Lcm/aptoide/pt/model/v3/InAppBillingPurchasesResponse$PurchaseInformation;Ljava/lang/String;)Lrx/d;

    move-result-object v0

    return-object v0
.end method
