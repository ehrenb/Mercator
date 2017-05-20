.class public Lcm/aptoide/accountmanager/ws/CheckUserCredentialsRequest;
.super Lcm/aptoide/accountmanager/ws/v3accountManager;
.source "CheckUserCredentialsRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcm/aptoide/accountmanager/ws/v3accountManager",
        "<",
        "Lcm/aptoide/accountmanager/ws/responses/CheckUserCredentialsJson;",
        ">;"
    }
.end annotation


# instance fields
.field private cpu:Ljava/lang/String;

.field private createRepo:Ljava/lang/String;

.field private density:Ljava/lang/String;

.field private deviceId:Ljava/lang/String;

.field private model:Ljava/lang/String;

.field private openGl:Ljava/lang/String;

.field private registerDevice:Z

.field private repoName:Ljava/lang/String;

.field private screenSize:Ljava/lang/String;

.field private sdk:Ljava/lang/String;

.field private token:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lokhttp3/OkHttpClient;Lretrofit2/Converter$Factory;)V
    .locals 2

    .prologue
    .line 45
    invoke-direct {p0, p2, p3}, Lcm/aptoide/accountmanager/ws/v3accountManager;-><init>(Lokhttp3/OkHttpClient;Lretrofit2/Converter$Factory;)V

    .line 41
    const-string v0, ""

    iput-object v0, p0, Lcm/aptoide/accountmanager/ws/CheckUserCredentialsRequest;->createRepo:Ljava/lang/String;

    .line 46
    invoke-static {p1}, Lcm/aptoide/accountmanager/util/AccountManagerUtils;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/accountmanager/ws/CheckUserCredentialsRequest;->deviceId:Ljava/lang/String;

    .line 47
    invoke-static {}, Lcm/aptoide/accountmanager/util/AccountManagerUtils;->getSdkVer()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/accountmanager/ws/CheckUserCredentialsRequest;->sdk:Ljava/lang/String;

    .line 48
    invoke-static {}, Lcm/aptoide/accountmanager/util/AccountManagerUtils;->getAbis()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/accountmanager/ws/CheckUserCredentialsRequest;->cpu:Ljava/lang/String;

    .line 49
    invoke-static {p1}, Lcm/aptoide/accountmanager/util/AccountManagerUtils;->getNumericScreenSize(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/accountmanager/ws/CheckUserCredentialsRequest;->density:Ljava/lang/String;

    .line 50
    invoke-static {p1}, Lcm/aptoide/accountmanager/util/AccountManagerUtils;->getGlEsVer(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/accountmanager/ws/CheckUserCredentialsRequest;->openGl:Ljava/lang/String;

    .line 51
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v0, p0, Lcm/aptoide/accountmanager/ws/CheckUserCredentialsRequest;->model:Ljava/lang/String;

    .line 52
    invoke-static {}, Lcm/aptoide/accountmanager/util/Filters$Screen;->values()[Lcm/aptoide/accountmanager/util/Filters$Screen;

    move-result-object v0

    invoke-static {p1}, Lcm/aptoide/accountmanager/util/AccountManagerUtils;->getScreenSize(Landroid/content/Context;)I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcm/aptoide/accountmanager/util/Filters$Screen;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/accountmanager/ws/CheckUserCredentialsRequest;->screenSize:Ljava/lang/String;

    .line 54
    return-void
.end method

.method static synthetic lambda$of$0()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    invoke-static {}, Lcm/aptoide/pt/preferences/secure/SecurePreferences;->getUserAgent()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static of(Ljava/lang/String;)Lcm/aptoide/accountmanager/ws/CheckUserCredentialsRequest;
    .locals 4

    .prologue
    .line 71
    new-instance v0, Lcm/aptoide/accountmanager/ws/CheckUserCredentialsRequest;

    invoke-static {}, Lcm/aptoide/pt/preferences/Application;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcm/aptoide/accountmanager/ws/CheckUserCredentialsRequest$$Lambda$1;->lambdaFactory$()Lcm/aptoide/pt/networkclient/okhttp/UserAgentGenerator;

    move-result-object v2

    .line 72
    invoke-static {}, Lcm/aptoide/accountmanager/ws/CheckUserCredentialsRequest;->isDebug()Z

    move-result v3

    invoke-static {v2, v3}, Lcm/aptoide/pt/networkclient/okhttp/OkHttpClientFactory;->getSingletonClient(Lcm/aptoide/pt/networkclient/okhttp/UserAgentGenerator;Z)Lokhttp3/OkHttpClient;

    move-result-object v2

    .line 73
    invoke-static {}, Lcm/aptoide/pt/networkclient/WebService;->getDefaultConverter()Lretrofit2/Converter$Factory;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcm/aptoide/accountmanager/ws/CheckUserCredentialsRequest;-><init>(Landroid/content/Context;Lokhttp3/OkHttpClient;Lretrofit2/Converter$Factory;)V

    .line 74
    invoke-virtual {v0, p0}, Lcm/aptoide/accountmanager/ws/CheckUserCredentialsRequest;->setToken(Ljava/lang/String;)V

    .line 75
    return-object v0
.end method

.method public static of(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcm/aptoide/accountmanager/ws/CheckUserCredentialsRequest;
    .locals 1

    .prologue
    .line 58
    invoke-static {p0}, Lcm/aptoide/accountmanager/ws/CheckUserCredentialsRequest;->of(Ljava/lang/String;)Lcm/aptoide/accountmanager/ws/CheckUserCredentialsRequest;

    move-result-object v0

    .line 59
    invoke-virtual {v0, p1}, Lcm/aptoide/accountmanager/ws/CheckUserCredentialsRequest;->setRepoName(Ljava/lang/String;)V

    .line 60
    invoke-virtual {v0, p2}, Lcm/aptoide/accountmanager/ws/CheckUserCredentialsRequest;->setCreateRepo(Ljava/lang/String;)V

    .line 61
    return-object v0
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 28
    instance-of v0, p1, Lcm/aptoide/accountmanager/ws/CheckUserCredentialsRequest;

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 28
    if-ne p1, p0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    instance-of v0, p1, Lcm/aptoide/accountmanager/ws/CheckUserCredentialsRequest;

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move-object v0, p1

    check-cast v0, Lcm/aptoide/accountmanager/ws/CheckUserCredentialsRequest;

    invoke-virtual {v0, p0}, Lcm/aptoide/accountmanager/ws/CheckUserCredentialsRequest;->canEqual(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    move v0, v2

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcm/aptoide/accountmanager/ws/CheckUserCredentialsRequest;->isRegisterDevice()Z

    move-result v3

    invoke-virtual {v0}, Lcm/aptoide/accountmanager/ws/CheckUserCredentialsRequest;->isRegisterDevice()Z

    move-result v4

    if-eq v3, v4, :cond_4

    move v0, v2

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcm/aptoide/accountmanager/ws/CheckUserCredentialsRequest;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcm/aptoide/accountmanager/ws/CheckUserCredentialsRequest;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    if-nez v3, :cond_6

    if-eqz v4, :cond_7

    :cond_5
    move v0, v2

    goto :goto_0

    :cond_6
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_7
    invoke-virtual {p0}, Lcm/aptoide/accountmanager/ws/CheckUserCredentialsRequest;->getModel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcm/aptoide/accountmanager/ws/CheckUserCredentialsRequest;->getModel()Ljava/lang/String;

    move-result-object v4

    if-nez v3, :cond_9

    if-eqz v4, :cond_a

    :cond_8
    move v0, v2

    goto :goto_0

    :cond_9
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    :cond_a
    invoke-virtual {p0}, Lcm/aptoide/accountmanager/ws/CheckUserCredentialsRequest;->getSdk()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcm/aptoide/accountmanager/ws/CheckUserCredentialsRequest;->getSdk()Ljava/lang/String;

    move-result-object v4

    if-nez v3, :cond_c

    if-eqz v4, :cond_d

    :cond_b
    move v0, v2

    goto :goto_0

    :cond_c
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    :cond_d
    invoke-virtual {p0}, Lcm/aptoide/accountmanager/ws/CheckUserCredentialsRequest;->getDensity()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcm/aptoide/accountmanager/ws/CheckUserCredentialsRequest;->getDensity()Ljava/lang/String;

    move-result-object v4

    if-nez v3, :cond_f

    if-eqz v4, :cond_10

    :cond_e
    move v0, v2

    goto :goto_0

    :cond_f
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    :cond_10
    invoke-virtual {p0}, Lcm/aptoide/accountmanager/ws/CheckUserCredentialsRequest;->getCpu()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcm/aptoide/accountmanager/ws/CheckUserCredentialsRequest;->getCpu()Ljava/lang/String;

    move-result-object v4

    if-nez v3, :cond_12

    if-eqz v4, :cond_13

    :cond_11
    move v0, v2

    goto/16 :goto_0

    :cond_12
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    :cond_13
    invoke-virtual {p0}, Lcm/aptoide/accountmanager/ws/CheckUserCredentialsRequest;->getScreenSize()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcm/aptoide/accountmanager/ws/CheckUserCredentialsRequest;->getScreenSize()Ljava/lang/String;

    move-result-object v4

    if-nez v3, :cond_15

    if-eqz v4, :cond_16

    :cond_14
    move v0, v2

    goto/16 :goto_0

    :cond_15
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    :cond_16
    invoke-virtual {p0}, Lcm/aptoide/accountmanager/ws/CheckUserCredentialsRequest;->getOpenGl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcm/aptoide/accountmanager/ws/CheckUserCredentialsRequest;->getOpenGl()Ljava/lang/String;

    move-result-object v4

    if-nez v3, :cond_18

    if-eqz v4, :cond_19

    :cond_17
    move v0, v2

    goto/16 :goto_0

    :cond_18
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    :cond_19
    invoke-virtual {p0}, Lcm/aptoide/accountmanager/ws/CheckUserCredentialsRequest;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcm/aptoide/accountmanager/ws/CheckUserCredentialsRequest;->getToken()Ljava/lang/String;

    move-result-object v4

    if-nez v3, :cond_1b

    if-eqz v4, :cond_1c

    :cond_1a
    move v0, v2

    goto/16 :goto_0

    :cond_1b
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    :cond_1c
    invoke-virtual {p0}, Lcm/aptoide/accountmanager/ws/CheckUserCredentialsRequest;->getRepoName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcm/aptoide/accountmanager/ws/CheckUserCredentialsRequest;->getRepoName()Ljava/lang/String;

    move-result-object v4

    if-nez v3, :cond_1e

    if-eqz v4, :cond_1f

    :cond_1d
    move v0, v2

    goto/16 :goto_0

    :cond_1e
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    :cond_1f
    invoke-virtual {p0}, Lcm/aptoide/accountmanager/ws/CheckUserCredentialsRequest;->getCreateRepo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcm/aptoide/accountmanager/ws/CheckUserCredentialsRequest;->getCreateRepo()Ljava/lang/String;

    move-result-object v0

    if-nez v3, :cond_21

    if-eqz v0, :cond_22

    :cond_20
    move v0, v2

    goto/16 :goto_0

    :cond_21
    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    :cond_22
    move v0, v1

    goto/16 :goto_0
.end method

.method public getCpu()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcm/aptoide/accountmanager/ws/CheckUserCredentialsRequest;->cpu:Ljava/lang/String;

    return-object v0
.end method

.method public getCreateRepo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcm/aptoide/accountmanager/ws/CheckUserCredentialsRequest;->createRepo:Ljava/lang/String;

    return-object v0
.end method

.method public getDensity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcm/aptoide/accountmanager/ws/CheckUserCredentialsRequest;->density:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcm/aptoide/accountmanager/ws/CheckUserCredentialsRequest;->deviceId:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getMap()Lcm/aptoide/accountmanager/ws/BaseBody;
    .locals 1

    .prologue
    .line 28
    invoke-super {p0}, Lcm/aptoide/accountmanager/ws/v3accountManager;->getMap()Lcm/aptoide/accountmanager/ws/BaseBody;

    move-result-object v0

    return-object v0
.end method

.method public getModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcm/aptoide/accountmanager/ws/CheckUserCredentialsRequest;->model:Ljava/lang/String;

    return-object v0
.end method

.method public getOpenGl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcm/aptoide/accountmanager/ws/CheckUserCredentialsRequest;->openGl:Ljava/lang/String;

    return-object v0
.end method

.method public getRepoName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcm/aptoide/accountmanager/ws/CheckUserCredentialsRequest;->repoName:Ljava/lang/String;

    return-object v0
.end method

.method public getScreenSize()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcm/aptoide/accountmanager/ws/CheckUserCredentialsRequest;->screenSize:Ljava/lang/String;

    return-object v0
.end method

.method public getSdk()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcm/aptoide/accountmanager/ws/CheckUserCredentialsRequest;->sdk:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcm/aptoide/accountmanager/ws/CheckUserCredentialsRequest;->token:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/16 v1, 0x2b

    .line 28
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x3b

    mul-int/lit8 v2, v0, 0x3b

    invoke-virtual {p0}, Lcm/aptoide/accountmanager/ws/CheckUserCredentialsRequest;->isRegisterDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x4f

    :goto_0
    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcm/aptoide/accountmanager/ws/CheckUserCredentialsRequest;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    mul-int/lit8 v3, v0, 0x3b

    if-nez v2, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcm/aptoide/accountmanager/ws/CheckUserCredentialsRequest;->getModel()Ljava/lang/String;

    move-result-object v2

    mul-int/lit8 v3, v0, 0x3b

    if-nez v2, :cond_2

    move v0, v1

    :goto_2
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcm/aptoide/accountmanager/ws/CheckUserCredentialsRequest;->getSdk()Ljava/lang/String;

    move-result-object v2

    mul-int/lit8 v3, v0, 0x3b

    if-nez v2, :cond_3

    move v0, v1

    :goto_3
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcm/aptoide/accountmanager/ws/CheckUserCredentialsRequest;->getDensity()Ljava/lang/String;

    move-result-object v2

    mul-int/lit8 v3, v0, 0x3b

    if-nez v2, :cond_4

    move v0, v1

    :goto_4
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcm/aptoide/accountmanager/ws/CheckUserCredentialsRequest;->getCpu()Ljava/lang/String;

    move-result-object v2

    mul-int/lit8 v3, v0, 0x3b

    if-nez v2, :cond_5

    move v0, v1

    :goto_5
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcm/aptoide/accountmanager/ws/CheckUserCredentialsRequest;->getScreenSize()Ljava/lang/String;

    move-result-object v2

    mul-int/lit8 v3, v0, 0x3b

    if-nez v2, :cond_6

    move v0, v1

    :goto_6
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcm/aptoide/accountmanager/ws/CheckUserCredentialsRequest;->getOpenGl()Ljava/lang/String;

    move-result-object v2

    mul-int/lit8 v3, v0, 0x3b

    if-nez v2, :cond_7

    move v0, v1

    :goto_7
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcm/aptoide/accountmanager/ws/CheckUserCredentialsRequest;->getToken()Ljava/lang/String;

    move-result-object v2

    mul-int/lit8 v3, v0, 0x3b

    if-nez v2, :cond_8

    move v0, v1

    :goto_8
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcm/aptoide/accountmanager/ws/CheckUserCredentialsRequest;->getRepoName()Ljava/lang/String;

    move-result-object v2

    mul-int/lit8 v3, v0, 0x3b

    if-nez v2, :cond_9

    move v0, v1

    :goto_9
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcm/aptoide/accountmanager/ws/CheckUserCredentialsRequest;->getCreateRepo()Ljava/lang/String;

    move-result-object v2

    mul-int/lit8 v0, v0, 0x3b

    if-nez v2, :cond_a

    :goto_a
    add-int/2addr v0, v1

    return v0

    :cond_0
    const/16 v0, 0x61

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_2

    :cond_3
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_3

    :cond_4
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_4

    :cond_5
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_5

    :cond_6
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_6

    :cond_7
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_7

    :cond_8
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_8

    :cond_9
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_9

    :cond_a
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_a
.end method

.method public isRegisterDevice()Z
    .locals 1

    .prologue
    .line 31
    iget-boolean v0, p0, Lcm/aptoide/accountmanager/ws/CheckUserCredentialsRequest;->registerDevice:Z

    return v0
.end method

.method protected loadDataFromNetwork(Lcm/aptoide/accountmanager/ws/v3accountManager$Interfaces;Z)Lrx/d;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcm/aptoide/accountmanager/ws/v3accountManager$Interfaces;",
            "Z)",
            "Lrx/d",
            "<",
            "Lcm/aptoide/accountmanager/ws/responses/CheckUserCredentialsJson;",
            ">;"
        }
    .end annotation

    .prologue
    .line 81
    new-instance v0, Lcm/aptoide/pt/networkclient/util/HashMapNotNull;

    invoke-direct {v0}, Lcm/aptoide/pt/networkclient/util/HashMapNotNull;-><init>()V

    .line 83
    const-string v1, "access_token"

    iget-object v2, p0, Lcm/aptoide/accountmanager/ws/CheckUserCredentialsRequest;->token:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcm/aptoide/pt/networkclient/util/HashMapNotNull;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    const-string v1, "mode"

    const-string v2, "json"

    invoke-virtual {v0, v1, v2}, Lcm/aptoide/pt/networkclient/util/HashMapNotNull;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    iget-boolean v1, p0, Lcm/aptoide/accountmanager/ws/CheckUserCredentialsRequest;->registerDevice:Z

    if-eqz v1, :cond_0

    .line 87
    const-string v1, "device_id"

    iget-object v2, p0, Lcm/aptoide/accountmanager/ws/CheckUserCredentialsRequest;->deviceId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcm/aptoide/pt/networkclient/util/HashMapNotNull;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    const-string v1, "model"

    iget-object v2, p0, Lcm/aptoide/accountmanager/ws/CheckUserCredentialsRequest;->model:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcm/aptoide/pt/networkclient/util/HashMapNotNull;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    const-string v1, "maxSdk"

    iget-object v2, p0, Lcm/aptoide/accountmanager/ws/CheckUserCredentialsRequest;->sdk:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcm/aptoide/pt/networkclient/util/HashMapNotNull;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    const-string v1, "myDensity"

    iget-object v2, p0, Lcm/aptoide/accountmanager/ws/CheckUserCredentialsRequest;->density:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcm/aptoide/pt/networkclient/util/HashMapNotNull;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    const-string v1, "myCpu"

    iget-object v2, p0, Lcm/aptoide/accountmanager/ws/CheckUserCredentialsRequest;->cpu:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcm/aptoide/pt/networkclient/util/HashMapNotNull;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    const-string v1, "maxScreen"

    iget-object v2, p0, Lcm/aptoide/accountmanager/ws/CheckUserCredentialsRequest;->screenSize:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcm/aptoide/pt/networkclient/util/HashMapNotNull;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    const-string v1, "maxGles"

    iget-object v2, p0, Lcm/aptoide/accountmanager/ws/CheckUserCredentialsRequest;->openGl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcm/aptoide/pt/networkclient/util/HashMapNotNull;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    :cond_0
    iget-object v1, p0, Lcm/aptoide/accountmanager/ws/CheckUserCredentialsRequest;->createRepo:Ljava/lang/String;

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 97
    const-string v1, "createRepo"

    iget-object v2, p0, Lcm/aptoide/accountmanager/ws/CheckUserCredentialsRequest;->createRepo:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcm/aptoide/pt/networkclient/util/HashMapNotNull;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    const-string v1, "repo"

    iget-object v2, p0, Lcm/aptoide/accountmanager/ws/CheckUserCredentialsRequest;->repoName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcm/aptoide/pt/networkclient/util/HashMapNotNull;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    const-string v1, "authMode"

    const-string v2, "aptoide"

    invoke-virtual {v0, v1, v2}, Lcm/aptoide/pt/networkclient/util/HashMapNotNull;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    const-string v1, "oauthToken"

    iget-object v2, p0, Lcm/aptoide/accountmanager/ws/CheckUserCredentialsRequest;->token:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcm/aptoide/pt/networkclient/util/HashMapNotNull;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    const-string v1, "oauthCreateRepo"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Lcm/aptoide/pt/networkclient/util/HashMapNotNull;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    invoke-interface {p1, v0}, Lcm/aptoide/accountmanager/ws/v3accountManager$Interfaces;->checkUserCredentials(Lcm/aptoide/pt/networkclient/util/HashMapNotNull;)Lrx/d;

    move-result-object v0

    .line 105
    :goto_0
    return-object v0

    :cond_1
    invoke-interface {p1, v0}, Lcm/aptoide/accountmanager/ws/v3accountManager$Interfaces;->getUserInfo(Lcm/aptoide/pt/networkclient/util/HashMapNotNull;)Lrx/d;

    move-result-object v0

    goto :goto_0
.end method

.method protected bridge synthetic loadDataFromNetwork(Ljava/lang/Object;Z)Lrx/d;
    .locals 1

    .prologue
    .line 28
    check-cast p1, Lcm/aptoide/accountmanager/ws/v3accountManager$Interfaces;

    invoke-virtual {p0, p1, p2}, Lcm/aptoide/accountmanager/ws/CheckUserCredentialsRequest;->loadDataFromNetwork(Lcm/aptoide/accountmanager/ws/v3accountManager$Interfaces;Z)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic observe(Z)Lrx/d;
    .locals 1

    .prologue
    .line 28
    invoke-super {p0, p1}, Lcm/aptoide/accountmanager/ws/v3accountManager;->observe(Z)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public setCpu(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcm/aptoide/accountmanager/ws/CheckUserCredentialsRequest;->cpu:Ljava/lang/String;

    return-void
.end method

.method public setCreateRepo(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcm/aptoide/accountmanager/ws/CheckUserCredentialsRequest;->createRepo:Ljava/lang/String;

    return-void
.end method

.method public setDensity(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcm/aptoide/accountmanager/ws/CheckUserCredentialsRequest;->density:Ljava/lang/String;

    return-void
.end method

.method public setDeviceId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcm/aptoide/accountmanager/ws/CheckUserCredentialsRequest;->deviceId:Ljava/lang/String;

    return-void
.end method

.method public setModel(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcm/aptoide/accountmanager/ws/CheckUserCredentialsRequest;->model:Ljava/lang/String;

    return-void
.end method

.method public setOpenGl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcm/aptoide/accountmanager/ws/CheckUserCredentialsRequest;->openGl:Ljava/lang/String;

    return-void
.end method

.method public setRegisterDevice(Z)V
    .locals 0

    .prologue
    .line 28
    iput-boolean p1, p0, Lcm/aptoide/accountmanager/ws/CheckUserCredentialsRequest;->registerDevice:Z

    return-void
.end method

.method public setRepoName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcm/aptoide/accountmanager/ws/CheckUserCredentialsRequest;->repoName:Ljava/lang/String;

    return-void
.end method

.method public setScreenSize(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcm/aptoide/accountmanager/ws/CheckUserCredentialsRequest;->screenSize:Ljava/lang/String;

    return-void
.end method

.method public setSdk(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcm/aptoide/accountmanager/ws/CheckUserCredentialsRequest;->sdk:Ljava/lang/String;

    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcm/aptoide/accountmanager/ws/CheckUserCredentialsRequest;->token:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CheckUserCredentialsRequest(registerDevice="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/accountmanager/ws/CheckUserCredentialsRequest;->isRegisterDevice()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", deviceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/accountmanager/ws/CheckUserCredentialsRequest;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", model="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/accountmanager/ws/CheckUserCredentialsRequest;->getModel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sdk="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/accountmanager/ws/CheckUserCredentialsRequest;->getSdk()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", density="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/accountmanager/ws/CheckUserCredentialsRequest;->getDensity()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cpu="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/accountmanager/ws/CheckUserCredentialsRequest;->getCpu()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", screenSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/accountmanager/ws/CheckUserCredentialsRequest;->getScreenSize()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", openGl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/accountmanager/ws/CheckUserCredentialsRequest;->getOpenGl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/accountmanager/ws/CheckUserCredentialsRequest;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", repoName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/accountmanager/ws/CheckUserCredentialsRequest;->getRepoName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", createRepo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/accountmanager/ws/CheckUserCredentialsRequest;->getCreateRepo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
