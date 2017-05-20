.class interface abstract Lcm/aptoide/accountmanager/ws/v3accountManager$Interfaces;
.super Ljava/lang/Object;
.source "v3accountManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcm/aptoide/accountmanager/ws/v3accountManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "Interfaces"
.end annotation


# virtual methods
.method public abstract changeUserRepoSubscription(Lcm/aptoide/pt/networkclient/util/HashMapNotNull;)Lrx/d;
    .param p1    # Lcm/aptoide/pt/networkclient/util/HashMapNotNull;
        .annotation runtime Lretrofit2/http/FieldMap;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcm/aptoide/pt/networkclient/util/HashMapNotNull",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lrx/d",
            "<",
            "Lcm/aptoide/accountmanager/ws/responses/GenericResponseV3;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/FormUrlEncoded;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "3/changeUserRepoSubscription"
    .end annotation
.end method

.method public abstract changeUserSettings(Lcm/aptoide/pt/networkclient/util/HashMapNotNull;)Lrx/d;
    .param p1    # Lcm/aptoide/pt/networkclient/util/HashMapNotNull;
        .annotation runtime Lretrofit2/http/FieldMap;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcm/aptoide/pt/networkclient/util/HashMapNotNull",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lrx/d",
            "<",
            "Lcm/aptoide/accountmanager/ws/responses/ChangeUserSettingsResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/FormUrlEncoded;
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "X-Bypass-Cache:true"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "3/changeUserSettings"
    .end annotation
.end method

.method public abstract checkUserCredentials(Lcm/aptoide/pt/networkclient/util/HashMapNotNull;)Lrx/d;
    .param p1    # Lcm/aptoide/pt/networkclient/util/HashMapNotNull;
        .annotation runtime Lretrofit2/http/FieldMap;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcm/aptoide/pt/networkclient/util/HashMapNotNull",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lrx/d",
            "<",
            "Lcm/aptoide/accountmanager/ws/responses/CheckUserCredentialsJson;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/FormUrlEncoded;
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "X-Bypass-Cache:true"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "3/checkUserCredentials"
    .end annotation
.end method

.method public abstract createUser(Lcm/aptoide/pt/networkclient/util/HashMapNotNull;)Lrx/d;
    .param p1    # Lcm/aptoide/pt/networkclient/util/HashMapNotNull;
        .annotation runtime Lretrofit2/http/FieldMap;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcm/aptoide/pt/networkclient/util/HashMapNotNull",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lrx/d",
            "<",
            "Lcm/aptoide/accountmanager/ws/responses/OAuth;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/FormUrlEncoded;
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "X-Bypass-Cache:true"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "3/createUser"
    .end annotation
.end method

.method public abstract createUserWithFile(Lokhttp3/MultipartBody$Part;Lcm/aptoide/pt/networkclient/util/HashMapNotNull;)Lrx/d;
    .param p1    # Lokhttp3/MultipartBody$Part;
        .annotation runtime Lretrofit2/http/Part;
        .end annotation
    .end param
    .param p2    # Lcm/aptoide/pt/networkclient/util/HashMapNotNull;
        .annotation runtime Lretrofit2/http/PartMap;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/MultipartBody$Part;",
            "Lcm/aptoide/pt/networkclient/util/HashMapNotNull",
            "<",
            "Ljava/lang/String;",
            "Lokhttp3/RequestBody;",
            ">;)",
            "Lrx/d",
            "<",
            "Lcm/aptoide/accountmanager/ws/responses/OAuth;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "X-Bypass-Cache:true"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/Multipart;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "3/createUser"
    .end annotation
.end method

.method public abstract getUserInfo(Lcm/aptoide/pt/networkclient/util/HashMapNotNull;)Lrx/d;
    .param p1    # Lcm/aptoide/pt/networkclient/util/HashMapNotNull;
        .annotation runtime Lretrofit2/http/FieldMap;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcm/aptoide/pt/networkclient/util/HashMapNotNull",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lrx/d",
            "<",
            "Lcm/aptoide/accountmanager/ws/responses/CheckUserCredentialsJson;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/FormUrlEncoded;
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "X-Bypass-Cache:true"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "3/getUserInfo"
    .end annotation
.end method

.method public abstract getUserRepos(Lcm/aptoide/pt/networkclient/util/HashMapNotNull;)Lrx/d;
    .param p1    # Lcm/aptoide/pt/networkclient/util/HashMapNotNull;
        .annotation runtime Lretrofit2/http/FieldMap;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcm/aptoide/pt/networkclient/util/HashMapNotNull",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lrx/d",
            "<",
            "Lcm/aptoide/accountmanager/ws/responses/GetUserRepoSubscription;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/FormUrlEncoded;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "3/getUserRepoSubscription"
    .end annotation
.end method

.method public abstract oauth2Authentication(Lcm/aptoide/pt/networkclient/util/HashMapNotNull;)Lrx/d;
    .param p1    # Lcm/aptoide/pt/networkclient/util/HashMapNotNull;
        .annotation runtime Lretrofit2/http/FieldMap;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcm/aptoide/pt/networkclient/util/HashMapNotNull",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lrx/d",
            "<",
            "Lcm/aptoide/accountmanager/ws/responses/OAuth;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/FormUrlEncoded;
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "X-Bypass-Cache:true"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "3/oauth2Authentication"
    .end annotation
.end method
