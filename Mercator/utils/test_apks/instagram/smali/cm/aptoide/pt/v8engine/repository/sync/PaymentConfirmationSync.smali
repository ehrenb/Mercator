.class public Lcm/aptoide/pt/v8engine/repository/sync/PaymentConfirmationSync;
.super Lcm/aptoide/pt/v8engine/repository/sync/RepositorySync;
.source "PaymentConfirmationSync.java"


# instance fields
.field private final confirmationAccessor:Lcm/aptoide/pt/database/accessors/PaymentConfirmationAccessor;

.field private final confirmationFactory:Lcm/aptoide/pt/v8engine/repository/PaymentConfirmationFactory;

.field private final operatorManager:Lcm/aptoide/pt/dataprovider/NetworkOperatorManager;

.field private paymentConfirmationId:Ljava/lang/String;

.field private final paymentConfirmationRepository:Lcm/aptoide/pt/v8engine/repository/PaymentConfirmationRepository;

.field private paymentId:I

.field private final product:Lcm/aptoide/pt/v8engine/payment/Product;


# direct methods
.method public constructor <init>(Lcm/aptoide/pt/v8engine/repository/PaymentConfirmationRepository;Lcm/aptoide/pt/v8engine/payment/Product;Lcm/aptoide/pt/dataprovider/NetworkOperatorManager;Lcm/aptoide/pt/database/accessors/PaymentConfirmationAccessor;Lcm/aptoide/pt/v8engine/repository/PaymentConfirmationFactory;)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/repository/sync/RepositorySync;-><init>()V

    .line 60
    iput-object p1, p0, Lcm/aptoide/pt/v8engine/repository/sync/PaymentConfirmationSync;->paymentConfirmationRepository:Lcm/aptoide/pt/v8engine/repository/PaymentConfirmationRepository;

    .line 61
    iput-object p2, p0, Lcm/aptoide/pt/v8engine/repository/sync/PaymentConfirmationSync;->product:Lcm/aptoide/pt/v8engine/payment/Product;

    .line 62
    iput-object p3, p0, Lcm/aptoide/pt/v8engine/repository/sync/PaymentConfirmationSync;->operatorManager:Lcm/aptoide/pt/dataprovider/NetworkOperatorManager;

    .line 63
    iput-object p4, p0, Lcm/aptoide/pt/v8engine/repository/sync/PaymentConfirmationSync;->confirmationAccessor:Lcm/aptoide/pt/database/accessors/PaymentConfirmationAccessor;

    .line 64
    iput-object p5, p0, Lcm/aptoide/pt/v8engine/repository/sync/PaymentConfirmationSync;->confirmationFactory:Lcm/aptoide/pt/v8engine/repository/PaymentConfirmationFactory;

    .line 65
    return-void
.end method

