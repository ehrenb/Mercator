.class public Lcm/aptoide/pt/dataprovider/ws/v7/ListReviewsRequest;
.super Lcm/aptoide/pt/dataprovider/ws/v7/V7;
.source "ListReviewsRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcm/aptoide/pt/dataprovider/ws/v7/ListReviewsRequest$Body;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcm/aptoide/pt/dataprovider/ws/v7/V7",
        "<",
        "Lcm/aptoide/pt/model/v7/ListReviews;",
        "Lcm/aptoide/pt/dataprovider/ws/v7/ListReviewsRequest$Body;",
        ">;"
    }
.end annotation


# static fields
.field private static final MAX_COMMENTS:I = 0xa

.field private static final MAX_REVIEWS:I = 0xa


# direct methods
.method private constructor <init>(Lcm/aptoide/pt/dataprovider/ws/v7/ListReviewsRequest$Body;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 38
    new-instance v0, Lcm/aptoide/pt/dataprovider/ws/v7/ListReviewsRequest$1;

    invoke-direct {v0}, Lcm/aptoide/pt/dataprovider/ws/v7/ListReviewsRequest$1;-><init>()V

    .line 42
    invoke-static {}, Lcm/aptoide/pt/dataprovider/ws/v7/ListReviewsRequest;->isDebug()Z

    move-result v1

    .line 38
    invoke-static {v0, v1}, Lcm/aptoide/pt/networkclient/okhttp/OkHttpClientFactory;->getSingletonClient(Lcm/aptoide/pt/networkclient/okhttp/UserAgentGenerator;Z)Lokhttp3/OkHttpClient;

    move-result-object v0

    .line 42
    invoke-static {}, Lcm/aptoide/pt/networkclient/WebService;->getDefaultConverter()Lretrofit2/Converter$Factory;

    move-result-object v1

    .line 38
    invoke-direct {p0, p1, v0, v1, p2}, Lcm/aptoide/pt/dataprovider/ws/v7/V7;-><init>(Lcm/aptoide/pt/dataprovider/ws/v7/AccessTokenBody;Lokhttp3/OkHttpClient;Lretrofit2/Converter$Factory;Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method public static of(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/ListReviewsRequest;
    .locals 7

    .prologue
    .line 55
    new-instance v6, Lcm/aptoide/pt/dataprovider/ws/BaseBodyDecorator;

    invoke-direct {v6, p5}, Lcm/aptoide/pt/dataprovider/ws/BaseBodyDecorator;-><init>(Ljava/lang/String;)V

    .line 56
    new-instance v0, Lcm/aptoide/pt/dataprovider/ws/v7/ListReviewsRequest$Body;

    .line 57
    invoke-static {}, Lcm/aptoide/pt/preferences/managed/ManagerPreferences;->getAndResetForceServerRefresh()Z

    move-result v5

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcm/aptoide/pt/dataprovider/ws/v7/ListReviewsRequest$Body;-><init>(Ljava/lang/String;Ljava/lang/String;IIZ)V

    .line 58
    new-instance v1, Lcm/aptoide/pt/dataprovider/ws/v7/ListReviewsRequest;

    invoke-virtual {v6, v0, p4}, Lcm/aptoide/pt/dataprovider/ws/BaseBodyDecorator;->decorate(Lcm/aptoide/pt/dataprovider/ws/v7/BaseBody;Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/BaseBody;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/dataprovider/ws/v7/ListReviewsRequest$Body;

    const-string v2, "https://ws75.aptoide.com/api/7/"

    invoke-direct {v1, v0, v2}, Lcm/aptoide/pt/dataprovider/ws/v7/ListReviewsRequest;-><init>(Lcm/aptoide/pt/dataprovider/ws/v7/ListReviewsRequest$Body;Ljava/lang/String;)V

    return-object v1
.end method

.method public static of(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/ListReviewsRequest;
    .locals 6

    .prologue
    const/16 v2, 0xa

    .line 47
    move-object v0, p0

    move-object v1, p1

    move v3, v2

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcm/aptoide/pt/dataprovider/ws/v7/ListReviewsRequest;->of(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/ListReviewsRequest;

    move-result-object v0

    return-object v0
.end method

.method public static ofTopReviews(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/ListReviewsRequest;
    .locals 7

    .prologue
    .line 66
    new-instance v6, Lcm/aptoide/pt/dataprovider/ws/BaseBodyDecorator;

    invoke-direct {v6, p4}, Lcm/aptoide/pt/dataprovider/ws/BaseBodyDecorator;-><init>(Ljava/lang/String;)V

    .line 67
    new-instance v0, Lcm/aptoide/pt/dataprovider/ws/v7/ListReviewsRequest$Body;

    const/4 v4, 0x0

    .line 68
    invoke-static {}, Lcm/aptoide/pt/preferences/managed/ManagerPreferences;->getAndResetForceServerRefresh()Z

    move-result v5

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v5}, Lcm/aptoide/pt/dataprovider/ws/v7/ListReviewsRequest$Body;-><init>(Ljava/lang/String;Ljava/lang/String;IIZ)V

    .line 69
    new-instance v1, Lcm/aptoide/pt/dataprovider/ws/v7/ListReviewsRequest;

    invoke-virtual {v6, v0, p3}, Lcm/aptoide/pt/dataprovider/ws/BaseBodyDecorator;->decorate(Lcm/aptoide/pt/dataprovider/ws/v7/BaseBody;Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/BaseBody;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/dataprovider/ws/v7/ListReviewsRequest$Body;

    const-string v2, "https://ws75.aptoide.com/api/7/"

    invoke-direct {v1, v0, v2}, Lcm/aptoide/pt/dataprovider/ws/v7/ListReviewsRequest;-><init>(Lcm/aptoide/pt/dataprovider/ws/v7/ListReviewsRequest$Body;Ljava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method protected loadDataFromNetwork(Lcm/aptoide/pt/dataprovider/ws/v7/V7$Interfaces;Z)Lrx/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcm/aptoide/pt/dataprovider/ws/v7/V7$Interfaces;",
            "Z)",
            "Lrx/d",
            "<",
            "Lcm/aptoide/pt/model/v7/ListReviews;",
            ">;"
        }
    .end annotation

    .prologue
    .line 75
    iget-object v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/ListReviewsRequest;->body:Lcm/aptoide/pt/dataprovider/ws/v7/AccessTokenBody;

    check-cast v0, Lcm/aptoide/pt/dataprovider/ws/v7/ListReviewsRequest$Body;

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lcm/aptoide/pt/dataprovider/ws/v7/V7$Interfaces;->listReviews(Lcm/aptoide/pt/dataprovider/ws/v7/ListReviewsRequest$Body;Z)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic loadDataFromNetwork(Ljava/lang/Object;Z)Lrx/d;
    .locals 1

    .prologue
    .line 32
    check-cast p1, Lcm/aptoide/pt/dataprovider/ws/v7/V7$Interfaces;

    invoke-virtual {p0, p1, p2}, Lcm/aptoide/pt/dataprovider/ws/v7/ListReviewsRequest;->loadDataFromNetwork(Lcm/aptoide/pt/dataprovider/ws/v7/V7$Interfaces;Z)Lrx/d;

    move-result-object v0

    return-object v0
.end method
