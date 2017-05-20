.class public Lcm/aptoide/pt/v8engine/repository/PaymentAuthorizationRepository;
.super Ljava/lang/Object;
.source "PaymentAuthorizationRepository.java"

# interfaces
.implements Lcm/aptoide/pt/v8engine/repository/Repository;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcm/aptoide/pt/v8engine/repository/Repository",
        "<",
        "Lcm/aptoide/pt/v8engine/payment/Authorization;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private final authorizationFactory:Lcm/aptoide/pt/v8engine/repository/PaymentAuthorizationFactory;

.field private final authotizationAccessor:Lcm/aptoide/pt/database/accessors/PaymentAuthorizationAccessor;

.field private final backgroundSync:Lcm/aptoide/pt/v8engine/repository/sync/SyncAdapterBackgroundSync;


# direct methods
.method constructor <init>(Lcm/aptoide/pt/database/accessors/PaymentAuthorizationAccessor;Lcm/aptoide/pt/v8engine/repository/sync/SyncAdapterBackgroundSync;Lcm/aptoide/pt/v8engine/repository/PaymentAuthorizationFactory;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcm/aptoide/pt/v8engine/repository/PaymentAuthorizationRepository;->authotizationAccessor:Lcm/aptoide/pt/database/accessors/PaymentAuthorizationAccessor;

    .line 29
    iput-object p2, p0, Lcm/aptoide/pt/v8engine/repository/PaymentAuthorizationRepository;->backgroundSync:Lcm/aptoide/pt/v8engine/repository/sync/SyncAdapterBackgroundSync;

    .line 30
    iput-object p3, p0, Lcm/aptoide/pt/v8engine/repository/PaymentAuthorizationRepository;->authorizationFactory:Lcm/aptoide/pt/v8engine/repository/PaymentAuthorizationFactory;

    .line 31
    return-void
.end method

.method static synthetic lambda$createPaymentAuthorization$0(Lcm/aptoide/pt/model/v3/BaseV3Response;)Lrx/d;
    .locals 2

    .prologue
    .line 37
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v3/BaseV3Response;->isOk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    const/4 v0, 0x0

    invoke-static {v0}, Lrx/d;->a(Ljava/lang/Object;)Lrx/d;

    move-result-object v0

    .line 40
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcm/aptoide/pt/v8engine/repository/exception/RepositoryIllegalArgumentException;

    .line 41
    invoke-static {p0}, Lcm/aptoide/pt/dataprovider/ws/v3/V3;->getErrorMessage(Lcm/aptoide/pt/model/v3/BaseV3Response;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcm/aptoide/pt/v8engine/repository/exception/RepositoryIllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 40
    invoke-static {v0}, Lrx/d;->a(Ljava/lang/Throwable;)Lrx/d;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic lambda$getPaymentAuthorization$1(Ljava/util/List;)Ljava/lang/Iterable;
    .locals 0

    .prologue
    .line 56
    return-object p0
.end method

.method static synthetic lambda$getPaymentAuthorization$2(ILcm/aptoide/pt/v8engine/payment/Authorization;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 57
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/payment/Authorization;->getPaymentId()I

    move-result v0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic lambda$syncAuthorizations$5(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private syncAuthorizations(Ljava/util/List;)Lrx/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lrx/a;"
        }
    .end annotation

    .prologue
    .line 71
    invoke-static {p1}, Lrx/d;->a(Ljava/lang/Iterable;)Lrx/d;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/v8engine/repository/PaymentAuthorizationRepository$$Lambda$5;->lambdaFactory$()Lrx/b/e;

    move-result-object v1

    .line 72
    invoke-virtual {v0, v1}, Lrx/d;->g(Lrx/b/e;)Lrx/d;

    move-result-object v0

    .line 73
    invoke-virtual {v0}, Lrx/d;->p()Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/repository/PaymentAuthorizationRepository$$Lambda$6;->lambdaFactory$(Lcm/aptoide/pt/v8engine/repository/PaymentAuthorizationRepository;)Lrx/b/e;

    move-result-object v1

    .line 74
    invoke-virtual {v0, v1}, Lrx/d;->e(Lrx/b/e;)Lrx/d;

    move-result-object v0

    .line 75
    invoke-virtual {v0}, Lrx/d;->c()Lrx/a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public createPaymentAuthorization(I)Lrx/a;
    .locals 2

    .prologue
    .line 34
    invoke-static {}, Lcm/aptoide/accountmanager/AptoideAccountManager;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcm/aptoide/pt/dataprovider/ws/v3/CreatePaymentAuthorizationRequest;->of(Ljava/lang/String;I)Lcm/aptoide/pt/dataprovider/ws/v3/CreatePaymentAuthorizationRequest;

    move-result-object v0

    .line 35
    invoke-virtual {v0}, Lcm/aptoide/pt/dataprovider/ws/v3/CreatePaymentAuthorizationRequest;->observe()Lrx/d;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/v8engine/repository/PaymentAuthorizationRepository$$Lambda$1;->lambdaFactory$()Lrx/b/e;

    move-result-object v1

    .line 36
    invoke-virtual {v0, v1}, Lrx/d;->e(Lrx/b/e;)Lrx/d;

    move-result-object v0

    .line 43
    invoke-virtual {v0}, Lrx/d;->c()Lrx/a;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Integer;)Lrx/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")",
            "Lrx/d",
            "<",
            "Lcm/aptoide/pt/v8engine/payment/Authorization;",
            ">;"
        }
    .end annotation

    .prologue
    .line 51
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Lrx/d;
    .locals 1

    .prologue
    .line 20
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcm/aptoide/pt/v8engine/repository/PaymentAuthorizationRepository;->get(Ljava/lang/Integer;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public getPaymentAuthorization(ILjava/lang/String;)Lrx/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Lrx/d",
            "<",
            "Lcm/aptoide/pt/v8engine/payment/Authorization;",
            ">;"
        }
    .end annotation

    .prologue
    .line 55
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcm/aptoide/pt/v8engine/repository/PaymentAuthorizationRepository;->getPaymentAuthorizations(Ljava/util/List;Ljava/lang/String;)Lrx/d;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/v8engine/repository/PaymentAuthorizationRepository$$Lambda$2;->lambdaFactory$()Lrx/b/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->f(Lrx/b/e;)Lrx/d;

    move-result-object v0

    invoke-static {p1}, Lcm/aptoide/pt/v8engine/repository/PaymentAuthorizationRepository$$Lambda$3;->lambdaFactory$(I)Lrx/b/e;

    move-result-object v1

    .line 57
    invoke-virtual {v0, v1}, Lrx/d;->c(Lrx/b/e;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public getPaymentAuthorizations(Ljava/util/List;Ljava/lang/String;)Lrx/d;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lrx/d",
            "<",
            "Ljava/util/List",
            "<",
            "Lcm/aptoide/pt/v8engine/payment/Authorization;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcm/aptoide/pt/v8engine/repository/PaymentAuthorizationRepository;->syncAuthorizations(Ljava/util/List;)Lrx/a;

    move-result-object v0

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/repository/PaymentAuthorizationRepository;->authotizationAccessor:Lcm/aptoide/pt/database/accessors/PaymentAuthorizationAccessor;

    .line 63
    invoke-virtual {v1, p2}, Lcm/aptoide/pt/database/accessors/PaymentAuthorizationAccessor;->getPaymentAuthorizations(Ljava/lang/String;)Lrx/d;

    move-result-object v1

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/repository/PaymentAuthorizationRepository$$Lambda$4;->lambdaFactory$(Lcm/aptoide/pt/v8engine/repository/PaymentAuthorizationRepository;)Lrx/b/e;

    move-result-object v2

    .line 64
    invoke-virtual {v1, v2}, Lrx/d;->e(Lrx/b/e;)Lrx/d;

    move-result-object v1

    .line 62
    invoke-virtual {v0, v1}, Lrx/a;->b(Lrx/d;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$getPaymentAuthorizations$4(Ljava/util/List;)Lrx/d;
    .locals 2

    .prologue
    .line 64
    invoke-static {p1}, Lrx/d;->a(Ljava/lang/Iterable;)Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/repository/PaymentAuthorizationRepository$$Lambda$8;->lambdaFactory$(Lcm/aptoide/pt/v8engine/repository/PaymentAuthorizationRepository;)Lrx/b/e;

    move-result-object v1

    .line 65
    invoke-virtual {v0, v1}, Lrx/d;->g(Lrx/b/e;)Lrx/d;

    move-result-object v0

    .line 67
    invoke-virtual {v0}, Lrx/d;->p()Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$null$3(Lcm/aptoide/pt/database/realm/PaymentAuthorization;)Lcm/aptoide/pt/v8engine/payment/Authorization;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/repository/PaymentAuthorizationRepository;->authorizationFactory:Lcm/aptoide/pt/v8engine/repository/PaymentAuthorizationFactory;

    invoke-virtual {v0, p1}, Lcm/aptoide/pt/v8engine/repository/PaymentAuthorizationFactory;->convertToPaymentAuthorization(Lcm/aptoide/pt/database/realm/PaymentAuthorization;)Lcm/aptoide/pt/v8engine/payment/Authorization;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$saveAuthorization$7(Lcm/aptoide/pt/v8engine/payment/Authorization;)V
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/repository/PaymentAuthorizationRepository;->authotizationAccessor:Lcm/aptoide/pt/database/accessors/PaymentAuthorizationAccessor;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/repository/PaymentAuthorizationRepository;->authorizationFactory:Lcm/aptoide/pt/v8engine/repository/PaymentAuthorizationFactory;

    .line 80
    invoke-virtual {v1, p1}, Lcm/aptoide/pt/v8engine/repository/PaymentAuthorizationFactory;->convertToDatabasePaymentAuthorization(Lcm/aptoide/pt/v8engine/payment/Authorization;)Lcm/aptoide/pt/database/realm/PaymentAuthorization;

    move-result-object v1

    .line 79
    invoke-virtual {v0, v1}, Lcm/aptoide/pt/database/accessors/PaymentAuthorizationAccessor;->save(Lcm/aptoide/pt/database/realm/PaymentAuthorization;)V

    return-void
.end method

.method synthetic lambda$syncAuthorizations$6(Ljava/util/List;)Lrx/d;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/repository/PaymentAuthorizationRepository;->backgroundSync:Lcm/aptoide/pt/v8engine/repository/sync/SyncAdapterBackgroundSync;

    invoke-virtual {v0, p1}, Lcm/aptoide/pt/v8engine/repository/sync/SyncAdapterBackgroundSync;->syncAuthorizations(Ljava/util/List;)Lrx/a;

    move-result-object v0

    invoke-virtual {v0}, Lrx/a;->b()Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public save(Lcm/aptoide/pt/v8engine/payment/Authorization;)V
    .locals 0

    .prologue
    .line 48
    return-void
.end method

.method public bridge synthetic save(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 20
    check-cast p1, Lcm/aptoide/pt/v8engine/payment/Authorization;

    invoke-virtual {p0, p1}, Lcm/aptoide/pt/v8engine/repository/PaymentAuthorizationRepository;->save(Lcm/aptoide/pt/v8engine/payment/Authorization;)V

    return-void
.end method

.method public saveAuthorization(Lcm/aptoide/pt/v8engine/payment/Authorization;)Lrx/a;
    .locals 2

    .prologue
    .line 79
    invoke-static {p0, p1}, Lcm/aptoide/pt/v8engine/repository/PaymentAuthorizationRepository$$Lambda$7;->lambdaFactory$(Lcm/aptoide/pt/v8engine/repository/PaymentAuthorizationRepository;Lcm/aptoide/pt/v8engine/payment/Authorization;)Lrx/b/a;

    move-result-object v0

    invoke-static {v0}, Lrx/a;->a(Lrx/b/a;)Lrx/a;

    move-result-object v0

    .line 81
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/payment/Authorization;->getPaymentId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1}, Lcm/aptoide/pt/v8engine/repository/PaymentAuthorizationRepository;->syncAuthorizations(Ljava/util/List;)Lrx/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/a;->a(Lrx/a;)Lrx/a;

    move-result-object v0

    return-object v0
.end method
