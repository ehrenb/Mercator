.class public Lcm/aptoide/pt/v8engine/repository/InAppPaymentConfirmationRepository;
.super Lcm/aptoide/pt/v8engine/repository/PaymentConfirmationRepository;
.source "InAppPaymentConfirmationRepository.java"


# instance fields
.field private final product:Lcm/aptoide/pt/v8engine/payment/products/InAppBillingProduct;


# direct methods
.method public constructor <init>(Lcm/aptoide/pt/dataprovider/NetworkOperatorManager;Lcm/aptoide/pt/database/accessors/PaymentConfirmationAccessor;Lcm/aptoide/pt/v8engine/repository/sync/SyncAdapterBackgroundSync;Lcm/aptoide/pt/v8engine/repository/PaymentConfirmationFactory;Lcm/aptoide/pt/v8engine/payment/products/InAppBillingProduct;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3, p4}, Lcm/aptoide/pt/v8engine/repository/PaymentConfirmationRepository;-><init>(Lcm/aptoide/pt/dataprovider/NetworkOperatorManager;Lcm/aptoide/pt/database/accessors/PaymentConfirmationAccessor;Lcm/aptoide/pt/v8engine/repository/sync/SyncAdapterBackgroundSync;Lcm/aptoide/pt/v8engine/repository/PaymentConfirmationFactory;)V

    .line 30
    iput-object p5, p0, Lcm/aptoide/pt/v8engine/repository/InAppPaymentConfirmationRepository;->product:Lcm/aptoide/pt/v8engine/payment/products/InAppBillingProduct;

    .line 31
    return-void
.end method

.method static synthetic lambda$createPaymentConfirmation$0(Lcm/aptoide/pt/model/v3/BaseV3Response;)Lrx/d;
    .locals 2

    .prologue
    .line 38
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v3/BaseV3Response;->isOk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    const/4 v0, 0x0

    invoke-static {v0}, Lrx/d;->a(Ljava/lang/Object;)Lrx/d;

    move-result-object v0

    .line 41
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcm/aptoide/pt/v8engine/repository/exception/RepositoryIllegalArgumentException;

    .line 42
    invoke-static {p0}, Lcm/aptoide/pt/dataprovider/ws/v3/V3;->getErrorMessage(Lcm/aptoide/pt/model/v3/BaseV3Response;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcm/aptoide/pt/v8engine/repository/exception/RepositoryIllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 41
    invoke-static {v0}, Lrx/d;->a(Ljava/lang/Throwable;)Lrx/d;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public createPaymentConfirmation(I)Lrx/a;
    .locals 4

    .prologue
    .line 34
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/repository/InAppPaymentConfirmationRepository;->product:Lcm/aptoide/pt/v8engine/payment/products/InAppBillingProduct;

    invoke-virtual {v0}, Lcm/aptoide/pt/v8engine/payment/products/InAppBillingProduct;->getId()I

    move-result v0

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/repository/InAppPaymentConfirmationRepository;->operatorManager:Lcm/aptoide/pt/dataprovider/NetworkOperatorManager;

    iget-object v2, p0, Lcm/aptoide/pt/v8engine/repository/InAppPaymentConfirmationRepository;->product:Lcm/aptoide/pt/v8engine/payment/products/InAppBillingProduct;

    .line 35
    invoke-virtual {v2}, Lcm/aptoide/pt/v8engine/payment/products/InAppBillingProduct;->getDeveloperPayload()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcm/aptoide/accountmanager/AptoideAccountManager;->getAccessToken()Ljava/lang/String;

    move-result-object v3

    .line 34
    invoke-static {v0, p1, v1, v2, v3}, Lcm/aptoide/pt/dataprovider/ws/v3/CreatePaymentConfirmationRequest;->ofInApp(IILcm/aptoide/pt/dataprovider/NetworkOperatorManager;Ljava/lang/String;Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v3/CreatePaymentConfirmationRequest;

    move-result-object v0

    .line 36
    invoke-virtual {v0}, Lcm/aptoide/pt/dataprovider/ws/v3/CreatePaymentConfirmationRequest;->observe()Lrx/d;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/v8engine/repository/InAppPaymentConfirmationRepository$$Lambda$1;->lambdaFactory$()Lrx/b/e;

    move-result-object v1

    .line 37
    invoke-virtual {v0, v1}, Lrx/d;->e(Lrx/b/e;)Lrx/d;

    move-result-object v0

    .line 44
    invoke-virtual {v0}, Lrx/d;->c()Lrx/a;

    move-result-object v0

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/repository/InAppPaymentConfirmationRepository;->product:Lcm/aptoide/pt/v8engine/payment/products/InAppBillingProduct;

    .line 45
    invoke-virtual {p0, v1}, Lcm/aptoide/pt/v8engine/repository/InAppPaymentConfirmationRepository;->syncPaymentConfirmation(Lcm/aptoide/pt/v8engine/payment/products/AptoideProduct;)Lrx/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/a;->a(Lrx/a;)Lrx/a;

    move-result-object v0

    return-object v0
.end method

.method public createPaymentConfirmation(ILjava/lang/String;)Lrx/a;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/repository/InAppPaymentConfirmationRepository;->product:Lcm/aptoide/pt/v8engine/payment/products/InAppBillingProduct;

    invoke-virtual {p0, v0, p1, p2}, Lcm/aptoide/pt/v8engine/repository/InAppPaymentConfirmationRepository;->createPaymentConfirmation(Lcm/aptoide/pt/v8engine/payment/products/AptoideProduct;ILjava/lang/String;)Lrx/a;

    move-result-object v0

    return-object v0
.end method
