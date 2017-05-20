.class public Lcm/aptoide/pt/v8engine/repository/InAppBillingRepository;
.super Ljava/lang/Object;
.source "InAppBillingRepository.java"


# instance fields
.field private final confirmationAccessor:Lcm/aptoide/pt/database/accessors/PaymentConfirmationAccessor;

.field private final operatorManager:Lcm/aptoide/pt/dataprovider/NetworkOperatorManager;


# direct methods
.method public constructor <init>(Lcm/aptoide/pt/dataprovider/NetworkOperatorManager;Lcm/aptoide/pt/database/accessors/PaymentConfirmationAccessor;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcm/aptoide/pt/v8engine/repository/InAppBillingRepository;->operatorManager:Lcm/aptoide/pt/dataprovider/NetworkOperatorManager;

    .line 38
    iput-object p2, p0, Lcm/aptoide/pt/v8engine/repository/InAppBillingRepository;->confirmationAccessor:Lcm/aptoide/pt/database/accessors/PaymentConfirmationAccessor;

    .line 39
    return-void
.end method

.method private getSKUListDetails(ILjava/lang/String;Ljava/util/List;Ljava/lang/String;)Lrx/d;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lrx/d",
            "<",
            "Lcm/aptoide/pt/model/v3/InAppBillingSkuDetailsResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 71
    iget-object v3, p0, Lcm/aptoide/pt/v8engine/repository/InAppBillingRepository;->operatorManager:Lcm/aptoide/pt/dataprovider/NetworkOperatorManager;

    .line 72
    invoke-static {}, Lcm/aptoide/accountmanager/AptoideAccountManager;->getAccessToken()Ljava/lang/String;

    move-result-object v5

    move v0, p1

    move-object v1, p2

    move-object v2, p3

    move-object v4, p4

    .line 71
    invoke-static/range {v0 .. v5}, Lcm/aptoide/pt/dataprovider/ws/v3/InAppBillingSkuDetailsRequest;->of(ILjava/lang/String;Ljava/util/List;Lcm/aptoide/pt/dataprovider/NetworkOperatorManager;Ljava/lang/String;Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v3/InAppBillingSkuDetailsRequest;

    move-result-object v0

    .line 72
    invoke-virtual {v0}, Lcm/aptoide/pt/dataprovider/ws/v3/InAppBillingSkuDetailsRequest;->observe()Lrx/d;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/v8engine/repository/InAppBillingRepository$$Lambda$3;->lambdaFactory$()Lrx/b/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->e(Lrx/b/e;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method private isDeletionItemNotFound(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcm/aptoide/pt/model/v3/ErrorResponse;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 116
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/model/v3/ErrorResponse;

    .line 117
    iget-object v0, v0, Lcm/aptoide/pt/model/v3/ErrorResponse;->code:Ljava/lang/String;

    const-string v2, "PRODUCT-201"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    const/4 v0, 0x1

    .line 121
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic lambda$getInAppBilling$0(Lcm/aptoide/pt/model/v3/InAppBillingAvailableResponse;)Lrx/d;
    .locals 2

    .prologue
    .line 45
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v3/InAppBillingAvailableResponse;->isOk()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 46
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v3/InAppBillingAvailableResponse;->getInAppBillingAvailable()Lcm/aptoide/pt/model/v3/InAppBillingAvailableResponse$InAppBillingAvailable;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v3/InAppBillingAvailableResponse$InAppBillingAvailable;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    const/4 v0, 0x0

    invoke-static {v0}, Lrx/d;->a(Ljava/lang/Object;)Lrx/d;

    move-result-object v0

    .line 53
    :goto_0
    return-object v0

    .line 49
    :cond_0
    new-instance v0, Lcm/aptoide/pt/v8engine/repository/exception/RepositoryItemNotFoundException;

    .line 50
    invoke-static {p0}, Lcm/aptoide/pt/dataprovider/ws/v3/V3;->getErrorMessage(Lcm/aptoide/pt/model/v3/BaseV3Response;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcm/aptoide/pt/v8engine/repository/exception/RepositoryItemNotFoundException;-><init>(Ljava/lang/String;)V

    .line 49
    invoke-static {v0}, Lrx/d;->a(Ljava/lang/Throwable;)Lrx/d;

    move-result-object v0

    goto :goto_0

    .line 53
    :cond_1
    new-instance v0, Lcm/aptoide/pt/v8engine/repository/exception/RepositoryIllegalArgumentException;

    .line 54
    invoke-static {p0}, Lcm/aptoide/pt/dataprovider/ws/v3/V3;->getErrorMessage(Lcm/aptoide/pt/model/v3/BaseV3Response;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcm/aptoide/pt/v8engine/repository/exception/RepositoryIllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 53
    invoke-static {v0}, Lrx/d;->a(Ljava/lang/Throwable;)Lrx/d;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic lambda$getInAppPurchaseInformation$4(Lcm/aptoide/pt/model/v3/InAppBillingPurchasesResponse;)Lrx/d;
    .locals 2

    .prologue
    .line 92
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v3/InAppBillingPurchasesResponse;->isOk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v3/InAppBillingPurchasesResponse;->getPurchaseInformation()Lcm/aptoide/pt/model/v3/InAppBillingPurchasesResponse$PurchaseInformation;

    move-result-object v0

    invoke-static {v0}, Lrx/d;->a(Ljava/lang/Object;)Lrx/d;

    move-result-object v0

    .line 95
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcm/aptoide/pt/v8engine/repository/exception/RepositoryIllegalArgumentException;

    invoke-static {p0}, Lcm/aptoide/pt/dataprovider/ws/v3/V3;->getErrorMessage(Lcm/aptoide/pt/model/v3/BaseV3Response;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcm/aptoide/pt/v8engine/repository/exception/RepositoryIllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lrx/d;->a(Ljava/lang/Throwable;)Lrx/d;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic lambda$getSKUListDetails$3(Lcm/aptoide/pt/model/v3/InAppBillingSkuDetailsResponse;)Lrx/d;
    .locals 2

    .prologue
    .line 73
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v3/InAppBillingSkuDetailsResponse;->isOk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    invoke-static {p0}, Lrx/d;->a(Ljava/lang/Object;)Lrx/d;

    move-result-object v0

    .line 82
    :goto_0
    return-object v0

    .line 77
    :cond_0
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v3/InAppBillingSkuDetailsResponse;->getPublisherResponse()Lcm/aptoide/pt/model/v3/InAppBillingSkuDetailsResponse$PublisherResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v3/InAppBillingSkuDetailsResponse$PublisherResponse;->getDetailList()Ljava/util/List;

    move-result-object v0

    .line 78
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 79
    new-instance v0, Lcm/aptoide/pt/v8engine/repository/exception/RepositoryItemNotFoundException;

    .line 80
    invoke-static {p0}, Lcm/aptoide/pt/dataprovider/ws/v3/V3;->getErrorMessage(Lcm/aptoide/pt/model/v3/BaseV3Response;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcm/aptoide/pt/v8engine/repository/exception/RepositoryItemNotFoundException;-><init>(Ljava/lang/String;)V

    .line 79
    invoke-static {v0}, Lrx/d;->a(Ljava/lang/Throwable;)Lrx/d;

    move-result-object v0

    goto :goto_0

    .line 82
    :cond_1
    new-instance v0, Lcm/aptoide/pt/v8engine/repository/exception/RepositoryIllegalArgumentException;

    .line 83
    invoke-static {p0}, Lcm/aptoide/pt/dataprovider/ws/v3/V3;->getErrorMessage(Lcm/aptoide/pt/model/v3/BaseV3Response;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcm/aptoide/pt/v8engine/repository/exception/RepositoryIllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 82
    invoke-static {v0}, Lrx/d;->a(Ljava/lang/Throwable;)Lrx/d;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic lambda$getSKUs$2(Lcm/aptoide/pt/model/v3/InAppBillingSkuDetailsResponse;)Lrx/d;
    .locals 2

    .prologue
    .line 62
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v3/InAppBillingSkuDetailsResponse;->getPublisherResponse()Lcm/aptoide/pt/model/v3/InAppBillingSkuDetailsResponse$PublisherResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v3/InAppBillingSkuDetailsResponse$PublisherResponse;->getDetailList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lrx/d;->a(Ljava/lang/Iterable;)Lrx/d;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/v8engine/repository/InAppBillingRepository$$Lambda$6;->lambdaFactory$()Lrx/b/e;

    move-result-object v1

    .line 63
    invoke-virtual {v0, v1}, Lrx/d;->g(Lrx/b/e;)Lrx/d;

    move-result-object v0

    .line 66
    invoke-virtual {v0}, Lrx/d;->p()Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$null$1(Lcm/aptoide/pt/model/v3/InAppBillingSkuDetailsResponse$PurchaseDataObject;)Lcm/aptoide/pt/iab/SKU;
    .locals 10

    .prologue
    .line 63
    new-instance v1, Lcm/aptoide/pt/iab/SKU;

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v3/InAppBillingSkuDetailsResponse$PurchaseDataObject;->getProductId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v3/InAppBillingSkuDetailsResponse$PurchaseDataObject;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v3/InAppBillingSkuDetailsResponse$PurchaseDataObject;->getPrice()Ljava/lang/String;

    move-result-object v4

    .line 64
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v3/InAppBillingSkuDetailsResponse$PurchaseDataObject;->getCurrency()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v3/InAppBillingSkuDetailsResponse$PurchaseDataObject;->getPriceAmount()F

    move-result v0

    const v6, 0x49742400    # 1000000.0f

    mul-float/2addr v0, v6

    float-to-long v6, v0

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v3/InAppBillingSkuDetailsResponse$PurchaseDataObject;->getTitle()Ljava/lang/String;

    move-result-object v8

    .line 65
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v3/InAppBillingSkuDetailsResponse$PurchaseDataObject;->getDescription()Ljava/lang/String;

    move-result-object v9

    invoke-direct/range {v1 .. v9}, Lcm/aptoide/pt/iab/SKU;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method public deleteInAppPurchase(ILjava/lang/String;Ljava/lang/String;)Lrx/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lrx/d",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 101
    .line 102
    invoke-static {}, Lcm/aptoide/accountmanager/AptoideAccountManager;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    .line 101
    invoke-static {p1, p2, p3, v0}, Lcm/aptoide/pt/dataprovider/ws/v3/InAppBillingConsumeRequest;->of(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v3/InAppBillingConsumeRequest;

    move-result-object v0

    .line 102
    invoke-virtual {v0}, Lcm/aptoide/pt/dataprovider/ws/v3/InAppBillingConsumeRequest;->observe()Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/repository/InAppBillingRepository$$Lambda$5;->lambdaFactory$(Lcm/aptoide/pt/v8engine/repository/InAppBillingRepository;)Lrx/b/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->e(Lrx/b/e;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public getInAppBilling(ILjava/lang/String;Ljava/lang/String;)Lrx/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lrx/d",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 42
    invoke-static {p1, p2, p3}, Lcm/aptoide/pt/dataprovider/ws/v3/InAppBillingAvailableRequest;->of(ILjava/lang/String;Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v3/InAppBillingAvailableRequest;

    move-result-object v0

    .line 43
    invoke-virtual {v0}, Lcm/aptoide/pt/dataprovider/ws/v3/InAppBillingAvailableRequest;->observe()Lrx/d;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/v8engine/repository/InAppBillingRepository$$Lambda$1;->lambdaFactory$()Lrx/b/e;

    move-result-object v1

    .line 44
    invoke-virtual {v0, v1}, Lrx/d;->e(Lrx/b/e;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public getInAppPurchaseInformation(ILjava/lang/String;Ljava/lang/String;)Lrx/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lrx/d",
            "<",
            "Lcm/aptoide/pt/model/v3/InAppBillingPurchasesResponse$PurchaseInformation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 90
    .line 91
    invoke-static {}, Lcm/aptoide/accountmanager/AptoideAccountManager;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    .line 90
    invoke-static {p1, p2, p3, v0}, Lcm/aptoide/pt/dataprovider/ws/v3/InAppBillingPurchasesRequest;->of(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v3/InAppBillingPurchasesRequest;

    move-result-object v0

    .line 91
    invoke-virtual {v0}, Lcm/aptoide/pt/dataprovider/ws/v3/InAppBillingPurchasesRequest;->observe()Lrx/d;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/v8engine/repository/InAppBillingRepository$$Lambda$4;->lambdaFactory$()Lrx/b/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->e(Lrx/b/e;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public getSKUDetails(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lrx/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lrx/d",
            "<",
            "Lcm/aptoide/pt/model/v3/InAppBillingSkuDetailsResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 126
    invoke-static {p3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0, p4}, Lcm/aptoide/pt/v8engine/repository/InAppBillingRepository;->getSKUListDetails(ILjava/lang/String;Ljava/util/List;Ljava/lang/String;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public getSKUs(ILjava/lang/String;Ljava/util/List;Ljava/lang/String;)Lrx/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lrx/d",
            "<",
            "Ljava/util/List",
            "<",
            "Lcm/aptoide/pt/iab/SKU;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 61
    invoke-direct {p0, p1, p2, p3, p4}, Lcm/aptoide/pt/v8engine/repository/InAppBillingRepository;->getSKUListDetails(ILjava/lang/String;Ljava/util/List;Ljava/lang/String;)Lrx/d;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/v8engine/repository/InAppBillingRepository$$Lambda$2;->lambdaFactory$()Lrx/b/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->e(Lrx/b/e;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$deleteInAppPurchase$5(Lcm/aptoide/pt/model/v3/BaseV3Response;)Lrx/d;
    .locals 2

    .prologue
    .line 103
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v3/BaseV3Response;->isOk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/repository/InAppBillingRepository;->confirmationAccessor:Lcm/aptoide/pt/database/accessors/PaymentConfirmationAccessor;

    invoke-virtual {v0}, Lcm/aptoide/pt/database/accessors/PaymentConfirmationAccessor;->removeAll()V

    .line 106
    const/4 v0, 0x0

    invoke-static {v0}, Lrx/d;->a(Ljava/lang/Object;)Lrx/d;

    move-result-object v0

    .line 111
    :goto_0
    return-object v0

    .line 108
    :cond_0
    invoke-virtual {p1}, Lcm/aptoide/pt/model/v3/BaseV3Response;->getErrors()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcm/aptoide/pt/v8engine/repository/InAppBillingRepository;->isDeletionItemNotFound(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 109
    new-instance v0, Lcm/aptoide/pt/v8engine/repository/exception/RepositoryItemNotFoundException;

    invoke-static {p1}, Lcm/aptoide/pt/dataprovider/ws/v3/V3;->getErrorMessage(Lcm/aptoide/pt/model/v3/BaseV3Response;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcm/aptoide/pt/v8engine/repository/exception/RepositoryItemNotFoundException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lrx/d;->a(Ljava/lang/Throwable;)Lrx/d;

    move-result-object v0

    goto :goto_0

    .line 111
    :cond_1
    new-instance v0, Lcm/aptoide/pt/v8engine/repository/exception/RepositoryIllegalArgumentException;

    invoke-static {p1}, Lcm/aptoide/pt/dataprovider/ws/v3/V3;->getErrorMessage(Lcm/aptoide/pt/model/v3/BaseV3Response;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcm/aptoide/pt/v8engine/repository/exception/RepositoryIllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lrx/d;->a(Ljava/lang/Throwable;)Lrx/d;

    move-result-object v0

    goto :goto_0
.end method
