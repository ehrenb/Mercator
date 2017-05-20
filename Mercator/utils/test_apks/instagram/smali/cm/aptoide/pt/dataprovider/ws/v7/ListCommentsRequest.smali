.class public Lcm/aptoide/pt/dataprovider/ws/v7/ListCommentsRequest;
.super Lcm/aptoide/pt/dataprovider/ws/v7/V7;
.source "ListCommentsRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcm/aptoide/pt/dataprovider/ws/v7/ListCommentsRequest$Body;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcm/aptoide/pt/dataprovider/ws/v7/V7",
        "<",
        "Lcm/aptoide/pt/model/v7/ListComments;",
        "Lcm/aptoide/pt/dataprovider/ws/v7/ListCommentsRequest$Body;",
        ">;"
    }
.end annotation


# static fields
.field private static url:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcm/aptoide/pt/dataprovider/ws/v7/ListCommentsRequest$Body;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lcm/aptoide/pt/dataprovider/ws/v7/V7;-><init>(Lcm/aptoide/pt/dataprovider/ws/v7/AccessTokenBody;Ljava/lang/String;)V

    .line 24
    return-void
.end method

.method public static of(JIILjava/lang/String;Ljava/lang/String;Z)Lcm/aptoide/pt/dataprovider/ws/v7/ListCommentsRequest;
    .locals 6

    .prologue
    .line 72
    move-wide v0, p0

    move v2, p3

    move-object v3, p4

    move-object v4, p5

    move v5, p6

    .line 73
    invoke-static/range {v0 .. v5}, Lcm/aptoide/pt/dataprovider/ws/v7/ListCommentsRequest;->of(JILjava/lang/String;Ljava/lang/String;Z)Lcm/aptoide/pt/dataprovider/ws/v7/ListCommentsRequest;

    move-result-object v1

    .line 74
    invoke-virtual {v1}, Lcm/aptoide/pt/dataprovider/ws/v7/ListCommentsRequest;->getBody()Lcm/aptoide/pt/dataprovider/ws/v7/AccessTokenBody;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/dataprovider/ws/v7/ListCommentsRequest$Body;

    invoke-virtual {v0, p2}, Lcm/aptoide/pt/dataprovider/ws/v7/ListCommentsRequest$Body;->setOffset(I)V

    .line 75
    return-object v1
.end method

