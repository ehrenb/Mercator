.class public final Lcm/aptoide/pt/v8engine/repository/RepositoryFactory;
.super Ljava/lang/Object;
.source "RepositoryFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getBackgroundSync(Landroid/content/Context;)Lcm/aptoide/pt/v8engine/repository/sync/SyncAdapterBackgroundSync;
    .locals 4

    .prologue
    .line 95
    new-instance v1, Lcm/aptoide/pt/v8engine/repository/sync/SyncAdapterBackgroundSync;

    invoke-static {}, Lcm/aptoide/pt/preferences/Application;->getConfiguration()Lcm/aptoide/pt/preferences/AptoidePreferencesConfiguration;

    move-result-object v2

    const-string v0, "account"

    .line 96
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/AccountManager;

    new-instance v3, Lcm/aptoide/pt/v8engine/repository/sync/SyncDataConverter;

    invoke-direct {v3}, Lcm/aptoide/pt/v8engine/repository/sync/SyncDataConverter;-><init>()V

    invoke-direct {v1, v2, v0, v3}, Lcm/aptoide/pt/v8engine/repository/sync/SyncAdapterBackgroundSync;-><init>(Lcm/aptoide/pt/preferences/AptoidePreferencesConfiguration;Landroid/accounts/AccountManager;Lcm/aptoide/pt/v8engine/repository/sync/SyncDataConverter;)V

    return-object v1
.end method

.method public static getDownloadRepository()Lcm/aptoide/pt/v8engine/repository/DownloadRepository;
    .locals 2

    .prologue
    .line 59
    new-instance v1, Lcm/aptoide/pt/v8engine/repository/DownloadRepository;

    const-class v0, Lcm/aptoide/pt/database/realm/Download;

    invoke-static {v0}, Lcm/aptoide/pt/database/accessors/AccessorFactory;->getAccessorFor(Ljava/lang/Class;)Lcm/aptoide/pt/database/accessors/Accessor;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/database/accessors/DownloadAccessor;

    invoke-direct {v1, v0}, Lcm/aptoide/pt/v8engine/repository/DownloadRepository;-><init>(Lcm/aptoide/pt/database/accessors/DownloadAccessor;)V

    return-object v1
.end method

.method public static getInAppBillingRepository(Landroid/content/Context;)Lcm/aptoide/pt/v8engine/repository/InAppBillingRepository;
    .locals 3

    .prologue
    .line 107
    new-instance v1, Lcm/aptoide/pt/v8engine/repository/InAppBillingRepository;

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/repository/RepositoryFactory;->getNetworkOperatorManager(Landroid/content/Context;)Lcm/aptoide/pt/dataprovider/NetworkOperatorManager;

    move-result-object v2

    const-class v0, Lcm/aptoide/pt/database/realm/PaymentConfirmation;

    .line 108
    invoke-static {v0}, Lcm/aptoide/pt/database/accessors/AccessorFactory;->getAccessorFor(Ljava/lang/Class;)Lcm/aptoide/pt/database/accessors/Accessor;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/database/accessors/PaymentConfirmationAccessor;

    invoke-direct {v1, v2, v0}, Lcm/aptoide/pt/v8engine/repository/InAppBillingRepository;-><init>(Lcm/aptoide/pt/dataprovider/NetworkOperatorManager;Lcm/aptoide/pt/database/accessors/PaymentConfirmationAccessor;)V

    return-object v1
.end method

.method public static getInstalledRepository()Lcm/aptoide/pt/v8engine/repository/InstalledRepository;
    .locals 2

    .prologue
    .line 51
    new-instance v1, Lcm/aptoide/pt/v8engine/repository/InstalledRepository;

    const-class v0, Lcm/aptoide/pt/database/realm/Installed;

    invoke-static {v0}, Lcm/aptoide/pt/database/accessors/AccessorFactory;->getAccessorFor(Ljava/lang/Class;)Lcm/aptoide/pt/database/accessors/Accessor;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/database/accessors/InstalledAccessor;

    invoke-direct {v1, v0}, Lcm/aptoide/pt/v8engine/repository/InstalledRepository;-><init>(Lcm/aptoide/pt/database/accessors/InstalledAccessor;)V

    return-object v1
.end method

.method private static getNetworkOperatorManager(Landroid/content/Context;)Lcm/aptoide/pt/dataprovider/NetworkOperatorManager;
    .locals 2

    .prologue
    .line 77
    new-instance v1, Lcm/aptoide/pt/dataprovider/NetworkOperatorManager;

    const-string v0, "phone"

    .line 78
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-direct {v1, v0}, Lcm/aptoide/pt/dataprovider/NetworkOperatorManager;-><init>(Landroid/telephony/TelephonyManager;)V

    return-object v1
