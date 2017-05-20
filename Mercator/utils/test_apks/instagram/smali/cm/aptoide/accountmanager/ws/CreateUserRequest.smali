.class public Lcm/aptoide/accountmanager/ws/CreateUserRequest;
.super Lcm/aptoide/accountmanager/ws/v3accountManager;
.source "CreateUserRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcm/aptoide/accountmanager/ws/v3accountManager",
        "<",
        "Lcm/aptoide/accountmanager/ws/responses/OAuth;",
        ">;"
    }
.end annotation


# instance fields
.field private aptoideClientUUID:Ljava/lang/String;

.field private final email:Ljava/lang/String;

.field private final name:Ljava/lang/String;

.field private final password:Ljava/lang/String;

.field private final update:Ljava/lang/String;

.field private final userAvatarPath:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lokhttp3/OkHttpClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 37
    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcm/aptoide/accountmanager/ws/CreateUserRequest;-><init>(Lokhttp3/OkHttpClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method private constructor <init>(Lokhttp3/OkHttpClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcm/aptoide/accountmanager/ws/v3accountManager;-><init>(Lokhttp3/OkHttpClient;)V

    .line 43
    iput-object p2, p0, Lcm/aptoide/accountmanager/ws/CreateUserRequest;->email:Ljava/lang/String;

    .line 44
    iput-object p3, p0, Lcm/aptoide/accountmanager/ws/CreateUserRequest;->password:Ljava/lang/String;

    .line 45
    iput-object p4, p0, Lcm/aptoide/accountmanager/ws/CreateUserRequest;->name:Ljava/lang/String;

    .line 46
    iput-object p5, p0, Lcm/aptoide/accountmanager/ws/CreateUserRequest;->update:Ljava/lang/String;

    .line 47
    iput-object p6, p0, Lcm/aptoide/accountmanager/ws/CreateUserRequest;->userAvatarPath:Ljava/lang/String;

    .line 48
    iput-object p7, p0, Lcm/aptoide/accountmanager/ws/CreateUserRequest;->aptoideClientUUID:Ljava/lang/String;

    .line 49
    return-void
.end method

.method private createBodyPartFromString(Ljava/lang/String;)Lokhttp3/RequestBody;
    .locals 1

    .prologue
    .line 141
    const-string v0, "multipart/form-data"

    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    invoke-static {v0, p1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v0

    return-object v0
.end method

.method private static getHttpClient()Lokhttp3/OkHttpClient;
    .locals 4

    .prologue
    const-wide/16 v2, 0x2

    .line 56
    invoke-static {}, Lcm/aptoide/accountmanager/ws/CreateUserRequest$$Lambda$1;->lambdaFactory$()Lcm/aptoide/pt/networkclient/okhttp/UserAgentGenerator;

    move-result-object v0

    .line 57
    invoke-static {v0}, Lcm/aptoide/pt/networkclient/okhttp/OkHttpClientFactory;->newClient(Lcm/aptoide/pt/networkclient/okhttp/UserAgentGenerator;)Lokhttp3/OkHttpClient;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->newBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 58
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 59
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 60
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 61
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$getHttpClient$0()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    invoke-static {}, Lcm/aptoide/accountmanager/AptoideAccountManager;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static of(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcm/aptoide/accountmanager/ws/CreateUserRequest;
    .locals 2

    .prologue
    .line 52
    new-instance v0, Lcm/aptoide/accountmanager/ws/CreateUserRequest;

    invoke-static {}, Lcm/aptoide/accountmanager/ws/CreateUserRequest;->getHttpClient()Lokhttp3/OkHttpClient;

    move-result-object v1

    invoke-direct {v0, v1, p0, p1, p2}, Lcm/aptoide/accountmanager/ws/CreateUserRequest;-><init>(Lokhttp3/OkHttpClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static of(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcm/aptoide/accountmanager/ws/CreateUserRequest;
    .locals 8

    .prologue
    .line 66
    new-instance v0, Lcm/aptoide/accountmanager/ws/CreateUserRequest;

    invoke-static {}, Lcm/aptoide/accountmanager/ws/CreateUserRequest;->getHttpClient()Lokhttp3/OkHttpClient;

    move-result-object v1

    move-object v2, p1

    move-object v3, p3

    move-object v4, p2

    move-object v5, p0

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcm/aptoide/accountmanager/ws/CreateUserRequest;-><init>(Lokhttp3/OkHttpClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcm/aptoide/accountmanager/ws/CreateUserRequest;->email:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getMap()Lcm/aptoide/accountmanager/ws/BaseBody;
    .locals 1

    .prologue
    .line 26
    invoke-super {p0}, Lcm/aptoide/accountmanager/ws/v3accountManager;->getMap()Lcm/aptoide/accountmanager/ws/BaseBody;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcm/aptoide/accountmanager/ws/CreateUserRequest;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcm/aptoide/accountmanager/ws/CreateUserRequest;->password:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcm/aptoide/accountmanager/ws/CreateUserRequest;->update:Ljava/lang/String;

    return-object v0
.end method

.method public getUserAvatarPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcm/aptoide/accountmanager/ws/CreateUserRequest;->userAvatarPath:Ljava/lang/String;

    return-object v0
.end method

.method protected loadDataFromNetwork(Lcm/aptoide/accountmanager/ws/v3accountManager$Interfaces;Z)Lrx/d;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcm/aptoide/accountmanager/ws/v3accountManager$Interfaces;",
            "Z)",
            "Lrx/d",
            "<",
            "Lcm/aptoide/accountmanager/ws/responses/OAuth;",
            ">;"
        }
    .end annotation

    .prologue
    .line 77
    new-instance v0, Lcm/aptoide/pt/networkclient/util/HashMapNotNull;

    invoke-direct {v0}, Lcm/aptoide/pt/networkclient/util/HashMapNotNull;-><init>()V

    .line 79
    iget-object v1, p0, Lcm/aptoide/accountmanager/ws/CreateUserRequest;->update:Ljava/lang/String;

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcm/aptoide/accountmanager/ws/CreateUserRequest;->getUserAvatarPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 80
    new-instance v0, Lcm/aptoide/pt/networkclient/util/HashMapNotNull;

    invoke-direct {v0}, Lcm/aptoide/pt/networkclient/util/HashMapNotNull;-><init>()V

    .line 83
    iget-object v1, p0, Lcm/aptoide/accountmanager/ws/CreateUserRequest;->password:Ljava/lang/String;

    invoke-static {v1}, Lcm/aptoide/pt/utils/AptoideUtils$AlgorithmU;->computeSha1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 84
    const-string v2, "json"

    invoke-direct {p0, v2}, Lcm/aptoide/accountmanager/ws/CreateUserRequest;->createBodyPartFromString(Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v2

    .line 85
    invoke-virtual {p0}, Lcm/aptoide/accountmanager/ws/CreateUserRequest;->getEmail()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcm/aptoide/accountmanager/ws/CreateUserRequest;->createBodyPartFromString(Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v3

    .line 86
    invoke-direct {p0, v1}, Lcm/aptoide/accountmanager/ws/CreateUserRequest;->createBodyPartFromString(Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v4

    .line 88
    invoke-static {}, Lcm/aptoide/pt/preferences/Application;->getConfiguration()Lcm/aptoide/pt/preferences/AptoidePreferencesConfiguration;

    move-result-object v5

    invoke-interface {v5}, Lcm/aptoide/pt/preferences/AptoidePreferencesConfiguration;->getExtraId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 89
    invoke-static {}, Lcm/aptoide/pt/preferences/Application;->getConfiguration()Lcm/aptoide/pt/preferences/AptoidePreferencesConfiguration;

    move-result-object v5

    invoke-interface {v5}, Lcm/aptoide/pt/preferences/AptoidePreferencesConfiguration;->getExtraId()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcm/aptoide/accountmanager/ws/CreateUserRequest;->createBodyPartFromString(Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v5

    .line 90
    const-string v6, "oem_id"

    invoke-virtual {v0, v6, v5}, Lcm/aptoide/pt/networkclient/util/HashMapNotNull;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 94
    invoke-virtual {p0}, Lcm/aptoide/accountmanager/ws/CreateUserRequest;->getEmail()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcm/aptoide/accountmanager/ws/CreateUserRequest;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcm/aptoide/accountmanager/ws/CreateUserRequest;->getUpdate()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v5, "bazaar_hmac"

    .line 93
    invoke-static {v1, v5}, Lcm/aptoide/pt/utils/AptoideUtils$AlgorithmU;->computeHmacSha1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcm/aptoide/accountmanager/ws/CreateUserRequest;->createBodyPartFromString(Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v1

    .line 96
    invoke-virtual {p0}, Lcm/aptoide/accountmanager/ws/CreateUserRequest;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcm/aptoide/accountmanager/ws/CreateUserRequest;->createBodyPartFromString(Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v5

    .line 97
    invoke-virtual {p0}, Lcm/aptoide/accountmanager/ws/CreateUserRequest;->getUpdate()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcm/aptoide/accountmanager/ws/CreateUserRequest;->createBodyPartFromString(Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v6

    .line 99
    const-string v7, "mode"

    invoke-virtual {v0, v7, v2}, Lcm/aptoide/pt/networkclient/util/HashMapNotNull;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    const-string v2, "email"

    invoke-virtual {v0, v2, v3}, Lcm/aptoide/pt/networkclient/util/HashMapNotNull;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    const-string v2, "passhash"

    invoke-virtual {v0, v2, v4}, Lcm/aptoide/pt/networkclient/util/HashMapNotNull;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    const-string v2, "hmac"

    invoke-virtual {v0, v2, v1}, Lcm/aptoide/pt/networkclient/util/HashMapNotNull;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    const-string v1, "name"

    invoke-virtual {v0, v1, v5}, Lcm/aptoide/pt/networkclient/util/HashMapNotNull;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    const-string v1, "update"

    invoke-virtual {v0, v1, v6}, Lcm/aptoide/pt/networkclient/util/HashMapNotNull;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcm/aptoide/accountmanager/ws/CreateUserRequest;->userAvatarPath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 106
    const-string v2, "multipart/form-data"

    invoke-static {v2}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v2

    invoke-static {v2, v1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/io/File;)Lokhttp3/RequestBody;

    move-result-object v2

    .line 107
    const-string v3, "user_avatar"

    .line 108
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1, v2}, Lokhttp3/MultipartBody$Part;->createFormData(Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Part;

    move-result-object v1

    .line 109
    invoke-interface {p1, v1, v0}, Lcm/aptoide/accountmanager/ws/v3accountManager$Interfaces;->createUserWithFile(Lokhttp3/MultipartBody$Part;Lcm/aptoide/pt/networkclient/util/HashMapNotNull;)Lrx/d;

    move-result-object v0

    .line 133
    :goto_0
    return-object v0

    .line 110
    :cond_1
    iget-object v1, p0, Lcm/aptoide/accountmanager/ws/CreateUserRequest;->update:Ljava/lang/String;

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcm/aptoide/accountmanager/ws/CreateUserRequest;->userAvatarPath:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 111
    const-string v1, "update"

    iget-object v2, p0, Lcm/aptoide/accountmanager/ws/CreateUserRequest;->update:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcm/aptoide/pt/networkclient/util/HashMapNotNull;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    const-string v1, "name"

    iget-object v2, p0, Lcm/aptoide/accountmanager/ws/CreateUserRequest;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcm/aptoide/pt/networkclient/util/HashMapNotNull;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    :cond_2
    iget-object v1, p0, Lcm/aptoide/accountmanager/ws/CreateUserRequest;->password:Ljava/lang/String;

    invoke-static {v1}, Lcm/aptoide/pt/utils/AptoideUtils$AlgorithmU;->computeSha1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 117
    const-string v2, "mode"

    const-string v3, "json"

    invoke-virtual {v0, v2, v3}, Lcm/aptoide/pt/networkclient/util/HashMapNotNull;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    const-string v2, "email"

    iget-object v3, p0, Lcm/aptoide/accountmanager/ws/CreateUserRequest;->email:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcm/aptoide/pt/networkclient/util/HashMapNotNull;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    const-string v2, "passhash"

    invoke-virtual {v0, v2, v1}, Lcm/aptoide/pt/networkclient/util/HashMapNotNull;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    const-string v2, "aptoide_uid"

    iget-object v3, p0, Lcm/aptoide/accountmanager/ws/CreateUserRequest;->aptoideClientUUID:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcm/aptoide/pt/networkclient/util/HashMapNotNull;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    invoke-static {}, Lcm/aptoide/pt/preferences/Application;->getConfiguration()Lcm/aptoide/pt/preferences/AptoidePreferencesConfiguration;

    move-result-object v2

    invoke-interface {v2}, Lcm/aptoide/pt/preferences/AptoidePreferencesConfiguration;->getExtraId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 123
    const-string v2, "oem_id"

    invoke-static {}, Lcm/aptoide/pt/preferences/Application;->getConfiguration()Lcm/aptoide/pt/preferences/AptoidePreferencesConfiguration;

    move-result-object v3

    invoke-interface {v3}, Lcm/aptoide/pt/preferences/AptoidePreferencesConfiguration;->getExtraId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcm/aptoide/pt/networkclient/util/HashMapNotNull;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    :cond_3
    iget-object v2, p0, Lcm/aptoide/accountmanager/ws/CreateUserRequest;->update:Ljava/lang/String;

    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 127
    const-string v2, "hmac"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcm/aptoide/accountmanager/ws/CreateUserRequest;->email:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcm/aptoide/accountmanager/ws/CreateUserRequest;->name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcm/aptoide/accountmanager/ws/CreateUserRequest;->update:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "bazaar_hmac"

    .line 128
    invoke-static {v1, v3}, Lcm/aptoide/pt/utils/AptoideUtils$AlgorithmU;->computeHmacSha1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 127
    invoke-virtual {v0, v2, v1}, Lcm/aptoide/pt/networkclient/util/HashMapNotNull;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    :goto_1
    invoke-interface {p1, v0}, Lcm/aptoide/accountmanager/ws/v3accountManager$Interfaces;->createUser(Lcm/aptoide/pt/networkclient/util/HashMapNotNull;)Lrx/d;

    move-result-object v0

    goto/16 :goto_0

    .line 130
    :cond_4
    const-string v2, "hmac"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcm/aptoide/accountmanager/ws/CreateUserRequest;->email:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcm/aptoide/accountmanager/ws/CreateUserRequest;->name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "bazaar_hmac"

    .line 131
    invoke-static {v1, v3}, Lcm/aptoide/pt/utils/AptoideUtils$AlgorithmU;->computeHmacSha1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 130
    invoke-virtual {v0, v2, v1}, Lcm/aptoide/pt/networkclient/util/HashMapNotNull;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method protected bridge synthetic loadDataFromNetwork(Ljava/lang/Object;Z)Lrx/d;
    .locals 1

    .prologue
    .line 26
    check-cast p1, Lcm/aptoide/accountmanager/ws/v3accountManager$Interfaces;

    invoke-virtual {p0, p1, p2}, Lcm/aptoide/accountmanager/ws/CreateUserRequest;->loadDataFromNetwork(Lcm/aptoide/accountmanager/ws/v3accountManager$Interfaces;Z)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic observe(Z)Lrx/d;
    .locals 1

    .prologue
    .line 26
    invoke-super {p0, p1}, Lcm/aptoide/accountmanager/ws/v3accountManager;->observe(Z)Lrx/d;

    move-result-object v0

    return-object v0
.end method
