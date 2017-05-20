.class public Lcm/aptoide/accountmanager/ws/OAuth2AuthenticationRequest;
.super Lcm/aptoide/accountmanager/ws/v3accountManager;
.source "OAuth2AuthenticationRequest.java"


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

.field private grantType:Ljava/lang/String;

.field private mode:Lcm/aptoide/accountmanager/ws/LoginMode;

.field private nameForGoogle:Ljava/lang/String;

.field private password:Ljava/lang/String;

.field private refreshToken:Ljava/lang/String;

.field private username:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcm/aptoide/accountmanager/ws/v3accountManager;-><init>()V

    .line 35
    iput-object p1, p0, Lcm/aptoide/accountmanager/ws/OAuth2AuthenticationRequest;->aptoideClientUUID:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public constructor <init>(Lokhttp3/OkHttpClient;Lretrofit2/Converter$Factory;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcm/aptoide/accountmanager/ws/v3accountManager;-><init>(Lokhttp3/OkHttpClient;Lretrofit2/Converter$Factory;)V

    .line 41
    iput-object p3, p0, Lcm/aptoide/accountmanager/ws/OAuth2AuthenticationRequest;->aptoideClientUUID:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public static of(Ljava/lang/String;Ljava/lang/String;)Lcm/aptoide/accountmanager/ws/OAuth2AuthenticationRequest;
    .locals 2

    .prologue
    .line 55
    new-instance v0, Lcm/aptoide/accountmanager/ws/OAuth2AuthenticationRequest;

    invoke-direct {v0, p1}, Lcm/aptoide/accountmanager/ws/OAuth2AuthenticationRequest;-><init>(Ljava/lang/String;)V

    const-string v1, "refresh_token"

    invoke-virtual {v0, v1}, Lcm/aptoide/accountmanager/ws/OAuth2AuthenticationRequest;->setGrantType(Ljava/lang/String;)Lcm/aptoide/accountmanager/ws/OAuth2AuthenticationRequest;

    move-result-object v0

    .line 56
    invoke-virtual {v0, p0}, Lcm/aptoide/accountmanager/ws/OAuth2AuthenticationRequest;->setRefreshToken(Ljava/lang/String;)Lcm/aptoide/accountmanager/ws/OAuth2AuthenticationRequest;

    move-result-object v0

    return-object v0
.end method

.method public static of(Ljava/lang/String;Ljava/lang/String;Lcm/aptoide/accountmanager/ws/LoginMode;Ljava/lang/String;Ljava/lang/String;)Lcm/aptoide/accountmanager/ws/OAuth2AuthenticationRequest;
    .locals 2

    .prologue
    .line 46
    new-instance v0, Lcm/aptoide/accountmanager/ws/OAuth2AuthenticationRequest;

    invoke-direct {v0, p4}, Lcm/aptoide/accountmanager/ws/OAuth2AuthenticationRequest;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcm/aptoide/accountmanager/ws/OAuth2AuthenticationRequest;->setUsername(Ljava/lang/String;)Lcm/aptoide/accountmanager/ws/OAuth2AuthenticationRequest;

    move-result-object v0

    .line 47
    invoke-virtual {v0, p1}, Lcm/aptoide/accountmanager/ws/OAuth2AuthenticationRequest;->setPassword(Ljava/lang/String;)Lcm/aptoide/accountmanager/ws/OAuth2AuthenticationRequest;

    move-result-object v0

    .line 48
    invoke-virtual {v0, p2}, Lcm/aptoide/accountmanager/ws/OAuth2AuthenticationRequest;->setMode(Lcm/aptoide/accountmanager/ws/LoginMode;)Lcm/aptoide/accountmanager/ws/OAuth2AuthenticationRequest;

    move-result-object v0

    const-string v1, "password"

    .line 49
    invoke-virtual {v0, v1}, Lcm/aptoide/accountmanager/ws/OAuth2AuthenticationRequest;->setGrantType(Ljava/lang/String;)Lcm/aptoide/accountmanager/ws/OAuth2AuthenticationRequest;

    move-result-object v0

    .line 50
    invoke-virtual {v0, p3}, Lcm/aptoide/accountmanager/ws/OAuth2AuthenticationRequest;->setNameForGoogle(Ljava/lang/String;)Lcm/aptoide/accountmanager/ws/OAuth2AuthenticationRequest;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 23
    instance-of v0, p1, Lcm/aptoide/accountmanager/ws/OAuth2AuthenticationRequest;

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 23
    if-ne p1, p0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    instance-of v0, p1, Lcm/aptoide/accountmanager/ws/OAuth2AuthenticationRequest;

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move-object v0, p1

    check-cast v0, Lcm/aptoide/accountmanager/ws/OAuth2AuthenticationRequest;

    invoke-virtual {v0, p0}, Lcm/aptoide/accountmanager/ws/OAuth2AuthenticationRequest;->canEqual(Ljava/lang/Object;)Z

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
    invoke-virtual {p0}, Lcm/aptoide/accountmanager/ws/OAuth2AuthenticationRequest;->getUsername()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcm/aptoide/accountmanager/ws/OAuth2AuthenticationRequest;->getUsername()Ljava/lang/String;

    move-result-object v4

    if-nez v3, :cond_5

    if-eqz v4, :cond_6

    :cond_4
    move v0, v2

    goto :goto_0

    :cond_5
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_6
    invoke-virtual {p0}, Lcm/aptoide/accountmanager/ws/OAuth2AuthenticationRequest;->getPassword()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcm/aptoide/accountmanager/ws/OAuth2AuthenticationRequest;->getPassword()Ljava/lang/String;

    move-result-object v4

    if-nez v3, :cond_8

    if-eqz v4, :cond_9

    :cond_7
    move v0, v2

    goto :goto_0

    :cond_8
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    :cond_9
    invoke-virtual {p0}, Lcm/aptoide/accountmanager/ws/OAuth2AuthenticationRequest;->getMode()Lcm/aptoide/accountmanager/ws/LoginMode;

    move-result-object v3

    invoke-virtual {v0}, Lcm/aptoide/accountmanager/ws/OAuth2AuthenticationRequest;->getMode()Lcm/aptoide/accountmanager/ws/LoginMode;

    move-result-object v4

    if-nez v3, :cond_b

    if-eqz v4, :cond_c

    :cond_a
    move v0, v2

    goto :goto_0

    :cond_b
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    :cond_c
    invoke-virtual {p0}, Lcm/aptoide/accountmanager/ws/OAuth2AuthenticationRequest;->getNameForGoogle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcm/aptoide/accountmanager/ws/OAuth2AuthenticationRequest;->getNameForGoogle()Ljava/lang/String;

    move-result-object v4

    if-nez v3, :cond_e

    if-eqz v4, :cond_f

    :cond_d
    move v0, v2

    goto :goto_0

    :cond_e
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    :cond_f
    invoke-virtual {p0}, Lcm/aptoide/accountmanager/ws/OAuth2AuthenticationRequest;->getGrantType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcm/aptoide/accountmanager/ws/OAuth2AuthenticationRequest;->getGrantType()Ljava/lang/String;

    move-result-object v4

    if-nez v3, :cond_11

    if-eqz v4, :cond_12

    :cond_10
    move v0, v2

    goto :goto_0

    :cond_11
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    :cond_12
    invoke-virtual {p0}, Lcm/aptoide/accountmanager/ws/OAuth2AuthenticationRequest;->getRefreshToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcm/aptoide/accountmanager/ws/OAuth2AuthenticationRequest;->getRefreshToken()Ljava/lang/String;

    move-result-object v4

    if-nez v3, :cond_14

    if-eqz v4, :cond_15

    :cond_13
    move v0, v2

    goto/16 :goto_0

    :cond_14
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    :cond_15
    invoke-virtual {p0}, Lcm/aptoide/accountmanager/ws/OAuth2AuthenticationRequest;->getAptoideClientUUID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcm/aptoide/accountmanager/ws/OAuth2AuthenticationRequest;->getAptoideClientUUID()Ljava/lang/String;

    move-result-object v0

    if-nez v3, :cond_17

    if-eqz v0, :cond_18

    :cond_16
    move v0, v2

    goto/16 :goto_0

    :cond_17
    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    :cond_18
    move v0, v1

    goto/16 :goto_0
.end method

.method public getAptoideClientUUID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcm/aptoide/accountmanager/ws/OAuth2AuthenticationRequest;->aptoideClientUUID:Ljava/lang/String;

    return-object v0
.end method

.method public getGrantType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcm/aptoide/accountmanager/ws/OAuth2AuthenticationRequest;->grantType:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getMap()Lcm/aptoide/accountmanager/ws/BaseBody;
    .locals 1

    .prologue
    .line 23
    invoke-super {p0}, Lcm/aptoide/accountmanager/ws/v3accountManager;->getMap()Lcm/aptoide/accountmanager/ws/BaseBody;

    move-result-object v0

    return-object v0
.end method

.method public getMode()Lcm/aptoide/accountmanager/ws/LoginMode;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcm/aptoide/accountmanager/ws/OAuth2AuthenticationRequest;->mode:Lcm/aptoide/accountmanager/ws/LoginMode;

    return-object v0
.end method

.method public getNameForGoogle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcm/aptoide/accountmanager/ws/OAuth2AuthenticationRequest;->nameForGoogle:Ljava/lang/String;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcm/aptoide/accountmanager/ws/OAuth2AuthenticationRequest;->password:Ljava/lang/String;

    return-object v0
.end method

.method public getRefreshToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcm/aptoide/accountmanager/ws/OAuth2AuthenticationRequest;->refreshToken:Ljava/lang/String;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcm/aptoide/accountmanager/ws/OAuth2AuthenticationRequest;->username:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/16 v1, 0x2b

    .line 23
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x3b

    invoke-virtual {p0}, Lcm/aptoide/accountmanager/ws/OAuth2AuthenticationRequest;->getUsername()Ljava/lang/String;

    move-result-object v2

    mul-int/lit8 v3, v0, 0x3b

    if-nez v2, :cond_0

    move v0, v1

    :goto_0
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcm/aptoide/accountmanager/ws/OAuth2AuthenticationRequest;->getPassword()Ljava/lang/String;

    move-result-object v2

    mul-int/lit8 v3, v0, 0x3b

    if-nez v2, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcm/aptoide/accountmanager/ws/OAuth2AuthenticationRequest;->getMode()Lcm/aptoide/accountmanager/ws/LoginMode;

    move-result-object v2

    mul-int/lit8 v3, v0, 0x3b

    if-nez v2, :cond_2

    move v0, v1

    :goto_2
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcm/aptoide/accountmanager/ws/OAuth2AuthenticationRequest;->getNameForGoogle()Ljava/lang/String;

    move-result-object v2

    mul-int/lit8 v3, v0, 0x3b

    if-nez v2, :cond_3

    move v0, v1

    :goto_3
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcm/aptoide/accountmanager/ws/OAuth2AuthenticationRequest;->getGrantType()Ljava/lang/String;

    move-result-object v2

    mul-int/lit8 v3, v0, 0x3b

    if-nez v2, :cond_4

    move v0, v1

    :goto_4
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcm/aptoide/accountmanager/ws/OAuth2AuthenticationRequest;->getRefreshToken()Ljava/lang/String;

    move-result-object v2

    mul-int/lit8 v3, v0, 0x3b

    if-nez v2, :cond_5

    move v0, v1

    :goto_5
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcm/aptoide/accountmanager/ws/OAuth2AuthenticationRequest;->getAptoideClientUUID()Ljava/lang/String;

    move-result-object v2

    mul-int/lit8 v0, v0, 0x3b

    if-nez v2, :cond_6

    :goto_6
    add-int/2addr v0, v1

    return v0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v0

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

    move-result v1

    goto :goto_6
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
            "Lcm/aptoide/accountmanager/ws/responses/OAuth;",
            ">;"
        }
    .end annotation

    .prologue
    .line 61
    new-instance v0, Lcm/aptoide/pt/networkclient/util/HashMapNotNull;

    invoke-direct {v0}, Lcm/aptoide/pt/networkclient/util/HashMapNotNull;-><init>()V

    .line 63
    const-string v1, "grant_type"

    iget-object v2, p0, Lcm/aptoide/accountmanager/ws/OAuth2AuthenticationRequest;->grantType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcm/aptoide/pt/networkclient/util/HashMapNotNull;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    const-string v1, "client_id"

    const-string v2, "Aptoide"

    invoke-virtual {v0, v1, v2}, Lcm/aptoide/pt/networkclient/util/HashMapNotNull;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    const-string v1, "mode"

    const-string v2, "json"

    invoke-virtual {v0, v1, v2}, Lcm/aptoide/pt/networkclient/util/HashMapNotNull;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    const-string v1, "aptoide_uid"

    iget-object v2, p0, Lcm/aptoide/accountmanager/ws/OAuth2AuthenticationRequest;->aptoideClientUUID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcm/aptoide/pt/networkclient/util/HashMapNotNull;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    iget-object v1, p0, Lcm/aptoide/accountmanager/ws/OAuth2AuthenticationRequest;->mode:Lcm/aptoide/accountmanager/ws/LoginMode;

    if-eqz v1, :cond_0

    .line 69
    sget-object v1, Lcm/aptoide/accountmanager/ws/OAuth2AuthenticationRequest$1;->$SwitchMap$cm$aptoide$accountmanager$ws$LoginMode:[I

    iget-object v2, p0, Lcm/aptoide/accountmanager/ws/OAuth2AuthenticationRequest;->mode:Lcm/aptoide/accountmanager/ws/LoginMode;

    invoke-virtual {v2}, Lcm/aptoide/accountmanager/ws/LoginMode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 91
    :cond_0
    :goto_0
    iget-object v1, p0, Lcm/aptoide/accountmanager/ws/OAuth2AuthenticationRequest;->refreshToken:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 92
    const-string v1, "refresh_token"

    iget-object v2, p0, Lcm/aptoide/accountmanager/ws/OAuth2AuthenticationRequest;->refreshToken:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcm/aptoide/pt/networkclient/util/HashMapNotNull;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    :cond_1
    invoke-static {}, Lcm/aptoide/pt/preferences/Application;->getConfiguration()Lcm/aptoide/pt/preferences/AptoidePreferencesConfiguration;

    move-result-object v1

    invoke-interface {v1}, Lcm/aptoide/pt/preferences/AptoidePreferencesConfiguration;->getExtraId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 96
    const-string v1, "oem_id"

    invoke-static {}, Lcm/aptoide/pt/preferences/Application;->getConfiguration()Lcm/aptoide/pt/preferences/AptoidePreferencesConfiguration;

    move-result-object v2

    invoke-interface {v2}, Lcm/aptoide/pt/preferences/AptoidePreferencesConfiguration;->getExtraId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcm/aptoide/pt/networkclient/util/HashMapNotNull;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    :cond_2
    invoke-interface {p1, v0}, Lcm/aptoide/accountmanager/ws/v3accountManager$Interfaces;->oauth2Authentication(Lcm/aptoide/pt/networkclient/util/HashMapNotNull;)Lrx/d;

    move-result-object v0

    return-object v0

    .line 71
    :pswitch_0
    const-string v1, "username"

    iget-object v2, p0, Lcm/aptoide/accountmanager/ws/OAuth2AuthenticationRequest;->username:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcm/aptoide/pt/networkclient/util/HashMapNotNull;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    const-string v1, "password"

    iget-object v2, p0, Lcm/aptoide/accountmanager/ws/OAuth2AuthenticationRequest;->password:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcm/aptoide/pt/networkclient/util/HashMapNotNull;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 75
    :pswitch_1
    const-string v1, "authMode"

    const-string v2, "google"

    invoke-virtual {v0, v1, v2}, Lcm/aptoide/pt/networkclient/util/HashMapNotNull;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    const-string v1, "oauthUserName"

    iget-object v2, p0, Lcm/aptoide/accountmanager/ws/OAuth2AuthenticationRequest;->nameForGoogle:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcm/aptoide/pt/networkclient/util/HashMapNotNull;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    const-string v1, "oauthToken"

    iget-object v2, p0, Lcm/aptoide/accountmanager/ws/OAuth2AuthenticationRequest;->password:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcm/aptoide/pt/networkclient/util/HashMapNotNull;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 80
    :pswitch_2
    const-string v1, "authMode"

    const-string v2, "facebook"

    invoke-virtual {v0, v1, v2}, Lcm/aptoide/pt/networkclient/util/HashMapNotNull;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    const-string v1, "oauthToken"

    iget-object v2, p0, Lcm/aptoide/accountmanager/ws/OAuth2AuthenticationRequest;->password:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcm/aptoide/pt/networkclient/util/HashMapNotNull;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 84
    :pswitch_3
    const-string v1, "oauthUserName"

    iget-object v2, p0, Lcm/aptoide/accountmanager/ws/OAuth2AuthenticationRequest;->username:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcm/aptoide/pt/networkclient/util/HashMapNotNull;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    const-string v1, "oauthToken"

    iget-object v2, p0, Lcm/aptoide/accountmanager/ws/OAuth2AuthenticationRequest;->password:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcm/aptoide/pt/networkclient/util/HashMapNotNull;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    const-string v1, "authMode"

    const-string v2, "aban"

    invoke-virtual {v0, v1, v2}, Lcm/aptoide/pt/networkclient/util/HashMapNotNull;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    const-string v1, "oauthUser"

    iget-object v2, p0, Lcm/aptoide/accountmanager/ws/OAuth2AuthenticationRequest;->nameForGoogle:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcm/aptoide/pt/networkclient/util/HashMapNotNull;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 69
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected bridge synthetic loadDataFromNetwork(Ljava/lang/Object;Z)Lrx/d;
    .locals 1

    .prologue
    .line 23
    check-cast p1, Lcm/aptoide/accountmanager/ws/v3accountManager$Interfaces;

    invoke-virtual {p0, p1, p2}, Lcm/aptoide/accountmanager/ws/OAuth2AuthenticationRequest;->loadDataFromNetwork(Lcm/aptoide/accountmanager/ws/v3accountManager$Interfaces;Z)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic observe(Z)Lrx/d;
    .locals 1

    .prologue
    .line 23
    invoke-super {p0, p1}, Lcm/aptoide/accountmanager/ws/v3accountManager;->observe(Z)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public setAptoideClientUUID(Ljava/lang/String;)Lcm/aptoide/accountmanager/ws/OAuth2AuthenticationRequest;
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcm/aptoide/accountmanager/ws/OAuth2AuthenticationRequest;->aptoideClientUUID:Ljava/lang/String;

    return-object p0
.end method

.method public setGrantType(Ljava/lang/String;)Lcm/aptoide/accountmanager/ws/OAuth2AuthenticationRequest;
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcm/aptoide/accountmanager/ws/OAuth2AuthenticationRequest;->grantType:Ljava/lang/String;

    return-object p0
.end method

.method public setMode(Lcm/aptoide/accountmanager/ws/LoginMode;)Lcm/aptoide/accountmanager/ws/OAuth2AuthenticationRequest;
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcm/aptoide/accountmanager/ws/OAuth2AuthenticationRequest;->mode:Lcm/aptoide/accountmanager/ws/LoginMode;

    return-object p0
.end method

.method public setNameForGoogle(Ljava/lang/String;)Lcm/aptoide/accountmanager/ws/OAuth2AuthenticationRequest;
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcm/aptoide/accountmanager/ws/OAuth2AuthenticationRequest;->nameForGoogle:Ljava/lang/String;

    return-object p0
.end method

.method public setPassword(Ljava/lang/String;)Lcm/aptoide/accountmanager/ws/OAuth2AuthenticationRequest;
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcm/aptoide/accountmanager/ws/OAuth2AuthenticationRequest;->password:Ljava/lang/String;

    return-object p0
.end method

.method public setRefreshToken(Ljava/lang/String;)Lcm/aptoide/accountmanager/ws/OAuth2AuthenticationRequest;
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcm/aptoide/accountmanager/ws/OAuth2AuthenticationRequest;->refreshToken:Ljava/lang/String;

    return-object p0
.end method

.method public setUsername(Ljava/lang/String;)Lcm/aptoide/accountmanager/ws/OAuth2AuthenticationRequest;
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcm/aptoide/accountmanager/ws/OAuth2AuthenticationRequest;->username:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OAuth2AuthenticationRequest(username="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/accountmanager/ws/OAuth2AuthenticationRequest;->getUsername()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", password="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/accountmanager/ws/OAuth2AuthenticationRequest;->getPassword()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/accountmanager/ws/OAuth2AuthenticationRequest;->getMode()Lcm/aptoide/accountmanager/ws/LoginMode;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", nameForGoogle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/accountmanager/ws/OAuth2AuthenticationRequest;->getNameForGoogle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", grantType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/accountmanager/ws/OAuth2AuthenticationRequest;->getGrantType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", refreshToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/accountmanager/ws/OAuth2AuthenticationRequest;->getRefreshToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", aptoideClientUUID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/accountmanager/ws/OAuth2AuthenticationRequest;->getAptoideClientUUID()Ljava/lang/String;

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
