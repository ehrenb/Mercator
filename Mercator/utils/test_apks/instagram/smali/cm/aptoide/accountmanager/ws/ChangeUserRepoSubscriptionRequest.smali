.class public Lcm/aptoide/accountmanager/ws/ChangeUserRepoSubscriptionRequest;
.super Lcm/aptoide/accountmanager/ws/v3accountManager;
.source "ChangeUserRepoSubscriptionRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcm/aptoide/accountmanager/ws/v3accountManager",
        "<",
        "Lcm/aptoide/accountmanager/ws/responses/GenericResponseV3;",
        ">;"
    }
.end annotation


# instance fields
.field private storeName:Ljava/lang/String;

.field private subscribe:Z


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcm/aptoide/accountmanager/ws/v3accountManager;-><init>()V

    .line 23
    return-void
.end method

.method constructor <init>(Lokhttp3/OkHttpClient;Lretrofit2/Converter$Factory;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcm/aptoide/accountmanager/ws/v3accountManager;-><init>(Lokhttp3/OkHttpClient;Lretrofit2/Converter$Factory;)V

    .line 27
    return-void
.end method

.method public static of(Ljava/lang/String;Z)Lcm/aptoide/accountmanager/ws/ChangeUserRepoSubscriptionRequest;
    .locals 1

    .prologue
    .line 31
    new-instance v0, Lcm/aptoide/accountmanager/ws/ChangeUserRepoSubscriptionRequest;

    invoke-direct {v0}, Lcm/aptoide/accountmanager/ws/ChangeUserRepoSubscriptionRequest;-><init>()V

    .line 34
    iput-object p0, v0, Lcm/aptoide/accountmanager/ws/ChangeUserRepoSubscriptionRequest;->storeName:Ljava/lang/String;

    .line 35
    iput-boolean p1, v0, Lcm/aptoide/accountmanager/ws/ChangeUserRepoSubscriptionRequest;->subscribe:Z

    .line 37
    return-object v0
.end method


# virtual methods
.method public bridge synthetic getMap()Lcm/aptoide/accountmanager/ws/BaseBody;
    .locals 1

    .prologue
    .line 17
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
            "Lcm/aptoide/accountmanager/ws/responses/GenericResponseV3;",
            ">;"
        }
    .end annotation

    .prologue
    .line 43
    iget-object v0, p0, Lcm/aptoide/accountmanager/ws/ChangeUserRepoSubscriptionRequest;->map:Lcm/aptoide/accountmanager/ws/BaseBody;

    const-string v1, "mode"

    const-string v2, "json"

    invoke-virtual {v0, v1, v2}, Lcm/aptoide/accountmanager/ws/BaseBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    iget-object v0, p0, Lcm/aptoide/accountmanager/ws/ChangeUserRepoSubscriptionRequest;->map:Lcm/aptoide/accountmanager/ws/BaseBody;

    const-string v1, "repo"

    iget-object v2, p0, Lcm/aptoide/accountmanager/ws/ChangeUserRepoSubscriptionRequest;->storeName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcm/aptoide/accountmanager/ws/BaseBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    iget-object v1, p0, Lcm/aptoide/accountmanager/ws/ChangeUserRepoSubscriptionRequest;->map:Lcm/aptoide/accountmanager/ws/BaseBody;

    const-string v2, "status"

    iget-boolean v0, p0, Lcm/aptoide/accountmanager/ws/ChangeUserRepoSubscriptionRequest;->subscribe:Z

    if-eqz v0, :cond_0

    const-string v0, "subscribed"

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcm/aptoide/accountmanager/ws/BaseBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    iget-object v0, p0, Lcm/aptoide/accountmanager/ws/ChangeUserRepoSubscriptionRequest;->map:Lcm/aptoide/accountmanager/ws/BaseBody;

    const-string v1, "access_token"

    invoke-static {}, Lcm/aptoide/accountmanager/AptoideAccountManager;->getAccessToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcm/aptoide/accountmanager/ws/BaseBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    iget-object v0, p0, Lcm/aptoide/accountmanager/ws/ChangeUserRepoSubscriptionRequest;->map:Lcm/aptoide/accountmanager/ws/BaseBody;

    invoke-interface {p1, v0}, Lcm/aptoide/accountmanager/ws/v3accountManager$Interfaces;->changeUserRepoSubscription(Lcm/aptoide/pt/networkclient/util/HashMapNotNull;)Lrx/d;

    move-result-object v0

    return-object v0

    .line 45
    :cond_0
    const-string v0, "unsubscribed"

    goto :goto_0
.end method

.method protected bridge synthetic loadDataFromNetwork(Ljava/lang/Object;Z)Lrx/d;
    .locals 1

    .prologue
    .line 17
    check-cast p1, Lcm/aptoide/accountmanager/ws/v3accountManager$Interfaces;

    invoke-virtual {p0, p1, p2}, Lcm/aptoide/accountmanager/ws/ChangeUserRepoSubscriptionRequest;->loadDataFromNetwork(Lcm/aptoide/accountmanager/ws/v3accountManager$Interfaces;Z)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic observe(Z)Lrx/d;
    .locals 1

    .prologue
    .line 17
    invoke-super {p0, p1}, Lcm/aptoide/accountmanager/ws/v3accountManager;->observe(Z)Lrx/d;

    move-result-object v0

    return-object v0
.end method
