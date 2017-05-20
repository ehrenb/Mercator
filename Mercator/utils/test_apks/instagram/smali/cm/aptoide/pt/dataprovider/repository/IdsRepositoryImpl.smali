.class public Lcm/aptoide/pt/dataprovider/repository/IdsRepositoryImpl;
.super Ljava/lang/Object;
.source "IdsRepositoryImpl.java"

# interfaces
.implements Lcm/aptoide/pt/dataprovider/repository/IdsRepository;
.implements Lcm/aptoide/pt/interfaces/AptoideClientUUID;


# static fields
.field private static final ADVERTISING_ID_CLIENT:Ljava/lang/String; = "advertisingIdClient"

.field private static final ANDROID_ID_CLIENT:Ljava/lang/String; = "androidId"

.field private static final APTOIDE_CLIENT_UUID:Ljava/lang/String; = "aptoide_client_uuid"

.field private static final GOOGLE_ADVERTISING_ID_CLIENT:Ljava/lang/String; = "googleAdvertisingId"

.field private static final GOOGLE_ADVERTISING_ID_CLIENT_SET:Ljava/lang/String; = "googleAdvertisingIdSet"


# instance fields
.field private final context:Landroid/content/Context;

.field private final deviceId:Ljava/lang/String;

.field private final sharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/SharedPreferences;Landroid/content/Context;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcm/aptoide/pt/dataprovider/repository/IdsRepositoryImpl;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 46
    iput-object p2, p0, Lcm/aptoide/pt/dataprovider/repository/IdsRepositoryImpl;->context:Landroid/content/Context;

    .line 47
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/dataprovider/repository/IdsRepositoryImpl;->deviceId:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/SharedPreferences;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcm/aptoide/pt/dataprovider/repository/IdsRepositoryImpl;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 37
    iput-object p2, p0, Lcm/aptoide/pt/dataprovider/repository/IdsRepositoryImpl;->context:Landroid/content/Context;

    .line 38
    iput-object p3, p0, Lcm/aptoide/pt/dataprovider/repository/IdsRepositoryImpl;->deviceId:Ljava/lang/String;

    .line 39
    return-void
.end method

.method private generateRandomAdvertisingId()Ljava/lang/String;
    .locals 6

    .prologue
    .line 130
    const/16 v0, 0x10

    new-array v1, v0, [B

    .line 131
    iget-object v0, p0, Lcm/aptoide/pt/dataprovider/repository/IdsRepositoryImpl;->deviceId:Ljava/lang/String;

    .line 133
    if-nez v0, :cond_0

    .line 134
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 137
    :cond_0
    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    .line 138
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    int-to-long v4, v0

    invoke-virtual {v2, v4, v5}, Ljava/security/SecureRandom;->setSeed(J)V

    .line 139
    invoke-virtual {v2, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 140
    invoke-static {v1}, Ljava/util/UUID;->nameUUIDFromBytes([B)Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public declared-synchronized getAdvertisingId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 95
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcm/aptoide/pt/dataprovider/repository/IdsRepositoryImpl;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "advertisingIdClient"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 96
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .line 110
    :goto_0
    monitor-exit p0

    return-object v0

    .line 102
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/repository/IdsRepositoryImpl;->getGoogleAdvertisingId()Ljava/lang/String;

    move-result-object v0

    .line 103
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 105
    invoke-direct {p0}, Lcm/aptoide/pt/dataprovider/repository/IdsRepositoryImpl;->generateRandomAdvertisingId()Ljava/lang/String;

    move-result-object v0

    .line 109
    :cond_1
    iget-object v1, p0, Lcm/aptoide/pt/dataprovider/repository/IdsRepositoryImpl;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "advertisingIdClient"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 95
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAndroidId()Ljava/lang/String;
    .locals 4

    .prologue
    .line 114
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcm/aptoide/pt/dataprovider/repository/IdsRepositoryImpl;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "androidId"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 115
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .line 126
    :goto_0
    monitor-exit p0

    return-object v0

    .line 120
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcm/aptoide/pt/dataprovider/repository/IdsRepositoryImpl;->deviceId:Ljava/lang/String;

    .line 121
    iget-object v1, p0, Lcm/aptoide/pt/dataprovider/repository/IdsRepositoryImpl;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "androidId"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 122
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Android ID already set!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 114
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 125
    :cond_1
    :try_start_2
    iget-object v1, p0, Lcm/aptoide/pt/dataprovider/repository/IdsRepositoryImpl;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "androidId"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized getGoogleAdvertisingId()Ljava/lang/String;
    .locals 4

    .prologue
    .line 76
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcm/aptoide/pt/dataprovider/repository/IdsRepositoryImpl;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "googleAdvertisingId"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 77
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .line 91
    :goto_0
    monitor-exit p0

    return-object v0

    .line 81
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcm/aptoide/pt/dataprovider/repository/IdsRepositoryImpl;->context:Landroid/content/Context;

    invoke-static {v1}, Lcm/aptoide/pt/dataprovider/util/DataproviderUtils$AdNetworksUtils;->isGooglePlayServicesAvailable(Landroid/content/Context;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    .line 83
    :try_start_2
    iget-object v1, p0, Lcm/aptoide/pt/dataprovider/repository/IdsRepositoryImpl;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    .line 89
    :cond_1
    :goto_1
    :try_start_3
    iget-object v1, p0, Lcm/aptoide/pt/dataprovider/repository/IdsRepositoryImpl;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "googleAdvertisingId"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 90
    iget-object v1, p0, Lcm/aptoide/pt/dataprovider/repository/IdsRepositoryImpl;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "googleAdvertisingIdSet"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 76
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 84
    :catch_0
    move-exception v1

    .line 85
    :try_start_4
    invoke-static {}, Lcm/aptoide/pt/crashreports/CrashReport;->getInstance()Lcm/aptoide/pt/crashreports/CrashReport;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcm/aptoide/pt/crashreports/CrashReport;->log(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public declared-synchronized getUniqueIdentifier()Ljava/lang/String;
    .locals 3

    .prologue
    .line 51
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcm/aptoide/pt/dataprovider/repository/IdsRepositoryImpl;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "aptoide_client_uuid"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 52
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .line 72
    :goto_0
    monitor-exit p0

    return-object v0

    .line 59
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/repository/IdsRepositoryImpl;->getGoogleAdvertisingId()Ljava/lang/String;

    move-result-object v0

    .line 62
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 63
    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/repository/IdsRepositoryImpl;->getAndroidId()Ljava/lang/String;

    move-result-object v0

    .line 67
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 68
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 71
    :cond_2
    iget-object v1, p0, Lcm/aptoide/pt/dataprovider/repository/IdsRepositoryImpl;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "aptoide_client_uuid"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 51
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
