.class public Lcm/aptoide/pt/v8engine/repository/sync/AptoideSyncService;
.super Landroid/app/Service;
.source "AptoideSyncService.java"


# static fields
.field private static final lock:Ljava/lang/Object;

.field private static syncAdapter:Lcm/aptoide/pt/v8engine/repository/sync/AptoideSyncAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcm/aptoide/pt/v8engine/repository/sync/AptoideSyncService;->lock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcm/aptoide/pt/v8engine/repository/sync/AptoideSyncService;->syncAdapter:Lcm/aptoide/pt/v8engine/repository/sync/AptoideSyncAdapter;

    invoke-virtual {v0}, Lcm/aptoide/pt/v8engine/repository/sync/AptoideSyncAdapter;->getSyncAdapterBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .locals 11

    .prologue
    .line 29
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 30
    sget-object v10, Lcm/aptoide/pt/v8engine/repository/sync/AptoideSyncService;->lock:Ljava/lang/Object;

    monitor-enter v10

    .line 31
    :try_start_0
    sget-object v0, Lcm/aptoide/pt/v8engine/repository/sync/AptoideSyncService;->syncAdapter:Lcm/aptoide/pt/v8engine/repository/sync/AptoideSyncAdapter;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Lcm/aptoide/pt/v8engine/repository/sync/AptoideSyncAdapter;

    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/repository/sync/AptoideSyncService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    new-instance v4, Lcm/aptoide/pt/v8engine/repository/PaymentConfirmationFactory;

    invoke-direct {v4}, Lcm/aptoide/pt/v8engine/repository/PaymentConfirmationFactory;-><init>()V

    new-instance v5, Lcm/aptoide/pt/v8engine/repository/PaymentAuthorizationFactory;

    invoke-direct {v5, p0}, Lcm/aptoide/pt/v8engine/repository/PaymentAuthorizationFactory;-><init>(Landroid/content/Context;)V

    new-instance v6, Lcm/aptoide/pt/v8engine/repository/sync/SyncDataConverter;

    invoke-direct {v6}, Lcm/aptoide/pt/v8engine/repository/sync/SyncDataConverter;-><init>()V

    new-instance v7, Lcm/aptoide/pt/dataprovider/NetworkOperatorManager;

    .line 35
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/repository/sync/AptoideSyncService;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "phone"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/telephony/TelephonyManager;

    invoke-direct {v7, v8}, Lcm/aptoide/pt/dataprovider/NetworkOperatorManager;-><init>(Landroid/telephony/TelephonyManager;)V

    const-class v8, Lcm/aptoide/pt/database/realm/PaymentConfirmation;

    .line 36
    invoke-static {v8}, Lcm/aptoide/pt/database/accessors/AccessorFactory;->getAccessorFor(Ljava/lang/Class;)Lcm/aptoide/pt/database/accessors/Accessor;

    move-result-object v8

    check-cast v8, Lcm/aptoide/pt/database/accessors/PaymentConfirmationAccessor;

    const-class v9, Lcm/aptoide/pt/database/realm/PaymentAuthorization;

    .line 37
    invoke-static {v9}, Lcm/aptoide/pt/database/accessors/AccessorFactory;->getAccessorFor(Ljava/lang/Class;)Lcm/aptoide/pt/database/accessors/Accessor;

    move-result-object v9

    check-cast v9, Lcm/aptoide/pt/database/accessors/PaymentAuthorizationAccessor;

    invoke-direct/range {v0 .. v9}, Lcm/aptoide/pt/v8engine/repository/sync/AptoideSyncAdapter;-><init>(Landroid/content/Context;ZZLcm/aptoide/pt/v8engine/repository/PaymentConfirmationFactory;Lcm/aptoide/pt/v8engine/repository/PaymentAuthorizationFactory;Lcm/aptoide/pt/v8engine/repository/sync/SyncDataConverter;Lcm/aptoide/pt/dataprovider/NetworkOperatorManager;Lcm/aptoide/pt/database/accessors/PaymentConfirmationAccessor;Lcm/aptoide/pt/database/accessors/PaymentAuthorizationAccessor;)V

    sput-object v0, Lcm/aptoide/pt/v8engine/repository/sync/AptoideSyncService;->syncAdapter:Lcm/aptoide/pt/v8engine/repository/sync/AptoideSyncAdapter;

    .line 39
    :cond_0
    monitor-exit v10

    .line 40
    return-void

    .line 39
    :catchall_0
    move-exception v0

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