.end method

.method public static getPaymentAuthorizationRepository(Landroid/content/Context;)Lcm/aptoide/pt/v8engine/repository/PaymentAuthorizationRepository;
    .locals 4

    .prologue
    .line 101
    new-instance v1, Lcm/aptoide/pt/v8engine/repository/PaymentAuthorizationRepository;

    const-class v0, Lcm/aptoide/pt/database/realm/PaymentAuthorization;

    .line 102
    invoke-static {v0}, Lcm/aptoide/pt/database/accessors/AccessorFactory;->getAccessorFor(Ljava/lang/Class;)Lcm/aptoide/pt/database/accessors/Accessor;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/database/accessors/PaymentAuthorizationAccessor;

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/repository/RepositoryFactory;->getBackgroundSync(Landroid/content/Context;)Lcm/aptoide/pt/v8engine/repository/sync/SyncAdapterBackgroundSync;

    move-result-object v2

    new-instance v3, Lcm/aptoide/pt/v8engine/repository/PaymentAuthorizationFactory;

    invoke-direct {v3, p0}, Lcm/aptoide/pt/v8engine/repository/PaymentAuthorizationFactory;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, v0, v2, v3}, Lcm/aptoide/pt/v8engine/repository/PaymentAuthorizationRepository;-><init>(Lcm/aptoide/pt/database/accessors/PaymentAuthorizationAccessor;Lcm/aptoide/pt/v8engine/repository/sync/SyncAdapterBackgroundSync;Lcm/aptoide/pt/v8engine/repository/PaymentAuthorizationFactory;)V

    return-object v1
.end method

.method public static getPaymentConfirmationRepository(Landroid/content/Context;Lcm/aptoide/pt/v8engine/payment/Product;)Lcm/aptoide/pt/v8engine/repository/PaymentConfirmationRepository;
    .locals 6

    .prologue
    .line 83
    instance-of v0, p1, Lcm/aptoide/pt/v8engine/payment/products/InAppBillingProduct;

    if-eqz v0, :cond_0

    .line 84
    new-instance v0, Lcm/aptoide/pt/v8engine/repository/InAppPaymentConfirmationRepository;

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/repository/RepositoryFactory;->getNetworkOperatorManager(Landroid/content/Context;)Lcm/aptoide/pt/dataprovider/NetworkOperatorManager;

    move-result-object v1

    const-class v2, Lcm/aptoide/pt/database/realm/PaymentConfirmation;

    .line 85
    invoke-static {v2}, Lcm/aptoide/pt/database/accessors/AccessorFactory;->getAccessorFor(Ljava/lang/Class;)Lcm/aptoide/pt/database/accessors/Accessor;

    move-result-object v2

    check-cast v2, Lcm/aptoide/pt/database/accessors/PaymentConfirmationAccessor;

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/repository/RepositoryFactory;->getBackgroundSync(Landroid/content/Context;)Lcm/aptoide/pt/v8engine/repository/sync/SyncAdapterBackgroundSync;

    move-result-object v3

    new-instance v4, Lcm/aptoide/pt/v8engine/repository/PaymentConfirmationFactory;

    invoke-direct {v4}, Lcm/aptoide/pt/v8engine/repository/PaymentConfirmationFactory;-><init>()V

    move-object v5, p1

    check-cast v5, Lcm/aptoide/pt/v8engine/payment/products/InAppBillingProduct;

    invoke-direct/range {v0 .. v5}, Lcm/aptoide/pt/v8engine/repository/InAppPaymentConfirmationRepository;-><init>(Lcm/aptoide/pt/dataprovider/NetworkOperatorManager;Lcm/aptoide/pt/database/accessors/PaymentConfirmationAccessor;Lcm/aptoide/pt/v8engine/repository/sync/SyncAdapterBackgroundSync;Lcm/aptoide/pt/v8engine/repository/PaymentConfirmationFactory;Lcm/aptoide/pt/v8engine/payment/products/InAppBillingProduct;)V

    .line 89
    :goto_0
    return-object v0

    .line 88
    :cond_0
    new-instance v0, Lcm/aptoide/pt/v8engine/repository/PaidAppPaymentConfirmationRepository;

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/repository/RepositoryFactory;->getNetworkOperatorManager(Landroid/content/Context;)Lcm/aptoide/pt/dataprovider/NetworkOperatorManager;

    move-result-object v1

    const-class v2, Lcm/aptoide/pt/database/realm/PaymentConfirmation;

    .line 89
    invoke-static {v2}, Lcm/aptoide/pt/database/accessors/AccessorFactory;->getAccessorFor(Ljava/lang/Class;)Lcm/aptoide/pt/database/accessors/Accessor;

    move-result-object v2

    check-cast v2, Lcm/aptoide/pt/database/accessors/PaymentConfirmationAccessor;

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/repository/RepositoryFactory;->getBackgroundSync(Landroid/content/Context;)Lcm/aptoide/pt/v8engine/repository/sync/SyncAdapterBackgroundSync;

    move-result-object v3

    new-instance v4, Lcm/aptoide/pt/v8engine/repository/PaymentConfirmationFactory;

    invoke-direct {v4}, Lcm/aptoide/pt/v8engine/repository/PaymentConfirmationFactory;-><init>()V

    move-object v5, p1

    check-cast v5, Lcm/aptoide/pt/v8engine/payment/products/PaidAppProduct;

    invoke-direct/range {v0 .. v5}, Lcm/aptoide/pt/v8engine/repository/PaidAppPaymentConfirmationRepository;-><init>(Lcm/aptoide/pt/dataprovider/NetworkOperatorManager;Lcm/aptoide/pt/database/accessors/PaymentConfirmationAccessor;Lcm/aptoide/pt/v8engine/repository/sync/SyncAdapterBackgroundSync;Lcm/aptoide/pt/v8engine/repository/PaymentConfirmationFactory;Lcm/aptoide/pt/v8engine/payment/products/PaidAppProduct;)V

    goto :goto_0