.method public static of(JILcm/aptoide/pt/dataprovider/ws/v7/BaseRequestWithStore$StoreCredentials;Ljava/lang/String;Ljava/lang/String;Z)Lcm/aptoide/pt/dataprovider/ws/v7/ListCommentsRequest;
    .locals 8

    .prologue
    .line 53
    invoke-virtual {p3}, Lcm/aptoide/pt/dataprovider/ws/v7/BaseRequestWithStore$StoreCredentials;->getUsername()Ljava/lang/String;

    move-result-object v4

    .line 54
    invoke-virtual {p3}, Lcm/aptoide/pt/dataprovider/ws/v7/BaseRequestWithStore$StoreCredentials;->getPasswordSha1()Ljava/lang/String;

    move-result-object v5

    .line 55
    new-instance v6, Lcm/aptoide/pt/dataprovider/ws/BaseBodyDecorator;

    invoke-direct {v6, p5}, Lcm/aptoide/pt/dataprovider/ws/BaseBodyDecorator;-><init>(Ljava/lang/String;)V

    .line 57
    new-instance v0, Lcm/aptoide/pt/dataprovider/ws/v7/ListCommentsRequest$Body;

    .line 58
    invoke-static {}, Lcm/aptoide/pt/preferences/managed/ManagerPreferences;->getAndResetForceServerRefresh()Z

    move-result v2

    sget-object v3, Lcm/aptoide/pt/dataprovider/ws/v7/Order;->desc:Lcm/aptoide/pt/dataprovider/ws/v7/Order;

    move v1, p2

    invoke-direct/range {v0 .. v5}, Lcm/aptoide/pt/dataprovider/ws/v7/ListCommentsRequest$Body;-><init>(IZLcm/aptoide/pt/dataprovider/ws/v7/Order;Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    if-eqz p6, :cond_0

    .line 62
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcm/aptoide/pt/dataprovider/ws/v7/ListCommentsRequest$Body;->setReviewId(Ljava/lang/Long;)V

    .line 67
    :goto_0
    new-instance v1, Lcm/aptoide/pt/dataprovider/ws/v7/ListCommentsRequest;

    invoke-virtual {v6, v0, p4}, Lcm/aptoide/pt/dataprovider/ws/BaseBodyDecorator;->decorate(Lcm/aptoide/pt/dataprovider/ws/v7/BaseBody;Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/BaseBody;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/dataprovider/ws/v7/ListCommentsRequest$Body;

    const-string v2, "https://ws75.aptoide.com/api/7/"

    invoke-direct {v1, v0, v2}, Lcm/aptoide/pt/dataprovider/ws/v7/ListCommentsRequest;-><init>(Lcm/aptoide/pt/dataprovider/ws/v7/ListCommentsRequest$Body;Ljava/lang/String;)V

    return-object v1

    .line 64
    :cond_0
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcm/aptoide/pt/dataprovider/ws/v7/ListCommentsRequest$Body;->setStoreId(Ljava/lang/Long;)V

    goto :goto_0
.end method

.method public static of(JILjava/lang/String;Ljava/lang/String;Z)Lcm/aptoide/pt/dataprovider/ws/v7/ListCommentsRequest;
    .locals 4

    .prologue
    .line 80
    new-instance v0, Lcm/aptoide/pt/dataprovider/ws/BaseBodyDecorator;

    invoke-direct {v0, p4}, Lcm/aptoide/pt/dataprovider/ws/BaseBodyDecorator;-><init>(Ljava/lang/String;)V

    .line 81
    new-instance v1, Lcm/aptoide/pt/dataprovider/ws/v7/ListCommentsRequest$Body;

    invoke-static {}, Lcm/aptoide/pt/preferences/managed/ManagerPreferences;->getAndResetForceServerRefresh()Z

    move-result v2

    sget-object v3, Lcm/aptoide/pt/dataprovider/ws/v7/Order;->desc:Lcm/aptoide/pt/dataprovider/ws/v7/Order;

    invoke-direct {v1, p2, v2, v3}, Lcm/aptoide/pt/dataprovider/ws/v7/ListCommentsRequest$Body;-><init>(IZLcm/aptoide/pt/dataprovider/ws/v7/Order;)V

    .line 83
    if-eqz p5, :cond_0

    .line 84
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcm/aptoide/pt/dataprovider/ws/v7/ListCommentsRequest$Body;->setReviewId(Ljava/lang/Long;)V

    .line 89
    :goto_0
    new-instance v2, Lcm/aptoide/pt/dataprovider/ws/v7/ListCommentsRequest;

    invoke-virtual {v0, v1, p3}, Lcm/aptoide/pt/dataprovider/ws/BaseBodyDecorator;->decorate(Lcm/aptoide/pt/dataprovider/ws/v7/BaseBody;Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/BaseBody;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/dataprovider/ws/v7/ListCommentsRequest$Body;

    const-string v1, "https://ws75.aptoide.com/api/7/"

    invoke-direct {v2, v0, v1}, Lcm/aptoide/pt/dataprovider/ws/v7/ListCommentsRequest;-><init>(Lcm/aptoide/pt/dataprovider/ws/v7/ListCommentsRequest$Body;Ljava/lang/String;)V

    return-object v2

    .line 86
    :cond_0
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcm/aptoide/pt/dataprovider/ws/v7/ListCommentsRequest$Body;->setStoreId(Ljava/lang/Long;)V

    goto :goto_0
.end method

.method public static of(Ljava/lang/String;JILcm/aptoide/pt/dataprovider/ws/v7/BaseRequestWithStore$StoreCredentials;Ljava/lang/String;Ljava/lang/String;Z)Lcm/aptoide/pt/dataprovider/ws/v7/ListCommentsRequest;
    .locals 1

    .prologue
    .line 46
    sput-object p0, Lcm/aptoide/pt/dataprovider/ws/v7/ListCommentsRequest;->url:Ljava/lang/String;

    .line 47
    invoke-static/range {p1 .. p7}, Lcm/aptoide/pt/dataprovider/ws/v7/ListCommentsRequest;->of(JILcm/aptoide/pt/dataprovider/ws/v7/BaseRequestWithStore$StoreCredentials;Ljava/lang/String;Ljava/lang/String;Z)Lcm/aptoide/pt/dataprovider/ws/v7/ListCommentsRequest;

    move-result-object v0

    return-object v0
.end method

.method public static ofStoreAction(Ljava/lang/String;ZLcm/aptoide/pt/dataprovider/ws/v7/BaseRequestWithStore$StoreCredentials;Ljava/lang/String;Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/ListCommentsRequest;
    .locals 3

    .prologue
    .line 30
    sput-object p0, Lcm/aptoide/pt/dataprovider/ws/v7/ListCommentsRequest;->url:Ljava/lang/String;

    .line 32
    new-instance v0, Lcm/aptoide/pt/dataprovider/ws/v7/ListCommentsRequest$Body;

    sget-object v1, Lcm/aptoide/pt/dataprovider/ws/v7/Order;->desc:Lcm/aptoide/pt/dataprovider/ws/v7/Order;

    invoke-direct {v0, p1, v1}, Lcm/aptoide/pt/dataprovider/ws/v7/ListCommentsRequest$Body;-><init>(ZLcm/aptoide/pt/dataprovider/ws/v7/Order;)V

    .line 33
    if-eqz p2, :cond_0

    .line 34
    invoke-virtual {p2}, Lcm/aptoide/pt/dataprovider/ws/v7/BaseRequestWithStore$StoreCredentials;->getUsername()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcm/aptoide/pt/dataprovider/ws/v7/ListCommentsRequest$Body;->setStoreUser(Ljava/lang/String;)V

    .line 35
    invoke-virtual {p2}, Lcm/aptoide/pt/dataprovider/ws/v7/BaseRequestWithStore$StoreCredentials;->getPasswordSha1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcm/aptoide/pt/dataprovider/ws/v7/ListCommentsRequest$Body;->setStorePassSha1(Ljava/lang/String;)V

    .line 36
    invoke-virtual {p2}, Lcm/aptoide/pt/dataprovider/ws/v7/BaseRequestWithStore$StoreCredentials;->getId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcm/aptoide/pt/dataprovider/ws/v7/ListCommentsRequest$Body;->setStoreId(Ljava/lang/Long;)V

    .line 39
    :cond_0
    new-instance v1, Lcm/aptoide/pt/dataprovider/ws/BaseBodyDecorator;

    invoke-direct {v1, p4}, Lcm/aptoide/pt/dataprovider/ws/BaseBodyDecorator;-><init>(Ljava/lang/String;)V

    .line 40
    new-instance v2, Lcm/aptoide/pt/dataprovider/ws/v7/ListCommentsRequest;

    invoke-virtual {v1, v0, p3}, Lcm/aptoide/pt/dataprovider/ws/BaseBodyDecorator;->decorate(Lcm/aptoide/pt/dataprovider/ws/v7/BaseBody;Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/BaseBody;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/dataprovider/ws/v7/ListCommentsRequest$Body;

    const-string v1, "https://ws75.aptoide.com/api/7/"

    invoke-direct {v2, v0, v1}, Lcm/aptoide/pt/dataprovider/ws/v7/ListCommentsRequest;-><init>(Lcm/aptoide/pt/dataprovider/ws/v7/ListCommentsRequest$Body;Ljava/lang/String;)V

    return-object v2
.end method

.method public static ofTimeline(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/ListCommentsRequest;
    .locals 3

    .prologue
    .line 95
    sput-object p0, Lcm/aptoide/pt/dataprovider/ws/v7/ListCommentsRequest;->url:Ljava/lang/String;

    .line 97
    new-instance v0, Lcm/aptoide/pt/dataprovider/ws/v7/ListCommentsRequest$Body;

    sget-object v1, Lcm/aptoide/pt/dataprovider/ws/v7/Order;->desc:Lcm/aptoide/pt/dataprovider/ws/v7/Order;

    invoke-direct {v0, p1, v1}, Lcm/aptoide/pt/dataprovider/ws/v7/ListCommentsRequest$Body;-><init>(ZLcm/aptoide/pt/dataprovider/ws/v7/Order;)V

    .line 101
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcm/aptoide/pt/dataprovider/ws/v7/ListCommentsRequest$Body;->setCommentType(Lcm/aptoide/pt/dataprovider/util/CommentType;)V

    .line 102
    invoke-virtual {v0, p2}, Lcm/aptoide/pt/dataprovider/ws/v7/ListCommentsRequest$Body;->setTimelineCardId(Ljava/lang/String;)V

    .line 104
    new-instance v1, Lcm/aptoide/pt/dataprovider/ws/BaseBodyDecorator;

    invoke-direct {v1, p4}, Lcm/aptoide/pt/dataprovider/ws/BaseBodyDecorator;-><init>(Ljava/lang/String;)V

    .line 105
    new-instance v2, Lcm/aptoide/pt/dataprovider/ws/v7/ListCommentsRequest;

    invoke-virtual {v1, v0, p3}, Lcm/aptoide/pt/dataprovider/ws/BaseBodyDecorator;->decorate(Lcm/aptoide/pt/dataprovider/ws/v7/BaseBody;Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/BaseBody;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/dataprovider/ws/v7/ListCommentsRequest$Body;

    const-string v1, "https://ws75.aptoide.com/api/7/"

    invoke-direct {v2, v0, v1}, Lcm/aptoide/pt/dataprovider/ws/v7/ListCommentsRequest;-><init>(Lcm/aptoide/pt/dataprovider/ws/v7/ListCommentsRequest$Body;Ljava/lang/String;)V

    return-object v2
.end method


# virtual methods
.method protected loadDataFromNetwork(Lcm/aptoide/pt/dataprovider/ws/v7/V7$Interfaces;Z)Lrx/d;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcm/aptoide/pt/dataprovider/ws/v7/V7$Interfaces;",
            "Z)",
            "Lrx/d",
            "<",
            "Lcm/aptoide/pt/model/v7/ListComments;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 111
    sget-object v0, Lcm/aptoide/pt/dataprovider/ws/v7/ListCommentsRequest;->url:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/ListCommentsRequest;->body:Lcm/aptoide/pt/dataprovider/ws/v7/AccessTokenBody;

    check-cast v0, Lcm/aptoide/pt/dataprovider/ws/v7/ListCommentsRequest$Body;

    invoke-interface {p1, v0, v2}, Lcm/aptoide/pt/dataprovider/ws/v7/V7$Interfaces;->listComments(Lcm/aptoide/pt/dataprovider/ws/v7/ListCommentsRequest$Body;Z)Lrx/d;

    move-result-object v0

    .line 114
    :goto_0
    return-object v0

    :cond_0
    sget-object v1, Lcm/aptoide/pt/dataprovider/ws/v7/ListCommentsRequest;->url:Ljava/lang/String;

    iget-object v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/ListCommentsRequest;->body:Lcm/aptoide/pt/dataprovider/ws/v7/AccessTokenBody;

    check-cast v0, Lcm/aptoide/pt/dataprovider/ws/v7/ListCommentsRequest$Body;

    invoke-interface {p1, v1, v0, v2}, Lcm/aptoide/pt/dataprovider/ws/v7/V7$Interfaces;->listComments(Ljava/lang/String;Lcm/aptoide/pt/dataprovider/ws/v7/ListCommentsRequest$Body;Z)Lrx/d;

    move-result-object v0

    goto :goto_0
.end method

.method protected bridge synthetic loadDataFromNetwork(Ljava/lang/Object;Z)Lrx/d;
    .locals 1

    .prologue
    .line 18
    check-cast p1, Lcm/aptoide/pt/dataprovider/ws/v7/V7$Interfaces;

    invoke-virtual {p0, p1, p2}, Lcm/aptoide/pt/dataprovider/ws/v7/ListCommentsRequest;->loadDataFromNetwork(Lcm/aptoide/pt/dataprovider/ws/v7/V7$Interfaces;Z)Lrx/d;

    move-result-object v0

    return-object v0
.end method
