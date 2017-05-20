.class public Lcm/aptoide/pt/v8engine/repository/sync/AptoideSyncAdapter;
.super Landroid/content/AbstractThreadedSyncAdapter;
.source "AptoideSyncAdapter.java"


# static fields
.field public static final EXTRA_PAYMENT_AUTHORIZATIONS:Ljava/lang/String; = "cm.aptoide.pt.v8engine.repository.sync.EXTRA_PAYMENT_AUTHORIZATIONS"

.field public static final EXTRA_PAYMENT_CONFIRMATIONS:Ljava/lang/String; = "cm.aptoide.pt.v8engine.repository.sync.EXTRA_PAYMENT_CONFIRMATIONS"

.field public static final EXTRA_PAYMENT_CONFIRMATION_ID:Ljava/lang/String; = "cm.aptoide.pt.v8engine.repository.sync.PAYMENT_CONFIRMATION_ID"

.field public static final EXTRA_PAYMENT_IDS:Ljava/lang/String; = "cm.aptoide.pt.v8engine.repository.sync.PAYMENT_IDS"


# instance fields
.field private final authorizationAcessor:Lcm/aptoide/pt/database/accessors/PaymentAuthorizationAccessor;

.field private final authorizationConverter:Lcm/aptoide/pt/v8engine/repository/PaymentAuthorizationFactory;

.field private final confirmationAccessor:Lcm/aptoide/pt/database/accessors/PaymentConfirmationAccessor;

.field private final confirmationConverter:Lcm/aptoide/pt/v8engine/repository/PaymentConfirmationFactory;

.field private final operatorManager:Lcm/aptoide/pt/dataprovider/NetworkOperatorManager;

.field private final productConverter:Lcm/aptoide/pt/v8engine/repository/sync/SyncDataConverter;


# direct methods
.method public constructor <init>(Landroid/content/Context;ZZLcm/aptoide/pt/v8engine/repository/PaymentConfirmationFactory;Lcm/aptoide/pt/v8engine/repository/PaymentAuthorizationFactory;Lcm/aptoide/pt/v8engine/repository/sync/SyncDataConverter;Lcm/aptoide/pt/dataprovider/NetworkOperatorManager;Lcm/aptoide/pt/database/accessors/PaymentConfirmationAccessor;Lcm/aptoide/pt/database/accessors/PaymentAuthorizationAccessor;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3}, Landroid/content/AbstractThreadedSyncAdapter;-><init>(Landroid/content/Context;ZZ)V

    .line 51
    iput-object p4, p0, Lcm/aptoide/pt/v8engine/repository/sync/AptoideSyncAdapter;->confirmationConverter:Lcm/aptoide/pt/v8engine/repository/PaymentConfirmationFactory;

    .line 52
    iput-object p5, p0, Lcm/aptoide/pt/v8engine/repository/sync/AptoideSyncAdapter;->authorizationConverter:Lcm/aptoide/pt/v8engine/repository/PaymentAuthorizationFactory;

    .line 53
    iput-object p6, p0, Lcm/aptoide/pt/v8engine/repository/sync/AptoideSyncAdapter;->productConverter:Lcm/aptoide/pt/v8engine/repository/sync/SyncDataConverter;

    .line 54
    iput-object p7, p0, Lcm/aptoide/pt/v8engine/repository/sync/AptoideSyncAdapter;->operatorManager:Lcm/aptoide/pt/dataprovider/NetworkOperatorManager;

    .line 55
    iput-object p8, p0, Lcm/aptoide/pt/v8engine/repository/sync/AptoideSyncAdapter;->confirmationAccessor:Lcm/aptoide/pt/database/accessors/PaymentConfirmationAccessor;

    .line 56
    iput-object p9, p0, Lcm/aptoide/pt/v8engine/repository/sync/AptoideSyncAdapter;->authorizationAcessor:Lcm/aptoide/pt/database/accessors/PaymentAuthorizationAccessor;

    .line 57
    return-void
.end method


