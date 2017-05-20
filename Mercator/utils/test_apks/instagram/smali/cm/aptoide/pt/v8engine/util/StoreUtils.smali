.class public Lcm/aptoide/pt/v8engine/util/StoreUtils;
.super Ljava/lang/Object;
.source "StoreUtils.java"


# static fields
.field public static final PRIVATE_STORE_ERROR:Ljava/lang/String; = "STORE-3"

.field public static final PRIVATE_STORE_WRONG_CREDENTIALS:Ljava/lang/String; = "STORE-4"

.field private static aptoideClientUUID:Lcm/aptoide/pt/interfaces/AptoideClientUUID;

.field private static storeCredentialsProvider:Lcm/aptoide/pt/v8engine/util/StoreCredentialsProviderImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 41
    new-instance v0, Lcm/aptoide/pt/v8engine/util/StoreCredentialsProviderImpl;

    invoke-direct {v0}, Lcm/aptoide/pt/v8engine/util/StoreCredentialsProviderImpl;-><init>()V

    sput-object v0, Lcm/aptoide/pt/v8engine/util/StoreUtils;->storeCredentialsProvider:Lcm/aptoide/pt/v8engine/util/StoreCredentialsProviderImpl;

    .line 43
    new-instance v0, Lcm/aptoide/pt/dataprovider/repository/IdsRepositoryImpl;

    invoke-static {}, Lcm/aptoide/pt/preferences/secure/SecurePreferencesImplementation;->getInstance()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 44
    invoke-static {}, Lcm/aptoide/pt/dataprovider/DataProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcm/aptoide/pt/dataprovider/repository/IdsRepositoryImpl;-><init>(Landroid/content/SharedPreferences;Landroid/content/Context;)V

    sput-object v0, Lcm/aptoide/pt/v8engine/util/StoreUtils;->aptoideClientUUID:Lcm/aptoide/pt/interfaces/AptoideClientUUID;

    .line 45
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static formatRepoUri(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0x2f

    .line 139
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 141
    const-string v1, "http//"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 142
    const-string v1, "http//"

    const-string v2, "http://"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 145
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v3, :cond_1

    .line 146
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 147
    const-string v1, "Aptoide-ManageRepo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "repo uri: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcm/aptoide/pt/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    :cond_1
    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 150
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 151
    const-string v1, "Aptoide-ManageRepo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "repo uri: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcm/aptoide/pt/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    :cond_2
    return-object v0
.end method

.method public static getStoreCredentials(J)Lcm/aptoide/pt/dataprovider/ws/v7/BaseRequestWithStore$StoreCredentials;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 49
    sget-object v0, Lcm/aptoide/pt/v8engine/util/StoreUtils;->storeCredentialsProvider:Lcm/aptoide/pt/v8engine/util/StoreCredentialsProviderImpl;

    invoke-virtual {v0, p0, p1}, Lcm/aptoide/pt/v8engine/util/StoreCredentialsProviderImpl;->get(J)Lcm/aptoide/pt/dataprovider/ws/v7/BaseRequestWithStore$StoreCredentials;

    move-result-object v0

    return-object v0
.end method

.method public static getStoreCredentials(Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/BaseRequestWithStore$StoreCredentials;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 118
    sget-object v0, Lcm/aptoide/pt/v8engine/util/StoreUtils;->storeCredentialsProvider:Lcm/aptoide/pt/v8engine/util/StoreCredentialsProviderImpl;

    invoke-virtual {v0, p0}, Lcm/aptoide/pt/v8engine/util/StoreCredentialsProviderImpl;->get(Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/BaseRequestWithStore$StoreCredentials;

    move-result-object v0

    return-object v0
.end method

.method public static getStoreCredentialsFromUrl(Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/BaseRequestWithStore$StoreCredentials;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 54
    sget-object v0, Lcm/aptoide/pt/v8engine/util/StoreUtils;->storeCredentialsProvider:Lcm/aptoide/pt/v8engine/util/StoreCredentialsProviderImpl;

    invoke-virtual {v0, p0}, Lcm/aptoide/pt/v8engine/util/StoreCredentialsProviderImpl;->fromUrl(Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/BaseRequestWithStore$StoreCredentials;

    move-result-object v0

    return-object v0
.end method

.method public static getSubscribedStoresAuthMap()Lcm/aptoide/pt/networkclient/util/HashMapNotNull;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcm/aptoide/pt/networkclient/util/HashMapNotNull",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 170
    const-class v0, Lcm/aptoide/pt/database/realm/Store;

    invoke-static {v0}, Lcm/aptoide/pt/database/accessors/AccessorFactory;->getAccessorFor(Ljava/lang/Class;)Lcm/aptoide/pt/database/accessors/Accessor;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/database/accessors/StoreAccessor;

    .line 171
    new-instance v1, Lcm/aptoide/pt/networkclient/util/HashMapNotNull;

    invoke-direct {v1}, Lcm/aptoide/pt/networkclient/util/HashMapNotNull;-><init>()V

    .line 172
    invoke-virtual {v0}, Lcm/aptoide/pt/database/accessors/StoreAccessor;->getAll()Lrx/d;

    move-result-object v0

    invoke-virtual {v0}, Lrx/d;->o()Lrx/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lrx/d/a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 173
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/database/realm/Store;

    .line 174
    invoke-virtual {v0}, Lcm/aptoide/pt/database/realm/Store;->getPasswordSha1()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 175
    invoke-virtual {v0}, Lcm/aptoide/pt/database/realm/Store;->getStoreName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/util/LinkedList;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    .line 176
    invoke-virtual {v0}, Lcm/aptoide/pt/database/realm/Store;->getUsername()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-virtual {v0}, Lcm/aptoide/pt/database/realm/Store;->getPasswordSha1()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v6

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 175
    invoke-virtual {v1, v3, v4}, Lcm/aptoide/pt/networkclient/util/HashMapNotNull;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 179
    :cond_1
    invoke-virtual {v1}, Lcm/aptoide/pt/networkclient/util/HashMapNotNull;->size()I

    move-result v0

    if-lez v0, :cond_2

    move-object v0, v1

    :goto_1
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static getSubscribedStoresIds()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 159
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 160
    const-class v0, Lcm/aptoide/pt/database/realm/Store;

    invoke-static {v0}, Lcm/aptoide/pt/database/accessors/AccessorFactory;->getAccessorFor(Ljava/lang/Class;)Lcm/aptoide/pt/database/accessors/Accessor;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/database/accessors/StoreAccessor;

    .line 161
    invoke-virtual {v0}, Lcm/aptoide/pt/database/accessors/StoreAccessor;->getAll()Lrx/d;

    move-result-object v0

    invoke-virtual {v0}, Lrx/d;->o()Lrx/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lrx/d/a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 162
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/database/realm/Store;

    .line 163
    invoke-virtual {v0}, Lcm/aptoide/pt/database/realm/Store;->getStoreId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 166
    :cond_0
    return-object v1
.end method

.method private static isPrivateCredentialsSet(Lcm/aptoide/pt/dataprovider/ws/v7/store/GetStoreMetaRequest;)Z
    .locals 1

    .prologue
    .line 122
    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/store/GetStoreMetaRequest;->getBody()Lcm/aptoide/pt/dataprovider/ws/v7/AccessTokenBody;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/dataprovider/ws/v7/store/GetStoreMetaRequest$Body;

    invoke-virtual {v0}, Lcm/aptoide/pt/dataprovider/ws/v7/store/GetStoreMetaRequest$Body;->getStoreUser()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 123
    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/store/GetStoreMetaRequest;->getBody()Lcm/aptoide/pt/dataprovider/ws/v7/AccessTokenBody;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/dataprovider/ws/v7/store/GetStoreMetaRequest$Body;

    invoke-virtual {v0}, Lcm/aptoide/pt/dataprovider/ws/v7/store/GetStoreMetaRequest$Body;->getStorePassSha1()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSubscribedStore(Ljava/lang/String;)Lrx/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lrx/d",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 127
    const-class v0, Lcm/aptoide/pt/database/realm/Store;

    invoke-static {v0}, Lcm/aptoide/pt/database/accessors/AccessorFactory;->getAccessorFor(Ljava/lang/Class;)Lcm/aptoide/pt/database/accessors/Accessor;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/database/accessors/StoreAccessor;

    .line 128
    invoke-virtual {v0, p0}, Lcm/aptoide/pt/database/accessors/StoreAccessor;->get(Ljava/lang/String;)Lrx/d;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/v8engine/util/StoreUtils$$Lambda$3;->lambdaFactory$()Lrx/b/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->g(Lrx/b/e;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$isSubscribedStore$2(Lcm/aptoide/pt/database/realm/Store;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 128
    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic lambda$subscribeStore$0(Lcm/aptoide/pt/dataprovider/ws/v7/store/GetStoreMetaRequest;Lcm/aptoide/pt/networkclient/interfaces/SuccessRequestListener;Lcm/aptoide/pt/model/v7/store/GetStoreMeta;)V
    .locals 6

    .prologue
    .line 78
    sget-object v0, Lcm/aptoide/pt/model/v7/BaseV7Response$Info$Status;->OK:Lcm/aptoide/pt/model/v7/BaseV7Response$Info$Status;

    invoke-virtual {p2}, Lcm/aptoide/pt/model/v7/store/GetStoreMeta;->getInfo()Lcm/aptoide/pt/model/v7/BaseV7Response$Info;

    move-result-object v1

    invoke-virtual {v1}, Lcm/aptoide/pt/model/v7/BaseV7Response$Info;->getStatus()Lcm/aptoide/pt/model/v7/BaseV7Response$Info$Status;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcm/aptoide/pt/model/v7/BaseV7Response$Info$Status;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 80
    const-class v0, Lcm/aptoide/pt/database/realm/Store;

    invoke-static {v0}, Lcm/aptoide/pt/database/accessors/AccessorFactory;->getAccessorFor(Ljava/lang/Class;)Lcm/aptoide/pt/database/accessors/Accessor;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/database/accessors/StoreAccessor;

    .line 82
    new-instance v2, Lcm/aptoide/pt/database/realm/Store;

    invoke-direct {v2}, Lcm/aptoide/pt/database/realm/Store;-><init>()V

    .line 84
    invoke-virtual {p2}, Lcm/aptoide/pt/model/v7/store/GetStoreMeta;->getData()Lcm/aptoide/pt/model/v7/store/Store;

    move-result-object v3

    .line 85
    invoke-virtual {v3}, Lcm/aptoide/pt/model/v7/store/Store;->getId()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcm/aptoide/pt/database/realm/Store;->setStoreId(J)V

    .line 86
    invoke-virtual {v3}, Lcm/aptoide/pt/model/v7/store/Store;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcm/aptoide/pt/database/realm/Store;->setStoreName(Ljava/lang/String;)V

    .line 87
    invoke-virtual {v3}, Lcm/aptoide/pt/model/v7/store/Store;->getStats()Lcm/aptoide/pt/model/v7/store/Store$Stats;

    move-result-object v1

    invoke-virtual {v1}, Lcm/aptoide/pt/model/v7/store/Store$Stats;->getDownloads()I

    move-result v1

    int-to-long v4, v1

    invoke-virtual {v2, v4, v5}, Lcm/aptoide/pt/database/realm/Store;->setDownloads(J)V

    .line 89
    invoke-virtual {v3}, Lcm/aptoide/pt/model/v7/store/Store;->getAvatar()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcm/aptoide/pt/database/realm/Store;->setIconPath(Ljava/lang/String;)V

    .line 90
    invoke-virtual {v3}, Lcm/aptoide/pt/model/v7/store/Store;->getAppearance()Lcm/aptoide/pt/model/v7/store/Store$Appearance;

    move-result-object v1

    invoke-virtual {v1}, Lcm/aptoide/pt/model/v7/store/Store$Appearance;->getTheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcm/aptoide/pt/database/realm/Store;->setTheme(Ljava/lang/String;)V

    .line 92
    invoke-static {p0}, Lcm/aptoide/pt/v8engine/util/StoreUtils;->isPrivateCredentialsSet(Lcm/aptoide/pt/dataprovider/ws/v7/store/GetStoreMetaRequest;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 93
    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/store/GetStoreMetaRequest;->getBody()Lcm/aptoide/pt/dataprovider/ws/v7/AccessTokenBody;

    move-result-object v1

    check-cast v1, Lcm/aptoide/pt/dataprovider/ws/v7/store/GetStoreMetaRequest$Body;

    invoke-virtual {v1}, Lcm/aptoide/pt/dataprovider/ws/v7/store/GetStoreMetaRequest$Body;->getStoreUser()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcm/aptoide/pt/database/realm/Store;->setUsername(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/store/GetStoreMetaRequest;->getBody()Lcm/aptoide/pt/dataprovider/ws/v7/AccessTokenBody;

    move-result-object v1

    check-cast v1, Lcm/aptoide/pt/dataprovider/ws/v7/store/GetStoreMetaRequest$Body;

    invoke-virtual {v1}, Lcm/aptoide/pt/dataprovider/ws/v7/store/GetStoreMetaRequest$Body;->getStorePassSha1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcm/aptoide/pt/database/realm/Store;->setPasswordSha1(Ljava/lang/String;)V

    .line 98
    :cond_0
    invoke-static {}, Lcm/aptoide/accountmanager/AptoideAccountManager;->isLoggedIn()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 99
    invoke-virtual {v3}, Lcm/aptoide/pt/model/v7/store/Store;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcm/aptoide/accountmanager/AptoideAccountManager;->subscribeStore(Ljava/lang/String;)V

    .line 102
    :cond_1
    invoke-virtual {v0, v2}, Lcm/aptoide/pt/database/accessors/StoreAccessor;->save(Lcm/aptoide/pt/database/realm/Store;)V

    .line 104
    if-eqz p1, :cond_2

    .line 105
    invoke-interface {p1, p2}, Lcm/aptoide/pt/networkclient/interfaces/SuccessRequestListener;->call(Ljava/lang/Object;)V

    .line 108
    :cond_2
    return-void
.end method

.method static synthetic lambda$subscribeStore$1(Lcm/aptoide/pt/networkclient/interfaces/ErrorRequestListener;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 109
    if-eqz p0, :cond_0

    .line 110
    invoke-interface {p0, p1}, Lcm/aptoide/pt/networkclient/interfaces/ErrorRequestListener;->onError(Ljava/lang/Throwable;)V

    .line 112
    :cond_0
    invoke-static {}, Lcm/aptoide/pt/crashreports/CrashReport;->getInstance()Lcm/aptoide/pt/crashreports/CrashReport;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcm/aptoide/pt/crashreports/CrashReport;->log(Ljava/lang/Throwable;)V

    .line 113
    return-void
.end method

.method public static split(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 132
    const-string v0, "Aptoide-RepoUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Splitting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcm/aptoide/pt/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    invoke-static {p0}, Lcm/aptoide/pt/v8engine/util/StoreUtils;->formatRepoUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 134
    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    const-string v1, "\\.store"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v3

    const-string v1, "\\.bazaarandroid.com"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v3

    return-object v0
.end method

.method public static subscribeStore(Lcm/aptoide/pt/dataprovider/ws/v7/store/GetStoreMetaRequest;Lcm/aptoide/pt/networkclient/interfaces/SuccessRequestListener;Lcm/aptoide/pt/networkclient/interfaces/ErrorRequestListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcm/aptoide/pt/dataprovider/ws/v7/store/GetStoreMetaRequest;",
            "Lcm/aptoide/pt/networkclient/interfaces/SuccessRequestListener",
            "<",
            "Lcm/aptoide/pt/model/v7/store/GetStoreMeta;",
            ">;",
            "Lcm/aptoide/pt/networkclient/interfaces/ErrorRequestListener;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 76
    invoke-static {p0, p1}, Lcm/aptoide/pt/v8engine/util/StoreUtils$$Lambda$1;->lambdaFactory$(Lcm/aptoide/pt/dataprovider/ws/v7/store/GetStoreMetaRequest;Lcm/aptoide/pt/networkclient/interfaces/SuccessRequestListener;)Lcm/aptoide/pt/networkclient/interfaces/SuccessRequestListener;

    move-result-object v0

    invoke-static {p2}, Lcm/aptoide/pt/v8engine/util/StoreUtils$$Lambda$2;->lambdaFactory$(Lcm/aptoide/pt/networkclient/interfaces/ErrorRequestListener;)Lcm/aptoide/pt/networkclient/interfaces/ErrorRequestListener;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcm/aptoide/pt/dataprovider/ws/v7/store/GetStoreMetaRequest;->execute(Lcm/aptoide/pt/networkclient/interfaces/SuccessRequestListener;Lcm/aptoide/pt/networkclient/interfaces/ErrorRequestListener;)V

    .line 114
    return-void
.end method

.method public static subscribeStore(Ljava/lang/String;Lcm/aptoide/pt/networkclient/interfaces/SuccessRequestListener;Lcm/aptoide/pt/networkclient/interfaces/ErrorRequestListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcm/aptoide/pt/networkclient/interfaces/SuccessRequestListener",
            "<",
            "Lcm/aptoide/pt/model/v7/store/GetStoreMeta;",
            ">;",
            "Lcm/aptoide/pt/networkclient/interfaces/ErrorRequestListener;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 64
    invoke-static {p0}, Lcm/aptoide/pt/v8engine/util/StoreUtils;->getStoreCredentials(Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/BaseRequestWithStore$StoreCredentials;

    move-result-object v0

    .line 65
    invoke-static {}, Lcm/aptoide/accountmanager/AptoideAccountManager;->getAccessToken()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcm/aptoide/pt/v8engine/util/StoreUtils;->aptoideClientUUID:Lcm/aptoide/pt/interfaces/AptoideClientUUID;

    invoke-interface {v2}, Lcm/aptoide/pt/interfaces/AptoideClientUUID;->getUniqueIdentifier()Ljava/lang/String;

    move-result-object v2

    .line 64
    invoke-static {v0, v1, v2}, Lcm/aptoide/pt/dataprovider/ws/v7/store/GetStoreMetaRequest;->of(Lcm/aptoide/pt/dataprovider/ws/v7/BaseRequestWithStore$StoreCredentials;Ljava/lang/String;Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/store/GetStoreMetaRequest;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcm/aptoide/pt/v8engine/util/StoreUtils;->subscribeStore(Lcm/aptoide/pt/dataprovider/ws/v7/store/GetStoreMetaRequest;Lcm/aptoide/pt/networkclient/interfaces/SuccessRequestListener;Lcm/aptoide/pt/networkclient/interfaces/ErrorRequestListener;)V

    .line 67
    return-void
.end method

.method public static unsubscribeStore(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 183
    invoke-static {}, Lcm/aptoide/accountmanager/AptoideAccountManager;->isLoggedIn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    invoke-static {p0}, Lcm/aptoide/accountmanager/AptoideAccountManager;->unsubscribeStore(Ljava/lang/String;)V

    .line 186
    :cond_0
    const-class v0, Lcm/aptoide/pt/database/realm/Store;

    invoke-static {v0}, Lcm/aptoide/pt/database/accessors/AccessorFactory;->getAccessorFor(Ljava/lang/Class;)Lcm/aptoide/pt/database/accessors/Accessor;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/database/accessors/StoreAccessor;

    .line 187
    invoke-virtual {v0, p0}, Lcm/aptoide/pt/database/accessors/StoreAccessor;->remove(Ljava/lang/String;)V

    .line 188
    return-void
.end method