.method public constructor <init>(Lcm/aptoide/pt/v8engine/repository/PaymentConfirmationRepository;Lcm/aptoide/pt/v8engine/payment/Product;Lcm/aptoide/pt/dataprovider/NetworkOperatorManager;Lcm/aptoide/pt/database/accessors/PaymentConfirmationAccessor;Lcm/aptoide/pt/v8engine/repository/PaymentConfirmationFactory;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/repository/sync/RepositorySync;-><init>()V

    .line 47
    iput-object p1, p0, Lcm/aptoide/pt/v8engine/repository/sync/PaymentConfirmationSync;->paymentConfirmationRepository:Lcm/aptoide/pt/v8engine/repository/PaymentConfirmationRepository;

    .line 48
    iput-object p2, p0, Lcm/aptoide/pt/v8engine/repository/sync/PaymentConfirmationSync;->product:Lcm/aptoide/pt/v8engine/payment/Product;

    .line 49
    iput-object p3, p0, Lcm/aptoide/pt/v8engine/repository/sync/PaymentConfirmationSync;->operatorManager:Lcm/aptoide/pt/dataprovider/NetworkOperatorManager;

    .line 50
    iput-object p4, p0, Lcm/aptoide/pt/v8engine/repository/sync/PaymentConfirmationSync;->confirmationAccessor:Lcm/aptoide/pt/database/accessors/PaymentConfirmationAccessor;

    .line 51
    iput-object p5, p0, Lcm/aptoide/pt/v8engine/repository/sync/PaymentConfirmationSync;->confirmationFactory:Lcm/aptoide/pt/v8engine/repository/PaymentConfirmationFactory;

    .line 52
    iput-object p6, p0, Lcm/aptoide/pt/v8engine/repository/sync/PaymentConfirmationSync;->paymentConfirmationId:Ljava/lang/String;

    .line 53
    iput p7, p0, Lcm/aptoide/pt/v8engine/repository/sync/PaymentConfirmationSync;->paymentId:I

    .line 54
    return-void
.end method

.method private createServerPaymentConfirmation(Lcm/aptoide/pt/v8engine/payment/Product;Ljava/lang/String;ILjava/lang/String;)Lrx/a;
    .locals 2

    .prologue
    .line 94
    instance-of v0, p1, Lcm/aptoide/pt/v8engine/payment/products/InAppBillingProduct;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lrx/h;->a(Ljava/lang/Object;)Lrx/h;

    move-result-object v0

    invoke-static {p0, p1, p3, p4, p2}, Lcm/aptoide/pt/v8engine/repository/sync/PaymentConfirmationSync$$Lambda$4;->lambdaFactory$(Lcm/aptoide/pt/v8engine/repository/sync/PaymentConfirmationSync;Lcm/aptoide/pt/v8engine/payment/Product;ILjava/lang/String;Ljava/lang/String;)Lrx/b/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/h;->a(Lrx/b/e;)Lrx/h;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/v8engine/repository/sync/PaymentConfirmationSync$$Lambda$5;->lambdaFactory$()Lrx/b/e;

    move-result-object v1

    .line 104
    invoke-virtual {v0, v1}, Lrx/h;->c(Lrx/b/e;)Lrx/a;

    move-result-object v0

    return-object v0
.end method

.method private getServerPaymentConfirmation(Lcm/aptoide/pt/v8engine/payment/Product;Ljava/lang/String;Ljava/lang/String;)Lrx/h;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcm/aptoide/pt/v8engine/payment/Product;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lrx/h",
            "<",
            "Lcm/aptoide/pt/v8engine/payment/PaymentConfirmation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 115
    instance-of v0, p1, Lcm/aptoide/pt/v8engine/payment/products/InAppBillingProduct;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lrx/h;->a(Ljava/lang/Object;)Lrx/h;

    move-result-object v0

    invoke-static {p0, p1, p3}, Lcm/aptoide/pt/v8engine/repository/sync/PaymentConfirmationSync$$Lambda$6;->lambdaFactory$(Lcm/aptoide/pt/v8engine/repository/sync/PaymentConfirmationSync;Lcm/aptoide/pt/v8engine/payment/Product;Ljava/lang/String;)Lrx/b/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/h;->a(Lrx/b/e;)Lrx/h;

    move-result-object v0

    invoke-static {p0, p1, p2}, Lcm/aptoide/pt/v8engine/repository/sync/PaymentConfirmationSync$$Lambda$7;->lambdaFactory$(Lcm/aptoide/pt/v8engine/repository/sync/PaymentConfirmationSync;Lcm/aptoide/pt/v8engine/payment/Product;Ljava/lang/String;)Lrx/b/e;

    move-result-object v1

    .line 126
    invoke-virtual {v0, v1}, Lrx/h;->a(Lrx/b/e;)Lrx/h;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$createServerPaymentConfirmation$4(Lcm/aptoide/pt/model/v3/BaseV3Response;)Lrx/a;
    .locals 2

    .prologue
    .line 105
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v3/BaseV3Response;->isOk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    invoke-static {}, Lrx/a;->a()Lrx/a;

    move-result-object v0

    .line 108
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcm/aptoide/pt/v8engine/repository/exception/RepositoryIllegalArgumentException;

    .line 109
    invoke-static {p0}, Lcm/aptoide/pt/dataprovider/ws/v3/V3;->getErrorMessage(Lcm/aptoide/pt/model/v3/BaseV3Response;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcm/aptoide/pt/v8engine/repository/exception/RepositoryIllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 108
    invoke-static {v0}, Lrx/a;->a(Ljava/lang/Throwable;)Lrx/a;

    move-result-object v0

    goto :goto_0
.end method

.method private saveAndRescheduleOnNetworkError(Landroid/content/SyncResult;Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 146
    instance-of v0, p2, Ljava/io/IOException;

    if-eqz v0, :cond_0

    .line 147
    invoke-virtual {p0, p1}, Lcm/aptoide/pt/v8engine/repository/sync/PaymentConfirmationSync;->rescheduleSync(Landroid/content/SyncResult;)V

    .line 153
    :goto_0
    return-void

    .line 149
    :cond_0
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/repository/sync/PaymentConfirmationSync;->confirmationAccessor:Lcm/aptoide/pt/database/accessors/PaymentConfirmationAccessor;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/repository/sync/PaymentConfirmationSync;->confirmationFactory:Lcm/aptoide/pt/v8engine/repository/PaymentConfirmationFactory;

    iget-object v2, p0, Lcm/aptoide/pt/v8engine/repository/sync/PaymentConfirmationSync;->confirmationFactory:Lcm/aptoide/pt/v8engine/repository/PaymentConfirmationFactory;

    iget-object v3, p0, Lcm/aptoide/pt/v8engine/repository/sync/PaymentConfirmationSync;->product:Lcm/aptoide/pt/v8engine/payment/Product;

    .line 150
    invoke-interface {v3}, Lcm/aptoide/pt/v8engine/payment/Product;->getId()I

    move-result v3

    iget-object v4, p0, Lcm/aptoide/pt/v8engine/repository/sync/PaymentConfirmationSync;->paymentConfirmationId:Ljava/lang/String;

    sget-object v5, Lcm/aptoide/pt/v8engine/payment/PaymentConfirmation$Status;->UNKNOWN_ERROR:Lcm/aptoide/pt/v8engine/payment/PaymentConfirmation$Status;

    invoke-virtual {v2, v3, v4, v5, p3}, Lcm/aptoide/pt/v8engine/repository/PaymentConfirmationFactory;->create(ILjava/lang/String;Lcm/aptoide/pt/v8engine/payment/PaymentConfirmation$Status;Ljava/lang/String;)Lcm/aptoide/pt/v8engine/payment/PaymentConfirmation;

    move-result-object v2

    .line 149
    invoke-virtual {v1, v2}, Lcm/aptoide/pt/v8engine/repository/PaymentConfirmationFactory;->convertToDatabasePaymentConfirmation(Lcm/aptoide/pt/v8engine/payment/PaymentConfirmation;)Lcm/aptoide/pt/database/realm/PaymentConfirmation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcm/aptoide/pt/database/accessors/PaymentConfirmationAccessor;->save(Lcm/aptoide/pt/database/realm/PaymentConfirmation;)V

    goto :goto_0
.end method

.method private saveAndReschedulePendingConfirmation(Lcm/aptoide/pt/v8engine/payment/PaymentConfirmation;Landroid/content/SyncResult;)V
    .locals 2

    .prologue
    .line 137
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/repository/sync/PaymentConfirmationSync;->confirmationAccessor:Lcm/aptoide/pt/database/accessors/PaymentConfirmationAccessor;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/repository/sync/PaymentConfirmationSync;->confirmationFactory:Lcm/aptoide/pt/v8engine/repository/PaymentConfirmationFactory;

    .line 138
    invoke-virtual {v1, p1}, Lcm/aptoide/pt/v8engine/repository/PaymentConfirmationFactory;->convertToDatabasePaymentConfirmation(Lcm/aptoide/pt/v8engine/payment/PaymentConfirmation;)Lcm/aptoide/pt/database/realm/PaymentConfirmation;

    move-result-object v1

    .line 137
    invoke-virtual {v0, v1}, Lcm/aptoide/pt/database/accessors/PaymentConfirmationAccessor;->save(Lcm/aptoide/pt/database/realm/PaymentConfirmation;)V

    .line 139
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/payment/PaymentConfirmation;->isPending()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    invoke-virtual {p0, p2}, Lcm/aptoide/pt/v8engine/repository/sync/PaymentConfirmationSync;->rescheduleSync(Landroid/content/SyncResult;)V

    .line 142
    :cond_0
    return-void
.end method


# virtual methods
.method synthetic lambda$createServerPaymentConfirmation$3(Lcm/aptoide/pt/v8engine/payment/Product;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Lrx/h;
    .locals 6

    .prologue
    .line 95
    invoke-virtual {p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    invoke-interface {p1}, Lcm/aptoide/pt/v8engine/payment/Product;->getId()I

    move-result v0

    iget-object v2, p0, Lcm/aptoide/pt/v8engine/repository/sync/PaymentConfirmationSync;->operatorManager:Lcm/aptoide/pt/dataprovider/NetworkOperatorManager;

    check-cast p1, Lcm/aptoide/pt/v8engine/payment/products/InAppBillingProduct;

    .line 97
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/payment/products/InAppBillingProduct;->getDeveloperPayload()Ljava/lang/String;

    move-result-object v3

    move v1, p2

    move-object v4, p3

    move-object v5, p4

    .line 96
    invoke-static/range {v0 .. v5}, Lcm/aptoide/pt/dataprovider/ws/v3/CreatePaymentConfirmationRequest;->ofInApp(IILcm/aptoide/pt/dataprovider/NetworkOperatorManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v3/CreatePaymentConfirmationRequest;

    move-result-object v0

    .line 98
    invoke-virtual {v0}, Lcm/aptoide/pt/dataprovider/ws/v3/CreatePaymentConfirmationRequest;->observe()Lrx/d;

    move-result-object v0

    invoke-virtual {v0}, Lrx/d;->b()Lrx/h;

    move-result-object v0

    .line 103
    :goto_0
    return-object v0

    .line 100
    :cond_0
    invoke-interface {p1}, Lcm/aptoide/pt/v8engine/payment/Product;->getId()I

    move-result v0

    iget-object v2, p0, Lcm/aptoide/pt/v8engine/repository/sync/PaymentConfirmationSync;->operatorManager:Lcm/aptoide/pt/dataprovider/NetworkOperatorManager;

    check-cast p1, Lcm/aptoide/pt/v8engine/payment/products/PaidAppProduct;

    .line 101
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/payment/products/PaidAppProduct;->getStoreName()Ljava/lang/String;

    move-result-object v3

    move v1, p2

    move-object v4, p3

    move-object v5, p4

    .line 100
    invoke-static/range {v0 .. v5}, Lcm/aptoide/pt/dataprovider/ws/v3/CreatePaymentConfirmationRequest;->ofPaidApp(IILcm/aptoide/pt/dataprovider/NetworkOperatorManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v3/CreatePaymentConfirmationRequest;

    move-result-object v0

    .line 102
    invoke-virtual {v0}, Lcm/aptoide/pt/dataprovider/ws/v3/CreatePaymentConfirmationRequest;->observe()Lrx/d;

    move-result-object v0

    .line 103
    invoke-virtual {v0}, Lrx/d;->b()Lrx/h;

    move-result-object v0

    goto :goto_0
.end method

.method synthetic lambda$getServerPaymentConfirmation$5(Lcm/aptoide/pt/v8engine/payment/Product;Ljava/lang/String;Ljava/lang/Boolean;)Lrx/h;
    .locals 3

    .prologue
    .line 116
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    invoke-interface {p1}, Lcm/aptoide/pt/v8engine/payment/Product;->getId()I

    move-result v0

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/repository/sync/PaymentConfirmationSync;->operatorManager:Lcm/aptoide/pt/dataprovider/NetworkOperatorManager;

    check-cast p1, Lcm/aptoide/pt/v8engine/payment/products/InAppBillingProduct;

    .line 118
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/payment/products/InAppBillingProduct;->getApiVersion()I

    move-result v2

    .line 117
    invoke-static {v0, v1, v2, p2}, Lcm/aptoide/pt/dataprovider/ws/v3/GetPaymentConfirmationRequest;->of(ILcm/aptoide/pt/dataprovider/NetworkOperatorManager;ILjava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v3/GetPaymentConfirmationRequest;

    move-result-object v0

    .line 119
    invoke-virtual {v0}, Lcm/aptoide/pt/dataprovider/ws/v3/GetPaymentConfirmationRequest;->observe()Lrx/d;

    move-result-object v0

    const-class v1, Lcm/aptoide/pt/model/v3/PaymentConfirmationResponse;

    .line 120
    invoke-virtual {v0, v1}, Lrx/d;->a(Ljava/lang/Class;)Lrx/d;

    move-result-object v0

    .line 121
    invoke-virtual {v0}, Lrx/d;->b()Lrx/h;

    move-result-object v0

    .line 125
    :goto_0
    return-object v0

    .line 123
    :cond_0
    invoke-interface {p1}, Lcm/aptoide/pt/v8engine/payment/Product;->getId()I

    move-result v0

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/repository/sync/PaymentConfirmationSync;->operatorManager:Lcm/aptoide/pt/dataprovider/NetworkOperatorManager;

    invoke-static {v0, v1, p2}, Lcm/aptoide/pt/dataprovider/ws/v3/GetPaymentConfirmationRequest;->of(ILcm/aptoide/pt/dataprovider/NetworkOperatorManager;Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v3/GetPaymentConfirmationRequest;

    move-result-object v0

    .line 124
    invoke-virtual {v0}, Lcm/aptoide/pt/dataprovider/ws/v3/GetPaymentConfirmationRequest;->observe()Lrx/d;

    move-result-object v0

    .line 125
    invoke-virtual {v0}, Lrx/d;->b()Lrx/h;

    move-result-object v0

    goto :goto_0
.end method

.method synthetic lambda$getServerPaymentConfirmation$6(Lcm/aptoide/pt/v8engine/payment/Product;Ljava/lang/String;Lcm/aptoide/pt/model/v3/PaymentConfirmationResponse;)Lrx/h;
    .locals 2

    .prologue
    .line 127
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcm/aptoide/pt/model/v3/PaymentConfirmationResponse;->isOk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/repository/sync/PaymentConfirmationSync;->confirmationFactory:Lcm/aptoide/pt/v8engine/repository/PaymentConfirmationFactory;

    .line 129
    invoke-interface {p1}, Lcm/aptoide/pt/v8engine/payment/Product;->getId()I

    move-result v1

    invoke-virtual {v0, v1, p3, p2}, Lcm/aptoide/pt/v8engine/repository/PaymentConfirmationFactory;->convertToPaymentConfirmation(ILcm/aptoide/pt/model/v3/PaymentConfirmationResponse;Ljava/lang/String;)Lcm/aptoide/pt/v8engine/payment/PaymentConfirmation;

    move-result-object v0

    .line 128
    invoke-static {v0}, Lrx/h;->a(Ljava/lang/Object;)Lrx/h;

    move-result-object v0

    .line 131
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcm/aptoide/pt/v8engine/repository/exception/RepositoryItemNotFoundException;

    invoke-static {p3}, Lcm/aptoide/pt/dataprovider/ws/v3/V3;->getErrorMessage(Lcm/aptoide/pt/model/v3/BaseV3Response;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcm/aptoide/pt/v8engine/repository/exception/RepositoryItemNotFoundException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lrx/h;->a(Ljava/lang/Throwable;)Lrx/h;

    move-result-object v0

    goto :goto_0
.end method

.method synthetic lambda$sync$0(Ljava/lang/String;)Lcm/aptoide/pt/v8engine/payment/PaymentConfirmation;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 76
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/repository/sync/PaymentConfirmationSync;->confirmationFactory:Lcm/aptoide/pt/v8engine/repository/PaymentConfirmationFactory;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/repository/sync/PaymentConfirmationSync;->product:Lcm/aptoide/pt/v8engine/payment/Product;

    invoke-interface {v1}, Lcm/aptoide/pt/v8engine/payment/Product;->getId()I

    move-result v1

    iget-object v2, p0, Lcm/aptoide/pt/v8engine/repository/sync/PaymentConfirmationSync;->paymentConfirmationId:Ljava/lang/String;

    sget-object v3, Lcm/aptoide/pt/v8engine/payment/PaymentConfirmation$Status;->COMPLETED:Lcm/aptoide/pt/v8engine/payment/PaymentConfirmation$Status;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcm/aptoide/pt/v8engine/repository/PaymentConfirmationFactory;->create(ILjava/lang/String;Lcm/aptoide/pt/v8engine/payment/PaymentConfirmation$Status;Ljava/lang/String;)Lcm/aptoide/pt/v8engine/payment/PaymentConfirmation;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$sync$1(Landroid/content/SyncResult;Lcm/aptoide/pt/v8engine/payment/PaymentConfirmation;)V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0, p2, p1}, Lcm/aptoide/pt/v8engine/repository/sync/PaymentConfirmationSync;->saveAndReschedulePendingConfirmation(Lcm/aptoide/pt/v8engine/payment/PaymentConfirmation;Landroid/content/SyncResult;)V

    return-void
.end method

.method synthetic lambda$sync$2(Landroid/content/SyncResult;Ljava/lang/String;Ljava/lang/Throwable;)Lcm/aptoide/pt/v8engine/payment/PaymentConfirmation;
    .locals 1

    .prologue
    .line 84
    invoke-direct {p0, p1, p3, p2}, Lcm/aptoide/pt/v8engine/repository/sync/PaymentConfirmationSync;->saveAndRescheduleOnNetworkError(Landroid/content/SyncResult;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 85
    const/4 v0, 0x0

    return-object v0
.end method

.method public sync(Landroid/content/SyncResult;)V
    .locals 5

    .prologue
    .line 69
    :try_start_0
    invoke-static {}, Lcm/aptoide/accountmanager/AptoideAccountManager;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    .line 70
    invoke-static {}, Lcm/aptoide/accountmanager/AptoideAccountManager;->getUserEmail()Ljava/lang/String;

    move-result-object v1

    .line 72
    iget-object v2, p0, Lcm/aptoide/pt/v8engine/repository/sync/PaymentConfirmationSync;->paymentConfirmationId:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 73
    iget-object v2, p0, Lcm/aptoide/pt/v8engine/repository/sync/PaymentConfirmationSync;->product:Lcm/aptoide/pt/v8engine/payment/Product;

    iget-object v3, p0, Lcm/aptoide/pt/v8engine/repository/sync/PaymentConfirmationSync;->paymentConfirmationId:Ljava/lang/String;

    iget v4, p0, Lcm/aptoide/pt/v8engine/repository/sync/PaymentConfirmationSync;->paymentId:I

    .line 74
    invoke-direct {p0, v2, v3, v4, v0}, Lcm/aptoide/pt/v8engine/repository/sync/PaymentConfirmationSync;->createServerPaymentConfirmation(Lcm/aptoide/pt/v8engine/payment/Product;Ljava/lang/String;ILjava/lang/String;)Lrx/a;

    move-result-object v0

    invoke-static {p0, v1}, Lcm/aptoide/pt/v8engine/repository/sync/PaymentConfirmationSync$$Lambda$1;->lambdaFactory$(Lcm/aptoide/pt/v8engine/repository/sync/PaymentConfirmationSync;Ljava/lang/String;)Ljava/util/concurrent/Callable;

    move-result-object v2

    .line 75
    invoke-static {v2}, Lrx/h;->a(Ljava/util/concurrent/Callable;)Lrx/h;

    move-result-object v2

    invoke-virtual {v0, v2}, Lrx/a;->b(Lrx/h;)Lrx/h;

    move-result-object v0

    .line 81
    :goto_0
    invoke-static {p0, p1}, Lcm/aptoide/pt/v8engine/repository/sync/PaymentConfirmationSync$$Lambda$2;->lambdaFactory$(Lcm/aptoide/pt/v8engine/repository/sync/PaymentConfirmationSync;Landroid/content/SyncResult;)Lrx/b/b;

    move-result-object v2

    invoke-virtual {v0, v2}, Lrx/h;->a(Lrx/b/b;)Lrx/h;

    move-result-object v0

    invoke-static {p0, p1, v1}, Lcm/aptoide/pt/v8engine/repository/sync/PaymentConfirmationSync$$Lambda$3;->lambdaFactory$(Lcm/aptoide/pt/v8engine/repository/sync/PaymentConfirmationSync;Landroid/content/SyncResult;Ljava/lang/String;)Lrx/b/e;

    move-result-object v1

    .line 83
    invoke-virtual {v0, v1}, Lrx/h;->e(Lrx/b/e;)Lrx/h;

    move-result-object v0

    .line 86
    invoke-virtual {v0}, Lrx/h;->b()Lrx/h/a;

    move-result-object v0

    invoke-virtual {v0}, Lrx/h/a;->a()Ljava/lang/Object;

    .line 90
    :goto_1
    return-void

    .line 79
    :cond_0
    iget-object v2, p0, Lcm/aptoide/pt/v8engine/repository/sync/PaymentConfirmationSync;->product:Lcm/aptoide/pt/v8engine/payment/Product;

    invoke-direct {p0, v2, v1, v0}, Lcm/aptoide/pt/v8engine/repository/sync/PaymentConfirmationSync;->getServerPaymentConfirmation(Lcm/aptoide/pt/v8engine/payment/Product;Ljava/lang/String;Ljava/lang/String;)Lrx/h;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 87
    :catch_0
    move-exception v0

    .line 88
    invoke-virtual {p0, p1}, Lcm/aptoide/pt/v8engine/repository/sync/PaymentConfirmationSync;->rescheduleSync(Landroid/content/SyncResult;)V

    goto :goto_1
.end method