# virtual methods
.method public onPerformSync(Landroid/accounts/Account;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/ContentProviderClient;Landroid/content/SyncResult;)V
    .locals 9

    .prologue
    .line 61
    const-string v0, "cm.aptoide.pt.v8engine.repository.sync.EXTRA_PAYMENT_AUTHORIZATIONS"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 62
    const-string v1, "cm.aptoide.pt.v8engine.repository.sync.EXTRA_PAYMENT_CONFIRMATIONS"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 64
    iget-object v2, p0, Lcm/aptoide/pt/v8engine/repository/sync/AptoideSyncAdapter;->productConverter:Lcm/aptoide/pt/v8engine/repository/sync/SyncDataConverter;

    const-string v3, "cm.aptoide.pt.v8engine.repository.sync.PAYMENT_IDS"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcm/aptoide/pt/v8engine/repository/sync/SyncDataConverter;->toList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    .line 66
    if-eqz v1, :cond_2

    .line 67
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/repository/sync/AptoideSyncAdapter;->productConverter:Lcm/aptoide/pt/v8engine/repository/sync/SyncDataConverter;

    invoke-virtual {v0, p2}, Lcm/aptoide/pt/v8engine/repository/sync/SyncDataConverter;->toProduct(Landroid/os/Bundle;)Lcm/aptoide/pt/v8engine/payment/products/AptoideProduct;

    move-result-object v2

    .line 68
    const-string v0, "cm.aptoide.pt.v8engine.repository.sync.PAYMENT_CONFIRMATION_ID"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 70
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 71
    new-instance v0, Lcm/aptoide/pt/v8engine/repository/sync/PaymentConfirmationSync;

    .line 72
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/repository/sync/AptoideSyncAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lcm/aptoide/pt/v8engine/repository/RepositoryFactory;->getPaymentConfirmationRepository(Landroid/content/Context;Lcm/aptoide/pt/v8engine/payment/Product;)Lcm/aptoide/pt/v8engine/repository/PaymentConfirmationRepository;

    move-result-object v1

    iget-object v3, p0, Lcm/aptoide/pt/v8engine/repository/sync/AptoideSyncAdapter;->operatorManager:Lcm/aptoide/pt/dataprovider/NetworkOperatorManager;

    iget-object v4, p0, Lcm/aptoide/pt/v8engine/repository/sync/AptoideSyncAdapter;->confirmationAccessor:Lcm/aptoide/pt/database/accessors/PaymentConfirmationAccessor;

    iget-object v5, p0, Lcm/aptoide/pt/v8engine/repository/sync/AptoideSyncAdapter;->confirmationConverter:Lcm/aptoide/pt/v8engine/repository/PaymentConfirmationFactory;

    invoke-direct/range {v0 .. v5}, Lcm/aptoide/pt/v8engine/repository/sync/PaymentConfirmationSync;-><init>(Lcm/aptoide/pt/v8engine/repository/PaymentConfirmationRepository;Lcm/aptoide/pt/v8engine/payment/Product;Lcm/aptoide/pt/dataprovider/NetworkOperatorManager;Lcm/aptoide/pt/database/accessors/PaymentConfirmationAccessor;Lcm/aptoide/pt/v8engine/repository/PaymentConfirmationFactory;)V

    .line 73
    invoke-virtual {v0, p5}, Lcm/aptoide/pt/v8engine/repository/sync/PaymentConfirmationSync;->sync(Landroid/content/SyncResult;)V

    .line 84
    :cond_0
    :goto_0
    return-void

    .line 75
    :cond_1
    new-instance v0, Lcm/aptoide/pt/v8engine/repository/sync/PaymentConfirmationSync;

    .line 76
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/repository/sync/AptoideSyncAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lcm/aptoide/pt/v8engine/repository/RepositoryFactory;->getPaymentConfirmationRepository(Landroid/content/Context;Lcm/aptoide/pt/v8engine/payment/Product;)Lcm/aptoide/pt/v8engine/repository/PaymentConfirmationRepository;

    move-result-object v1

    iget-object v3, p0, Lcm/aptoide/pt/v8engine/repository/sync/AptoideSyncAdapter;->operatorManager:Lcm/aptoide/pt/dataprovider/NetworkOperatorManager;

    iget-object v4, p0, Lcm/aptoide/pt/v8engine/repository/sync/AptoideSyncAdapter;->confirmationAccessor:Lcm/aptoide/pt/database/accessors/PaymentConfirmationAccessor;

    iget-object v5, p0, Lcm/aptoide/pt/v8engine/repository/sync/AptoideSyncAdapter;->confirmationConverter:Lcm/aptoide/pt/v8engine/repository/PaymentConfirmationFactory;

    const/4 v8, 0x0

    .line 78
    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-direct/range {v0 .. v7}, Lcm/aptoide/pt/v8engine/repository/sync/PaymentConfirmationSync;-><init>(Lcm/aptoide/pt/v8engine/repository/PaymentConfirmationRepository;Lcm/aptoide/pt/v8engine/payment/Product;Lcm/aptoide/pt/dataprovider/NetworkOperatorManager;Lcm/aptoide/pt/database/accessors/PaymentConfirmationAccessor;Lcm/aptoide/pt/v8engine/repository/PaymentConfirmationFactory;Ljava/lang/String;I)V

    invoke-virtual {v0, p5}, Lcm/aptoide/pt/v8engine/repository/sync/PaymentConfirmationSync;->sync(Landroid/content/SyncResult;)V

    goto :goto_0

    .line 80
    :cond_2
    if-eqz v0, :cond_0

    .line 81
    new-instance v0, Lcm/aptoide/pt/v8engine/repository/sync/PaymentAuthorizationSync;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/repository/sync/AptoideSyncAdapter;->authorizationAcessor:Lcm/aptoide/pt/database/accessors/PaymentAuthorizationAccessor;

    iget-object v2, p0, Lcm/aptoide/pt/v8engine/repository/sync/AptoideSyncAdapter;->authorizationConverter:Lcm/aptoide/pt/v8engine/repository/PaymentAuthorizationFactory;

    invoke-direct {v0, v7, v1, v2}, Lcm/aptoide/pt/v8engine/repository/sync/PaymentAuthorizationSync;-><init>(Ljava/util/List;Lcm/aptoide/pt/database/accessors/PaymentAuthorizationAccessor;Lcm/aptoide/pt/v8engine/repository/PaymentAuthorizationFactory;)V

    invoke-virtual {v0, p5}, Lcm/aptoide/pt/v8engine/repository/sync/PaymentAuthorizationSync;->sync(Landroid/content/SyncResult;)V

    goto :goto_0
.end method
