.class public Lcm/aptoide/pt/v8engine/repository/sync/SyncAdapterBackgroundSync;
.super Ljava/lang/Object;
.source "SyncAdapterBackgroundSync.java"


# instance fields
.field private final accountManager:Landroid/accounts/AccountManager;

.field private final configuration:Lcm/aptoide/pt/preferences/AptoidePreferencesConfiguration;

.field private final syncDataConverter:Lcm/aptoide/pt/v8engine/repository/sync/SyncDataConverter;


# direct methods
.method public constructor <init>(Lcm/aptoide/pt/preferences/AptoidePreferencesConfiguration;Landroid/accounts/AccountManager;Lcm/aptoide/pt/v8engine/repository/sync/SyncDataConverter;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcm/aptoide/pt/v8engine/repository/sync/SyncAdapterBackgroundSync;->configuration:Lcm/aptoide/pt/preferences/AptoidePreferencesConfiguration;

    .line 36
    iput-object p2, p0, Lcm/aptoide/pt/v8engine/repository/sync/SyncAdapterBackgroundSync;->accountManager:Landroid/accounts/AccountManager;

    .line 37
    iput-object p3, p0, Lcm/aptoide/pt/v8engine/repository/sync/SyncAdapterBackgroundSync;->syncDataConverter:Lcm/aptoide/pt/v8engine/repository/sync/SyncDataConverter;

    .line 38
    return-void
.end method

.method private getAccount()Landroid/accounts/Account;
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/repository/sync/SyncAdapterBackgroundSync;->accountManager:Landroid/accounts/AccountManager;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/repository/sync/SyncAdapterBackgroundSync;->configuration:Lcm/aptoide/pt/preferences/AptoidePreferencesConfiguration;

    invoke-interface {v1}, Lcm/aptoide/pt/preferences/AptoidePreferencesConfiguration;->getAccountType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 60
    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    .line 61
    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0

    .line 63
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "User not logged in. Can\'t sync."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private sync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Lrx/a;
    .locals 1

    .prologue
    .line 67
    new-instance v0, Lcm/aptoide/pt/v8engine/repository/sync/SyncAdapterBackgroundSync$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcm/aptoide/pt/v8engine/repository/sync/SyncAdapterBackgroundSync$1;-><init>(Lcm/aptoide/pt/v8engine/repository/sync/SyncAdapterBackgroundSync;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-static {v0}, Lrx/d;->a(Lrx/d$a;)Lrx/d;

    move-result-object v0

    .line 84
    invoke-virtual {v0}, Lrx/d;->c()Lrx/a;

    move-result-object v0

    return-object v0
.end method

.method private sync(Landroid/os/Bundle;)Lrx/a;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 48
    const-string v0, "expedited"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 49
    const-string v0, "force"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 50
    const-string v0, "ignore_backoff"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 52
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/repository/sync/SyncAdapterBackgroundSync;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    .line 53
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/repository/sync/SyncAdapterBackgroundSync;->configuration:Lcm/aptoide/pt/preferences/AptoidePreferencesConfiguration;

    invoke-interface {v1}, Lcm/aptoide/pt/preferences/AptoidePreferencesConfiguration;->getContentAuthority()Ljava/lang/String;

    move-result-object v1

    .line 54
    invoke-static {v0, v1, v2}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V

    .line 55
    invoke-direct {p0, v0, v1, p1}, Lcm/aptoide/pt/v8engine/repository/sync/SyncAdapterBackgroundSync;->sync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Lrx/a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public syncAuthorizations(Ljava/util/List;)Lrx/a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lrx/a;"
        }
    .end annotation

    .prologue
    .line 41
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 42
    const-string v1, "cm.aptoide.pt.v8engine.repository.sync.EXTRA_PAYMENT_AUTHORIZATIONS"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 43
    const-string v1, "cm.aptoide.pt.v8engine.repository.sync.PAYMENT_IDS"

    iget-object v2, p0, Lcm/aptoide/pt/v8engine/repository/sync/SyncAdapterBackgroundSync;->syncDataConverter:Lcm/aptoide/pt/v8engine/repository/sync/SyncDataConverter;

    invoke-virtual {v2, p1}, Lcm/aptoide/pt/v8engine/repository/sync/SyncDataConverter;->toString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    invoke-direct {p0, v0}, Lcm/aptoide/pt/v8engine/repository/sync/SyncAdapterBackgroundSync;->sync(Landroid/os/Bundle;)Lrx/a;

    move-result-object v0

    return-object v0
.end method

.method public syncConfirmation(Lcm/aptoide/pt/v8engine/payment/products/AptoideProduct;)Lrx/a;
    .locals 3

    .prologue
    .line 88
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/repository/sync/SyncAdapterBackgroundSync;->syncDataConverter:Lcm/aptoide/pt/v8engine/repository/sync/SyncDataConverter;

    invoke-virtual {v0, p1}, Lcm/aptoide/pt/v8engine/repository/sync/SyncDataConverter;->toBundle(Lcm/aptoide/pt/v8engine/payment/products/AptoideProduct;)Landroid/os/Bundle;

    move-result-object v0

    .line 89
    const-string v1, "cm.aptoide.pt.v8engine.repository.sync.EXTRA_PAYMENT_CONFIRMATIONS"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 90
    invoke-direct {p0, v0}, Lcm/aptoide/pt/v8engine/repository/sync/SyncAdapterBackgroundSync;->sync(Landroid/os/Bundle;)Lrx/a;

    move-result-object v0

    return-object v0
.end method

.method public syncConfirmation(Lcm/aptoide/pt/v8engine/payment/products/AptoideProduct;ILjava/lang/String;)Lrx/a;
    .locals 4

    .prologue
    .line 95
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/repository/sync/SyncAdapterBackgroundSync;->syncDataConverter:Lcm/aptoide/pt/v8engine/repository/sync/SyncDataConverter;

    invoke-virtual {v0, p1}, Lcm/aptoide/pt/v8engine/repository/sync/SyncDataConverter;->toBundle(Lcm/aptoide/pt/v8engine/payment/products/AptoideProduct;)Landroid/os/Bundle;

    move-result-object v0

    .line 96
    const-string v1, "cm.aptoide.pt.v8engine.repository.sync.EXTRA_PAYMENT_CONFIRMATIONS"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 97
    const-string v1, "cm.aptoide.pt.v8engine.repository.sync.PAYMENT_CONFIRMATION_ID"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const-string v1, "cm.aptoide.pt.v8engine.repository.sync.PAYMENT_IDS"

    iget-object v2, p0, Lcm/aptoide/pt/v8engine/repository/sync/SyncAdapterBackgroundSync;->syncDataConverter:Lcm/aptoide/pt/v8engine/repository/sync/SyncDataConverter;

    .line 99
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcm/aptoide/pt/v8engine/repository/sync/SyncDataConverter;->toString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    .line 98
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    invoke-direct {p0, v0}, Lcm/aptoide/pt/v8engine/repository/sync/SyncAdapterBackgroundSync;->sync(Landroid/os/Bundle;)Lrx/a;

    move-result-object v0

    return-object v0
.end method
