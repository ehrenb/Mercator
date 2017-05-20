.class public Lcm/aptoide/accountmanager/ws/GetUserRepoSubscriptionRequest;
.super Lcm/aptoide/accountmanager/ws/v3accountManager;
.source "GetUserRepoSubscriptionRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcm/aptoide/accountmanager/ws/v3accountManager",
        "<",
        "Lcm/aptoide/accountmanager/ws/responses/GetUserRepoSubscription;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcm/aptoide/accountmanager/ws/v3accountManager;-><init>()V

    .line 21
    return-void
.end method

.method constructor <init>(Lokhttp3/OkHttpClient;Lretrofit2/Converter$Factory;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lcm/aptoide/accountmanager/ws/v3accountManager;-><init>(Lokhttp3/OkHttpClient;Lretrofit2/Converter$Factory;)V

    .line 25
    return-void
.end method

.method public static of()Lcm/aptoide/accountmanager/ws/GetUserRepoSubscriptionRequest;
    .locals 1

    .prologue
    .line 28
    new-instance v0, Lcm/aptoide/accountmanager/ws/GetUserRepoSubscriptionRequest;

    invoke-direct {v0}, Lcm/aptoide/accountmanager/ws/GetUserRepoSubscriptionRequest;-><init>()V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getMap()Lcm/aptoide/accountmanager/ws/BaseBody;
    .locals 1

    .prologue
    .line 18
    invoke-super {p0}, Lcm/aptoide/accountmanager/ws/v3accountManager;->getMap()Lcm/aptoide/accountmanager/ws/BaseBody;

    move-result-object v0

    return-object v0
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
            "Lcm/aptoide/accountmanager/ws/responses/GetUserRepoSubscription;",
            ">;"
        }
    .end annotation

    .prologue
    .line 33
    new-instance v0, Lcm/aptoide/pt/networkclient/util/HashMapNotNull;

    invoke-direct {v0}, Lcm/aptoide/pt/networkclient/util/HashMapNotNull;-><init>()V

    .line 35
    const-string v1, "mode"

    const-string v2, "json"

    invoke-virtual {v0, v1, v2}, Lcm/aptoide/pt/networkclient/util/HashMapNotNull;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    const-string v1, "access_token"

    invoke-static {}, Lcm/aptoide/accountmanager/AptoideAccountManager;->getAccessToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcm/aptoide/pt/networkclient/util/HashMapNotNull;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    invoke-interface {p1, v0}, Lcm/aptoide/accountmanager/ws/v3accountManager$Interfaces;->getUserRepos(Lcm/aptoide/pt/networkclient/util/HashMapNotNull;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic loadDataFromNetwork(Ljava/lang/Object;Z)Lrx/d;
    .locals 1

    .prologue
    .line 18
    check-cast p1, Lcm/aptoide/accountmanager/ws/v3accountManager$Interfaces;

    invoke-virtual {p0, p1, p2}, Lcm/aptoide/accountmanager/ws/GetUserRepoSubscriptionRequest;->loadDataFromNetwork(Lcm/aptoide/accountmanager/ws/v3accountManager$Interfaces;Z)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic observe(Z)Lrx/d;
    .locals 1

    .prologue
    .line 18
    invoke-super {p0, p1}, Lcm/aptoide/accountmanager/ws/v3accountManager;->observe(Z)Lrx/d;

    move-result-object v0

    return-object v0
.end method
