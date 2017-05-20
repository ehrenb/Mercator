.class public abstract Lcm/aptoide/pt/v8engine/repository/PaymentConfirmationRepository;
.super Ljava/lang/Object;
.source "PaymentConfirmationRepository.java"


# instance fields
.field private final backgroundSync:Lcm/aptoide/pt/v8engine/repository/sync/SyncAdapterBackgroundSync;

.field private final confirmationAccessor:Lcm/aptoide/pt/database/accessors/PaymentConfirmationAccessor;

.field protected final confirmationFactory:Lcm/aptoide/pt/v8engine/repository/PaymentConfirmationFactory;

.field protected final operatorManager:Lcm/aptoide/pt/dataprovider/NetworkOperatorManager;


# direct methods
.method public constructor <init>(Lcm/aptoide/pt/dataprovider/NetworkOperatorManager;Lcm/aptoide/pt/database/accessors/PaymentConfirmationAccessor;Lcm/aptoide/pt/v8engine/repository/sync/SyncAdapterBackgroundSync;Lcm/aptoide/pt/v8engine/repository/PaymentConfirmationFactory;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcm/aptoide/pt/v8engine/repository/PaymentConfirmationRepository;->operatorManager:Lcm/aptoide/pt/dataprovider/NetworkOperatorManager;

    .line 31
    iput-object p2, p0, Lcm/aptoide/pt/v8engine/repository/PaymentConfirmationRepository;->confirmationAccessor:Lcm/aptoide/pt/database/accessors/PaymentConfirmationAccessor;

    .line 32
    iput-object p3, p0, Lcm/aptoide/pt/v8engine/repository/PaymentConfirmationRepository;->backgroundSync:Lcm/aptoide/pt/v8engine/repository/sync/SyncAdapterBackgroundSync;

    .line 33
    iput-object p4, p0, Lcm/aptoide/pt/v8engine/repository/PaymentConfirmationRepository;->confirmationFactory:Lcm/aptoide/pt/v8engine/repository/PaymentConfirmationFactory;

    .line 34
    return-void
.end method


# virtual methods
.method public abstract createPaymentConfirmation(I)Lrx/a;
.end method

.method public abstract createPaymentConfirmation(ILjava/lang/String;)Lrx/a;
.end method

.method protected createPaymentConfirmation(Lcm/aptoide/pt/v8engine/payment/products/AptoideProduct;ILjava/lang/String;)Lrx/a;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/repository/PaymentConfirmationRepository;->backgroundSync:Lcm/aptoide/pt/v8engine/repository/sync/SyncAdapterBackgroundSync;

    invoke-virtual {v0, p1, p2, p3}, Lcm/aptoide/pt/v8engine/repository/sync/SyncAdapterBackgroundSync;->syncConfirmation(Lcm/aptoide/pt/v8engine/payment/products/AptoideProduct;ILjava/lang/String;)Lrx/a;

    move-result-object v0

    return-object v0
.end method

.method public getPaymentConfirmation(Lcm/aptoide/pt/v8engine/payment/Product;Ljava/lang/String;)Lrx/d;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcm/aptoide/pt/v8engine/payment/Product;",
            "Ljava/lang/String;",
            ")",
            "Lrx/d",
            "<",
            "Lcm/aptoide/pt/v8engine/payment/PaymentConfirmation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 42
    move-object v0, p1

    check-cast v0, Lcm/aptoide/pt/v8engine/payment/products/AptoideProduct;

    invoke-virtual {p0, v0}, Lcm/aptoide/pt/v8engine/repository/PaymentConfirmationRepository;->syncPaymentConfirmation(Lcm/aptoide/pt/v8engine/payment/products/AptoideProduct;)Lrx/a;

    move-result-object v0

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/repository/PaymentConfirmationRepository;->confirmationAccessor:Lcm/aptoide/pt/database/accessors/PaymentConfirmationAccessor;

    .line 43
    invoke-interface {p1}, Lcm/aptoide/pt/v8engine/payment/Product;->getId()I

    move-result v2

    invoke-virtual {v1, v2, p2}, Lcm/aptoide/pt/database/accessors/PaymentConfirmationAccessor;->getPaymentConfirmations(ILjava/lang/String;)Lrx/d;

    move-result-object v1

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/repository/PaymentConfirmationRepository$$Lambda$1;->lambdaFactory$(Lcm/aptoide/pt/v8engine/repository/PaymentConfirmationRepository;)Lrx/b/e;

    move-result-object v2

    .line 44
    invoke-virtual {v1, v2}, Lrx/d;->e(Lrx/b/e;)Lrx/d;

    move-result-object v1

    .line 42
    invoke-virtual {v0, v1}, Lrx/a;->b(Lrx/d;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$getPaymentConfirmation$1(Ljava/util/List;)Lrx/d;
    .locals 2

    .prologue
    .line 44
    invoke-static {p1}, Lrx/d;->a(Ljava/lang/Iterable;)Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/repository/PaymentConfirmationRepository$$Lambda$2;->lambdaFactory$(Lcm/aptoide/pt/v8engine/repository/PaymentConfirmationRepository;)Lrx/b/e;

    move-result-object v1

    .line 45
    invoke-virtual {v0, v1}, Lrx/d;->g(Lrx/b/e;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$null$0(Lcm/aptoide/pt/database/realm/PaymentConfirmation;)Lcm/aptoide/pt/v8engine/payment/PaymentConfirmation;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/repository/PaymentConfirmationRepository;->confirmationFactory:Lcm/aptoide/pt/v8engine/repository/PaymentConfirmationFactory;

    invoke-virtual {v0, p1}, Lcm/aptoide/pt/v8engine/repository/PaymentConfirmationFactory;->convertToPaymentConfirmation(Lcm/aptoide/pt/database/realm/PaymentConfirmation;)Lcm/aptoide/pt/v8engine/payment/PaymentConfirmation;

    move-result-object v0

    return-object v0
.end method

.method protected syncPaymentConfirmation(Lcm/aptoide/pt/v8engine/payment/products/AptoideProduct;)Lrx/a;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/repository/PaymentConfirmationRepository;->backgroundSync:Lcm/aptoide/pt/v8engine/repository/sync/SyncAdapterBackgroundSync;

    invoke-virtual {v0, p1}, Lcm/aptoide/pt/v8engine/repository/sync/SyncAdapterBackgroundSync;->syncConfirmation(Lcm/aptoide/pt/v8engine/payment/products/AptoideProduct;)Lrx/a;

    move-result-object v0

    return-object v0
.end method
