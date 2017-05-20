.class public Lcm/aptoide/pt/v8engine/repository/sync/PaymentAuthorizationSync;
.super Lcm/aptoide/pt/v8engine/repository/sync/RepositorySync;
.source "PaymentAuthorizationSync.java"


# instance fields
.field private final authorizationAccessor:Lcm/aptoide/pt/database/accessors/PaymentAuthorizationAccessor;

.field private final authorizationFactory:Lcm/aptoide/pt/v8engine/repository/PaymentAuthorizationFactory;

.field private final paymentIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Lcm/aptoide/pt/database/accessors/PaymentAuthorizationAccessor;Lcm/aptoide/pt/v8engine/repository/PaymentAuthorizationFactory;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcm/aptoide/pt/database/accessors/PaymentAuthorizationAccessor;",
            "Lcm/aptoide/pt/v8engine/repository/PaymentAuthorizationFactory;",
            ")V"
        }
    .end annotation

    .prologue
    .line 34
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/repository/sync/RepositorySync;-><init>()V

    .line 35
    iput-object p1, p0, Lcm/aptoide/pt/v8engine/repository/sync/PaymentAuthorizationSync;->paymentIds:Ljava/util/List;

    .line 36
    iput-object p2, p0, Lcm/aptoide/pt/v8engine/repository/sync/PaymentAuthorizationSync;->authorizationAccessor:Lcm/aptoide/pt/database/accessors/PaymentAuthorizationAccessor;

    .line 37
    iput-object p3, p0, Lcm/aptoide/pt/v8engine/repository/sync/PaymentAuthorizationSync;->authorizationFactory:Lcm/aptoide/pt/v8engine/repository/PaymentAuthorizationFactory;

    .line 38
    return-void
.end method

