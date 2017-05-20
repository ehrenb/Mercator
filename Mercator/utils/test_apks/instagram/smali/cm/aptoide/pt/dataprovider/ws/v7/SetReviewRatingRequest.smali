.class public Lcm/aptoide/pt/dataprovider/ws/v7/SetReviewRatingRequest;
.super Lcm/aptoide/pt/dataprovider/ws/v7/V7;
.source "SetReviewRatingRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcm/aptoide/pt/dataprovider/ws/v7/SetReviewRatingRequest$Body;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcm/aptoide/pt/dataprovider/ws/v7/V7",
        "<",
        "Lcm/aptoide/pt/model/v7/BaseV7Response;",
        "Lcm/aptoide/pt/dataprovider/ws/v7/SetReviewRatingRequest$Body;",
        ">;"
    }
.end annotation


# static fields
.field private static final BASE_HOST:Ljava/lang/String; = "https://ws75-primary.aptoide.com/api/7/"


# direct methods
.method protected constructor <init>(Lcm/aptoide/pt/dataprovider/ws/v7/SetReviewRatingRequest$Body;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcm/aptoide/pt/dataprovider/ws/v7/V7;-><init>(Lcm/aptoide/pt/dataprovider/ws/v7/AccessTokenBody;Ljava/lang/String;)V

    .line 28
    return-void
.end method

.method public static of(JZLjava/lang/String;Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/SetReviewRatingRequest;
    .locals 4

    .prologue
    .line 36
    new-instance v1, Lcm/aptoide/pt/dataprovider/ws/BaseBodyDecorator;

    invoke-direct {v1, p4}, Lcm/aptoide/pt/dataprovider/ws/BaseBodyDecorator;-><init>(Ljava/lang/String;)V

    .line 37
    new-instance v2, Lcm/aptoide/pt/dataprovider/ws/v7/SetReviewRatingRequest$Body;

    if-eqz p2, :cond_0

    const-string v0, "up"

    :goto_0
    invoke-direct {v2, p0, p1, v0}, Lcm/aptoide/pt/dataprovider/ws/v7/SetReviewRatingRequest$Body;-><init>(JLjava/lang/String;)V

    .line 38
    new-instance v3, Lcm/aptoide/pt/dataprovider/ws/v7/SetReviewRatingRequest;

    invoke-virtual {v1, v2, p3}, Lcm/aptoide/pt/dataprovider/ws/BaseBodyDecorator;->decorate(Lcm/aptoide/pt/dataprovider/ws/v7/BaseBody;Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/BaseBody;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/dataprovider/ws/v7/SetReviewRatingRequest$Body;

    const-string v1, "https://ws75-primary.aptoide.com/api/7/"

    invoke-direct {v3, v0, v1}, Lcm/aptoide/pt/dataprovider/ws/v7/SetReviewRatingRequest;-><init>(Lcm/aptoide/pt/dataprovider/ws/v7/SetReviewRatingRequest$Body;Ljava/lang/String;)V

    return-object v3

    .line 37
    :cond_0
    const-string v0, "down"

    goto :goto_0
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
    .line 43
    iget-object v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/SetReviewRatingRequest;->body:Lcm/aptoide/pt/dataprovider/ws/v7/AccessTokenBody;

    check-cast v0, Lcm/aptoide/pt/dataprovider/ws/v7/SetReviewRatingRequest$Body;

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lcm/aptoide/pt/dataprovider/ws/v7/V7$Interfaces;->setReviewVote(Lcm/aptoide/pt/dataprovider/ws/v7/SetReviewRatingRequest$Body;Z)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic loadDataFromNetwork(Ljava/lang/Object;Z)Lrx/d;
    .locals 1

    .prologue
    .line 19
    check-cast p1, Lcm/aptoide/pt/dataprovider/ws/v7/V7$Interfaces;

    invoke-virtual {p0, p1, p2}, Lcm/aptoide/pt/dataprovider/ws/v7/SetReviewRatingRequest;->loadDataFromNetwork(Lcm/aptoide/pt/dataprovider/ws/v7/V7$Interfaces;Z)Lrx/d;

    move-result-object v0

    return-object v0
.end method
