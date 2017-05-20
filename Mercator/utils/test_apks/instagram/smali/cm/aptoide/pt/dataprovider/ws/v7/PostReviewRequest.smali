.class public Lcm/aptoide/pt/dataprovider/ws/v7/PostReviewRequest;
.super Lcm/aptoide/pt/dataprovider/ws/v7/V7;
.source "PostReviewRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcm/aptoide/pt/dataprovider/ws/v7/PostReviewRequest$Body;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcm/aptoide/pt/dataprovider/ws/v7/V7",
        "<",
        "Lcm/aptoide/pt/model/v7/BaseV7Response;",
        "Lcm/aptoide/pt/dataprovider/ws/v7/PostReviewRequest$Body;",
        ">;"
    }
.end annotation


# static fields
.field private static final BASE_HOST:Ljava/lang/String; = "https://ws75-primary.aptoide.com/api/7/"


# direct methods
.method protected constructor <init>(Lcm/aptoide/pt/dataprovider/ws/v7/PostReviewRequest$Body;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcm/aptoide/pt/dataprovider/ws/v7/V7;-><init>(Lcm/aptoide/pt/dataprovider/ws/v7/AccessTokenBody;Ljava/lang/String;)V

    .line 27
    return-void
.end method

.method public static of(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/PostReviewRequest;
    .locals 3

    .prologue
    .line 46
    new-instance v0, Lcm/aptoide/pt/dataprovider/ws/BaseBodyDecorator;

    invoke-direct {v0, p5}, Lcm/aptoide/pt/dataprovider/ws/BaseBodyDecorator;-><init>(Ljava/lang/String;)V

    .line 47
    new-instance v1, Lcm/aptoide/pt/dataprovider/ws/v7/PostReviewRequest$Body;

    invoke-direct {v1, p0, p1, p2, p3}, Lcm/aptoide/pt/dataprovider/ws/v7/PostReviewRequest$Body;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 48
    new-instance v2, Lcm/aptoide/pt/dataprovider/ws/v7/PostReviewRequest;

    invoke-virtual {v0, v1, p4}, Lcm/aptoide/pt/dataprovider/ws/BaseBodyDecorator;->decorate(Lcm/aptoide/pt/dataprovider/ws/v7/BaseBody;Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/BaseBody;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/dataprovider/ws/v7/PostReviewRequest$Body;

    const-string v1, "https://ws75-primary.aptoide.com/api/7/"

    invoke-direct {v2, v0, v1}, Lcm/aptoide/pt/dataprovider/ws/v7/PostReviewRequest;-><init>(Lcm/aptoide/pt/dataprovider/ws/v7/PostReviewRequest$Body;Ljava/lang/String;)V

    return-object v2
.end method

.method public static of(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/PostReviewRequest;
    .locals 7

    .prologue
    .line 35
    new-instance v6, Lcm/aptoide/pt/dataprovider/ws/BaseBodyDecorator;

    invoke-direct {v6, p6}, Lcm/aptoide/pt/dataprovider/ws/BaseBodyDecorator;-><init>(Ljava/lang/String;)V

    .line 36
    new-instance v0, Lcm/aptoide/pt/dataprovider/ws/v7/PostReviewRequest$Body;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcm/aptoide/pt/dataprovider/ws/v7/PostReviewRequest$Body;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 37
    new-instance v1, Lcm/aptoide/pt/dataprovider/ws/v7/PostReviewRequest;

    invoke-virtual {v6, v0, p5}, Lcm/aptoide/pt/dataprovider/ws/BaseBodyDecorator;->decorate(Lcm/aptoide/pt/dataprovider/ws/v7/BaseBody;Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/BaseBody;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/dataprovider/ws/v7/PostReviewRequest$Body;

    const-string v2, "https://ws75-primary.aptoide.com/api/7/"

    invoke-direct {v1, v0, v2}, Lcm/aptoide/pt/dataprovider/ws/v7/PostReviewRequest;-><init>(Lcm/aptoide/pt/dataprovider/ws/v7/PostReviewRequest$Body;Ljava/lang/String;)V

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
            "Lcm/aptoide/pt/model/v7/BaseV7Response;",
            ">;"
        }
    .end annotation

    .prologue
    .line 53
    iget-object v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/PostReviewRequest;->body:Lcm/aptoide/pt/dataprovider/ws/v7/AccessTokenBody;

    check-cast v0, Lcm/aptoide/pt/dataprovider/ws/v7/PostReviewRequest$Body;

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lcm/aptoide/pt/dataprovider/ws/v7/V7$Interfaces;->postReview(Lcm/aptoide/pt/dataprovider/ws/v7/PostReviewRequest$Body;Z)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic loadDataFromNetwork(Ljava/lang/Object;Z)Lrx/d;
    .locals 1

    .prologue
    .line 18
    check-cast p1, Lcm/aptoide/pt/dataprovider/ws/v7/V7$Interfaces;

    invoke-virtual {p0, p1, p2}, Lcm/aptoide/pt/dataprovider/ws/v7/PostReviewRequest;->loadDataFromNetwork(Lcm/aptoide/pt/dataprovider/ws/v7/V7$Interfaces;Z)Lrx/d;

    move-result-object v0

    return-object v0
.end method