.end method

.method public static getProductRepository(Landroid/content/Context;Lcm/aptoide/pt/v8engine/payment/products/AptoideProduct;)Lcm/aptoide/pt/v8engine/repository/ProductRepository;
    .locals 6

    .prologue
    .line 63
    new-instance v2, Lcm/aptoide/pt/v8engine/payment/PurchaseFactory;

    new-instance v0, Lcm/aptoide/pt/iab/InAppBillingSerializer;

    invoke-direct {v0}, Lcm/aptoide/pt/iab/InAppBillingSerializer;-><init>()V

    invoke-direct {v2, v0}, Lcm/aptoide/pt/v8engine/payment/PurchaseFactory;-><init>(Lcm/aptoide/pt/iab/InAppBillingSerializer;)V

    .line 64
    new-instance v3, Lcm/aptoide/pt/v8engine/payment/PaymentFactory;

    invoke-direct {v3, p0}, Lcm/aptoide/pt/v8engine/payment/PaymentFactory;-><init>(Landroid/content/Context;)V

    .line 65
    invoke-static {p0}, Lcm/aptoide/pt/v8engine/repository/RepositoryFactory;->getNetworkOperatorManager(Landroid/content/Context;)Lcm/aptoide/pt/dataprovider/NetworkOperatorManager;

    move-result-object v4

    .line 66
    instance-of v0, p1, Lcm/aptoide/pt/v8engine/payment/products/InAppBillingProduct;

    if-eqz v0, :cond_0

    .line 67
    new-instance v1, Lcm/aptoide/pt/v8engine/repository/InAppBillingProductRepository;

    new-instance v5, Lcm/aptoide/pt/v8engine/repository/InAppBillingRepository;

    const-class v0, Lcm/aptoide/pt/database/realm/PaymentConfirmation;

    .line 68
    invoke-static {v0}, Lcm/aptoide/pt/database/accessors/AccessorFactory;->getAccessorFor(Ljava/lang/Class;)Lcm/aptoide/pt/database/accessors/Accessor;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/database/accessors/PaymentConfirmationAccessor;

    invoke-direct {v5, v4, v0}, Lcm/aptoide/pt/v8engine/repository/InAppBillingRepository;-><init>(Lcm/aptoide/pt/dataprovider/NetworkOperatorManager;Lcm/aptoide/pt/database/accessors/PaymentConfirmationAccessor;)V

    invoke-direct {v1, v5, v2, v3}, Lcm/aptoide/pt/v8engine/repository/InAppBillingProductRepository;-><init>(Lcm/aptoide/pt/v8engine/repository/InAppBillingRepository;Lcm/aptoide/pt/v8engine/payment/PurchaseFactory;Lcm/aptoide/pt/v8engine/payment/PaymentFactory;)V

    move-object v0, v1

    .line 71
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcm/aptoide/pt/v8engine/repository/PaidAppProductRepository;

    new-instance v1, Lcm/aptoide/pt/v8engine/repository/AppRepository;

    invoke-direct {v1, v4}, Lcm/aptoide/pt/v8engine/repository/AppRepository;-><init>(Lcm/aptoide/pt/dataprovider/NetworkOperatorManager;)V

    invoke-direct {v0, v1, v2, v3}, Lcm/aptoide/pt/v8engine/repository/PaidAppProductRepository;-><init>(Lcm/aptoide/pt/v8engine/repository/AppRepository;Lcm/aptoide/pt/v8engine/payment/PurchaseFactory;Lcm/aptoide/pt/v8engine/payment/PaymentFactory;)V

    goto :goto_0