.method private getServerAuthorizations(Ljava/lang/String;)Lrx/h;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lrx/h",
            "<",
            "Ljava/util/List",
            "<",
            "Lcm/aptoide/pt/model/v3/PaymentAuthorizationsResponse$PaymentAuthorizationResponse;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 57
    invoke-static {p1}, Lcm/aptoide/pt/dataprovider/ws/v3/GetPaymentAuthorizationsRequest;->of(Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v3/GetPaymentAuthorizationsRequest;

    move-result-object v0

    .line 58
    invoke-virtual {v0}, Lcm/aptoide/pt/dataprovider/ws/v3/GetPaymentAuthorizationsRequest;->observe()Lrx/d;

    move-result-object v0

    .line 59
    invoke-virtual {v0}, Lrx/d;->b()Lrx/h;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/v8engine/repository/sync/PaymentAuthorizationSync$$Lambda$3;->lambdaFactory$()Lrx/b/e;

    move-result-object v1

    .line 60
    invoke-virtual {v0, v1}, Lrx/h;->a(Lrx/b/e;)Lrx/h;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$getServerAuthorizations$2(Lcm/aptoide/pt/model/v3/PaymentAuthorizationsResponse;)Lrx/h;
    .locals 2

    .prologue
    .line 61
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v3/PaymentAuthorizationsResponse;->isOk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v3/PaymentAuthorizationsResponse;->getAuthorizations()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lrx/h;->a(Ljava/lang/Object;)Lrx/h;

    move-result-object v0

    .line 64
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcm/aptoide/pt/v8engine/repository/exception/RepositoryItemNotFoundException;

    invoke-static {p0}, Lcm/aptoide/pt/dataprovider/ws/v3/V3;->getErrorMessage(Lcm/aptoide/pt/model/v3/BaseV3Response;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcm/aptoide/pt/v8engine/repository/exception/RepositoryItemNotFoundException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lrx/h;->a(Ljava/lang/Throwable;)Lrx/h;

    move-result-object v0

    goto :goto_0
.end method

.method private saveAndRescheduleOnNetworkError(Landroid/content/SyncResult;Ljava/lang/Throwable;Ljava/util/List;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/SyncResult;",
            "Ljava/lang/Throwable;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 89
    instance-of v0, p2, Ljava/io/IOException;

    if-eqz v0, :cond_0

    .line 90
    invoke-virtual {p0, p1}, Lcm/aptoide/pt/v8engine/repository/sync/PaymentAuthorizationSync;->rescheduleSync(Landroid/content/SyncResult;)V

    .line 100
    :goto_0
    return-void

    .line 92
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 93
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 94
    iget-object v3, p0, Lcm/aptoide/pt/v8engine/repository/sync/PaymentAuthorizationSync;->authorizationFactory:Lcm/aptoide/pt/v8engine/repository/PaymentAuthorizationFactory;

    iget-object v4, p0, Lcm/aptoide/pt/v8engine/repository/sync/PaymentAuthorizationSync;->authorizationFactory:Lcm/aptoide/pt/v8engine/repository/PaymentAuthorizationFactory;

    .line 95
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v5, Lcm/aptoide/pt/v8engine/payment/Authorization$Status;->UNKNOWN_ERROR:Lcm/aptoide/pt/v8engine/payment/Authorization$Status;

    invoke-virtual {v4, v0, v5, p4}, Lcm/aptoide/pt/v8engine/repository/PaymentAuthorizationFactory;->create(ILcm/aptoide/pt/v8engine/payment/Authorization$Status;Ljava/lang/String;)Lcm/aptoide/pt/v8engine/payment/Authorization;

    move-result-object v0

    .line 94
    invoke-virtual {v3, v0}, Lcm/aptoide/pt/v8engine/repository/PaymentAuthorizationFactory;->convertToDatabasePaymentAuthorization(Lcm/aptoide/pt/v8engine/payment/Authorization;)Lcm/aptoide/pt/database/realm/PaymentAuthorization;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 98
    :cond_1
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/repository/sync/PaymentAuthorizationSync;->authorizationAccessor:Lcm/aptoide/pt/database/accessors/PaymentAuthorizationAccessor;

    invoke-virtual {v0, v1}, Lcm/aptoide/pt/database/accessors/PaymentAuthorizationAccessor;->updateAll(Ljava/util/List;)V

    goto :goto_0
.end method

.method private saveAndReschedulePendingAuthorization(Ljava/util/List;Landroid/content/SyncResult;Ljava/util/List;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcm/aptoide/pt/model/v3/PaymentAuthorizationsResponse$PaymentAuthorizationResponse;",
            ">;",
            "Landroid/content/SyncResult;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 72
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 74
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/model/v3/PaymentAuthorizationsResponse$PaymentAuthorizationResponse;

    .line 75
    iget-object v3, p0, Lcm/aptoide/pt/v8engine/repository/sync/PaymentAuthorizationSync;->authorizationFactory:Lcm/aptoide/pt/v8engine/repository/PaymentAuthorizationFactory;

    .line 76
    invoke-virtual {v3, v0, p4}, Lcm/aptoide/pt/v8engine/repository/PaymentAuthorizationFactory;->convertToPaymentAuthorization(Lcm/aptoide/pt/model/v3/PaymentAuthorizationsResponse$PaymentAuthorizationResponse;Ljava/lang/String;)Lcm/aptoide/pt/v8engine/payment/Authorization;

    move-result-object v3

    .line 77
    iget-object v4, p0, Lcm/aptoide/pt/v8engine/repository/sync/PaymentAuthorizationSync;->authorizationFactory:Lcm/aptoide/pt/v8engine/repository/PaymentAuthorizationFactory;

    .line 78
    invoke-virtual {v4, v0, p4}, Lcm/aptoide/pt/v8engine/repository/PaymentAuthorizationFactory;->convertToDatabasePaymentAuthorization(Lcm/aptoide/pt/model/v3/PaymentAuthorizationsResponse$PaymentAuthorizationResponse;Ljava/lang/String;)Lcm/aptoide/pt/database/realm/PaymentAuthorization;

    move-result-object v0

    .line 77
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    invoke-virtual {v3}, Lcm/aptoide/pt/v8engine/payment/Authorization;->isPending()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v3}, Lcm/aptoide/pt/v8engine/payment/Authorization;->isInitiated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    :cond_1
    invoke-virtual {p0, p2}, Lcm/aptoide/pt/v8engine/repository/sync/PaymentAuthorizationSync;->rescheduleSync(Landroid/content/SyncResult;)V

    goto :goto_0

    .line 84
    :cond_2
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/repository/sync/PaymentAuthorizationSync;->authorizationAccessor:Lcm/aptoide/pt/database/accessors/PaymentAuthorizationAccessor;

    invoke-virtual {v0, v1}, Lcm/aptoide/pt/database/accessors/PaymentAuthorizationAccessor;->updateAll(Ljava/util/List;)V

    .line 85
    return-void
.end method


# virtual methods
.method synthetic lambda$sync$0(Landroid/content/SyncResult;Ljava/lang/String;Ljava/util/List;)V
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/repository/sync/PaymentAuthorizationSync;->paymentIds:Ljava/util/List;

    invoke-direct {p0, p3, p1, v0, p2}, Lcm/aptoide/pt/v8engine/repository/sync/PaymentAuthorizationSync;->saveAndReschedulePendingAuthorization(Ljava/util/List;Landroid/content/SyncResult;Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$sync$1(Landroid/content/SyncResult;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/util/List;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/repository/sync/PaymentAuthorizationSync;->paymentIds:Ljava/util/List;

    invoke-direct {p0, p1, p3, v0, p2}, Lcm/aptoide/pt/v8engine/repository/sync/PaymentAuthorizationSync;->saveAndRescheduleOnNetworkError(Landroid/content/SyncResult;Ljava/lang/Throwable;Ljava/util/List;Ljava/lang/String;)V

    .line 48
    const/4 v0, 0x0

    return-object v0
.end method

.method public sync(Landroid/content/SyncResult;)V
    .locals 3

    .prologue
    .line 42
    :try_start_0
    invoke-static {}, Lcm/aptoide/accountmanager/AptoideAccountManager;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    .line 43
    invoke-static {}, Lcm/aptoide/accountmanager/AptoideAccountManager;->getUserEmail()Ljava/lang/String;

    move-result-object v1

    .line 44
    invoke-direct {p0, v0}, Lcm/aptoide/pt/v8engine/repository/sync/PaymentAuthorizationSync;->getServerAuthorizations(Ljava/lang/String;)Lrx/h;

    move-result-object v0

    invoke-static {p0, p1, v1}, Lcm/aptoide/pt/v8engine/repository/sync/PaymentAuthorizationSync$$Lambda$1;->lambdaFactory$(Lcm/aptoide/pt/v8engine/repository/sync/PaymentAuthorizationSync;Landroid/content/SyncResult;Ljava/lang/String;)Lrx/b/b;

    move-result-object v2

    invoke-virtual {v0, v2}, Lrx/h;->a(Lrx/b/b;)Lrx/h;

    move-result-object v0

    invoke-static {p0, p1, v1}, Lcm/aptoide/pt/v8engine/repository/sync/PaymentAuthorizationSync$$Lambda$2;->lambdaFactory$(Lcm/aptoide/pt/v8engine/repository/sync/PaymentAuthorizationSync;Landroid/content/SyncResult;Ljava/lang/String;)Lrx/b/e;

    move-result-object v1

    .line 46
    invoke-virtual {v0, v1}, Lrx/h;->e(Lrx/b/e;)Lrx/h;

    move-result-object v0

    .line 49
    invoke-virtual {v0}, Lrx/h;->b()Lrx/h/a;

    move-result-object v0

    invoke-virtual {v0}, Lrx/h/a;->a()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    :goto_0
    return-void

    .line 50
    :catch_0
    move-exception v0

    .line 51
    invoke-virtual {p0, p1}, Lcm/aptoide/pt/v8engine/repository/sync/PaymentAuthorizationSync;->rescheduleSync(Landroid/content/SyncResult;)V

    goto :goto_0
.end method
