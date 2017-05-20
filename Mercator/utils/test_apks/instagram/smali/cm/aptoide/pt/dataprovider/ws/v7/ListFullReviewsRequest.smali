.class public Lcm/aptoide/pt/dataprovider/ws/v7/ListFullReviewsRequest;
.super Lcm/aptoide/pt/dataprovider/ws/v7/V7;
.source "ListFullReviewsRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcm/aptoide/pt/dataprovider/ws/v7/ListFullReviewsRequest$Body;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcm/aptoide/pt/dataprovider/ws/v7/V7",
        "<",
        "Lcm/aptoide/pt/model/v7/ListFullReviews;",
        "Lcm/aptoide/pt/dataprovider/ws/v7/ListFullReviewsRequest$Body;",
        ">;"
    }
.end annotation


# static fields
.field private static final MAX_COMMENTS:I = 0xa

.field private static final MAX_REVIEWS:I = 0xa


# instance fields
.field private url:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lcm/aptoide/pt/dataprovider/ws/v7/ListFullReviewsRequest$Body;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcm/aptoide/pt/dataprovider/ws/v7/V7;-><init>(Lcm/aptoide/pt/dataprovider/ws/v7/AccessTokenBody;Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcm/aptoide/pt/dataprovider/ws/v7/ListFullReviewsRequest$Body;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0, p2, p3}, Lcm/aptoide/pt/dataprovider/ws/v7/V7;-><init>(Lcm/aptoide/pt/dataprovider/ws/v7/AccessTokenBody;Ljava/lang/String;)V

    .line 41
    iput-object p1, p0, Lcm/aptoide/pt/dataprovider/ws/v7/ListFullReviewsRequest;->url:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public static of(JIILcm/aptoide/pt/dataprovider/ws/v7/BaseRequestWithStore$StoreCredentials;Ljava/lang/String;Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/ListFullReviewsRequest;
    .locals 12

    .prologue
    .line 47
    invoke-virtual/range {p4 .. p4}, Lcm/aptoide/pt/dataprovider/ws/v7/BaseRequestWithStore$StoreCredentials;->getUsername()Ljava/lang/String;

    move-result-object v9

    .line 48
    invoke-virtual/range {p4 .. p4}, Lcm/aptoide/pt/dataprovider/ws/v7/BaseRequestWithStore$StoreCredentials;->getPasswordSha1()Ljava/lang/String;

    move-result-object v10

    .line 50
    new-instance v2, Lcm/aptoide/pt/dataprovider/ws/BaseBodyDecorator;

    move-object/from16 v0, p6

    invoke-direct {v2, v0}, Lcm/aptoide/pt/dataprovider/ws/BaseBodyDecorator;-><init>(Ljava/lang/String;)V

    .line 52
    new-instance v3, Lcm/aptoide/pt/dataprovider/ws/v7/ListFullReviewsRequest$Body;

    invoke-static {}, Lcm/aptoide/pt/preferences/managed/ManagerPreferences;->getAndResetForceServerRefresh()Z

    move-result v8

    move-wide v4, p0

    move v6, p2

    move v7, p3

    invoke-direct/range {v3 .. v10}, Lcm/aptoide/pt/dataprovider/ws/v7/ListFullReviewsRequest$Body;-><init>(JIIZLjava/lang/String;Ljava/lang/String;)V

    .line 54
    new-instance v4, Lcm/aptoide/pt/dataprovider/ws/v7/ListFullReviewsRequest;

    move-object/from16 v0, p5

    invoke-virtual {v2, v3, v0}, Lcm/aptoide/pt/dataprovider/ws/BaseBodyDecorator;->decorate(Lcm/aptoide/pt/dataprovider/ws/v7/BaseBody;Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/BaseBody;

    move-result-object v2

    check-cast v2, Lcm/aptoide/pt/dataprovider/ws/v7/ListFullReviewsRequest$Body;

    const-string v3, "https://ws75.aptoide.com/api/7/"

    invoke-direct {v4, v2, v3}, Lcm/aptoide/pt/dataprovider/ws/v7/ListFullReviewsRequest;-><init>(Lcm/aptoide/pt/dataprovider/ws/v7/ListFullReviewsRequest$Body;Ljava/lang/String;)V

    return-object v4
.end method

.method public static of(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/ListFullReviewsRequest;
    .locals 7

    .prologue
    .line 74
    new-instance v6, Lcm/aptoide/pt/dataprovider/ws/BaseBodyDecorator;

    invoke-direct {v6, p5}, Lcm/aptoide/pt/dataprovider/ws/BaseBodyDecorator;-><init>(Ljava/lang/String;)V

    .line 76
    new-instance v0, Lcm/aptoide/pt/dataprovider/ws/v7/ListFullReviewsRequest$Body;

    .line 77
    invoke-static {}, Lcm/aptoide/pt/preferences/managed/ManagerPreferences;->getAndResetForceServerRefresh()Z

    move-result v5

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcm/aptoide/pt/dataprovider/ws/v7/ListFullReviewsRequest$Body;-><init>(Ljava/lang/String;Ljava/lang/String;IIZ)V

    .line 78
    new-instance v1, Lcm/aptoide/pt/dataprovider/ws/v7/ListFullReviewsRequest;

    invoke-virtual {v6, v0, p4}, Lcm/aptoide/pt/dataprovider/ws/BaseBodyDecorator;->decorate(Lcm/aptoide/pt/dataprovider/ws/v7/BaseBody;Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/BaseBody;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/dataprovider/ws/v7/ListFullReviewsRequest$Body;

    const-string v2, "https://ws75.aptoide.com/api/7/"

    invoke-direct {v1, v0, v2}, Lcm/aptoide/pt/dataprovider/ws/v7/ListFullReviewsRequest;-><init>(Lcm/aptoide/pt/dataprovider/ws/v7/ListFullReviewsRequest$Body;Ljava/lang/String;)V

    return-object v1
.end method

.method public static of(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/ListFullReviewsRequest;
    .locals 6

    .prologue
    const/16 v2, 0xa

    .line 66
    move-object v0, p0

    move-object v1, p1

    move v3, v2

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcm/aptoide/pt/dataprovider/ws/v7/ListFullReviewsRequest;->of(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/ListFullReviewsRequest;

    move-result-object v0

    return-object v0
.end method

.method public static ofAction(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/ListFullReviewsRequest;
    .locals 4

    .prologue
    .line 59
    new-instance v0, Lcm/aptoide/pt/dataprovider/ws/BaseBodyDecorator;

    invoke-direct {v0, p3}, Lcm/aptoide/pt/dataprovider/ws/BaseBodyDecorator;-><init>(Ljava/lang/String;)V

    .line 60
    new-instance v1, Lcm/aptoide/pt/dataprovider/ws/v7/ListFullReviewsRequest;

    const-string v2, "listFullReviews"

    const-string v3, ""

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcm/aptoide/pt/dataprovider/ws/v7/ListFullReviewsRequest$Body;

    invoke-direct {v3, p1}, Lcm/aptoide/pt/dataprovider/ws/v7/ListFullReviewsRequest$Body;-><init>(Z)V

    .line 61
    invoke-virtual {v0, v3, p2}, Lcm/aptoide/pt/dataprovider/ws/BaseBodyDecorator;->decorate(Lcm/aptoide/pt/dataprovider/ws/v7/BaseBody;Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/BaseBody;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/dataprovider/ws/v7/ListFullReviewsRequest$Body;

    const-string v3, "https://ws75.aptoide.com/api/7/"

    invoke-direct {v1, v2, v0, v3}, Lcm/aptoide/pt/dataprovider/ws/v7/ListFullReviewsRequest;-><init>(Ljava/lang/String;Lcm/aptoide/pt/dataprovider/ws/v7/ListFullReviewsRequest$Body;Ljava/lang/String;)V

    return-object v1
.end method

.method public static ofTopReviews(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/ListFullReviewsRequest;
    .locals 7

    .prologue
    .line 87
    new-instance v6, Lcm/aptoide/pt/dataprovider/ws/BaseBodyDecorator;

    invoke-direct {v6, p4}, Lcm/aptoide/pt/dataprovider/ws/BaseBodyDecorator;-><init>(Ljava/lang/String;)V

    .line 89
    new-instance v0, Lcm/aptoide/pt/dataprovider/ws/v7/ListFullReviewsRequest$Body;

    const/4 v4, 0x0

    .line 90
    invoke-static {}, Lcm/aptoide/pt/preferences/managed/ManagerPreferences;->getAndResetForceServerRefresh()Z

    move-result v5

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v5}, Lcm/aptoide/pt/dataprovider/ws/v7/ListFullReviewsRequest$Body;-><init>(Ljava/lang/String;Ljava/lang/String;IIZ)V

    .line 91
    new-instance v1, Lcm/aptoide/pt/dataprovider/ws/v7/ListFullReviewsRequest;

    invoke-virtual {v6, v0, p3}, Lcm/aptoide/pt/dataprovider/ws/BaseBodyDecorator;->decorate(Lcm/aptoide/pt/dataprovider/ws/v7/BaseBody;Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/BaseBody;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/dataprovider/ws/v7/ListFullReviewsRequest$Body;

    const-string v2, "https://ws75.aptoide.com/api/7/"

    invoke-direct {v1, v0, v2}, Lcm/aptoide/pt/dataprovider/ws/v7/ListFullReviewsRequest;-><init>(Lcm/aptoide/pt/dataprovider/ws/v7/ListFullReviewsRequest$Body;Ljava/lang/String;)V

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
            "Lcm/aptoide/pt/model/v7/ListFullReviews;",
            ">;"
        }
    .end annotation

    .prologue
    .line 96
    iget-object v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/ListFullReviewsRequest;->url:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/ListFullReviewsRequest;->body:Lcm/aptoide/pt/dataprovider/ws/v7/AccessTokenBody;

    check-cast v0, Lcm/aptoide/pt/dataprovider/ws/v7/ListFullReviewsRequest$Body;

    invoke-interface {p1, v0, p2}, Lcm/aptoide/pt/dataprovider/ws/v7/V7$Interfaces;->listFullReviews(Lcm/aptoide/pt/dataprovider/ws/v7/ListFullReviewsRequest$Body;Z)Lrx/d;

    move-result-object v0

    .line 99
    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcm/aptoide/pt/dataprovider/ws/v7/ListFullReviewsRequest;->url:Ljava/lang/String;

    iget-object v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/ListFullReviewsRequest;->body:Lcm/aptoide/pt/dataprovider/ws/v7/AccessTokenBody;

    check-cast v0, Lcm/aptoide/pt/dataprovider/ws/v7/ListFullReviewsRequest$Body;

    invoke-interface {p1, v1, v0, p2}, Lcm/aptoide/pt/dataprovider/ws/v7/V7$Interfaces;->listFullReviews(Ljava/lang/String;Lcm/aptoide/pt/dataprovider/ws/v7/ListFullReviewsRequest$Body;Z)Lrx/d;

    move-result-object v0

    goto :goto_0
.end method

.method protected bridge synthetic loadDataFromNetwork(Ljava/lang/Object;Z)Lrx/d;
    .locals 1

    .prologue
    .line 29
    check-cast p1, Lcm/aptoide/pt/dataprovider/ws/v7/V7$Interfaces;

    invoke-virtual {p0, p1, p2}, Lcm/aptoide/pt/dataprovider/ws/v7/ListFullReviewsRequest;->loadDataFromNetwork(Lcm/aptoide/pt/dataprovider/ws/v7/V7$Interfaces;Z)Lrx/d;

    move-result-object v0

    return-object v0
.end method