.end method

.method public static getRollbackRepository()Lcm/aptoide/pt/v8engine/repository/RollbackRepository;
    .locals 2

    .prologue
    .line 42
    new-instance v1, Lcm/aptoide/pt/v8engine/repository/RollbackRepository;

    const-class v0, Lcm/aptoide/pt/database/realm/Rollback;

    invoke-static {v0}, Lcm/aptoide/pt/database/accessors/AccessorFactory;->getAccessorFor(Ljava/lang/Class;)Lcm/aptoide/pt/database/accessors/Accessor;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/database/accessors/RollbackAccessor;

    invoke-direct {v1, v0}, Lcm/aptoide/pt/v8engine/repository/RollbackRepository;-><init>(Lcm/aptoide/pt/database/accessors/RollbackAccessor;)V

    return-object v1
.end method

.method public static getScheduledDownloadRepository()Lcm/aptoide/pt/v8engine/repository/ScheduledDownloadRepository;
    .locals 2

    .prologue
    .line 38
    new-instance v1, Lcm/aptoide/pt/v8engine/repository/ScheduledDownloadRepository;

    const-class v0, Lcm/aptoide/pt/database/realm/Scheduled;

    invoke-static {v0}, Lcm/aptoide/pt/database/accessors/AccessorFactory;->getAccessorFor(Ljava/lang/Class;)Lcm/aptoide/pt/database/accessors/Accessor;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/database/accessors/ScheduledAccessor;

    invoke-direct {v1, v0}, Lcm/aptoide/pt/v8engine/repository/ScheduledDownloadRepository;-><init>(Lcm/aptoide/pt/database/accessors/ScheduledAccessor;)V

    return-object v1
.end method

.method public static getStoreRepository()Lcm/aptoide/pt/v8engine/repository/StoreRepository;
    .locals 2

    .prologue
    .line 55
    new-instance v1, Lcm/aptoide/pt/v8engine/repository/StoreRepository;

    const-class v0, Lcm/aptoide/pt/database/realm/Store;

    invoke-static {v0}, Lcm/aptoide/pt/database/accessors/AccessorFactory;->getAccessorFor(Ljava/lang/Class;)Lcm/aptoide/pt/database/accessors/Accessor;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/database/accessors/StoreAccessor;

    invoke-direct {v1, v0}, Lcm/aptoide/pt/v8engine/repository/StoreRepository;-><init>(Lcm/aptoide/pt/database/accessors/StoreAccessor;)V

    return-object v1
.end method

.method public static getUpdateRepository()Lcm/aptoide/pt/v8engine/repository/UpdateRepository;
    .locals 3

    .prologue
    .line 46
    new-instance v2, Lcm/aptoide/pt/v8engine/repository/UpdateRepository;

    const-class v0, Lcm/aptoide/pt/database/realm/Update;

    invoke-static {v0}, Lcm/aptoide/pt/database/accessors/AccessorFactory;->getAccessorFor(Ljava/lang/Class;)Lcm/aptoide/pt/database/accessors/Accessor;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/database/accessors/UpdateAccessor;

    const-class v1, Lcm/aptoide/pt/database/realm/Store;

    .line 47
    invoke-static {v1}, Lcm/aptoide/pt/database/accessors/AccessorFactory;->getAccessorFor(Ljava/lang/Class;)Lcm/aptoide/pt/database/accessors/Accessor;

    move-result-object v1

    check-cast v1, Lcm/aptoide/pt/database/accessors/StoreAccessor;

    invoke-direct {v2, v0, v1}, Lcm/aptoide/pt/v8engine/repository/UpdateRepository;-><init>(Lcm/aptoide/pt/database/accessors/UpdateAccessor;Lcm/aptoide/pt/database/accessors/StoreAccessor;)V

    return-object v2
.end method
