.class public Lcm/aptoide/pt/dataprovider/ws/v7/GetFollowersRequest;
.super Lcm/aptoide/pt/dataprovider/ws/v7/V7;
.source "GetFollowersRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcm/aptoide/pt/dataprovider/ws/v7/GetFollowersRequest$Body;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcm/aptoide/pt/dataprovider/ws/v7/V7",
        "<",
        "Lcm/aptoide/pt/model/v7/GetFollowers;",
        "Lcm/aptoide/pt/dataprovider/ws/v7/GetFollowersRequest$Body;",
        ">;"
    }
.end annotation


# direct methods
.method protected constructor <init>(Lcm/aptoide/pt/dataprovider/ws/v7/GetFollowersRequest$Body;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Lcm/aptoide/pt/dataprovider/ws/v7/V7;-><init>(Lcm/aptoide/pt/dataprovider/ws/v7/AccessTokenBody;Ljava/lang/String;)V

    .line 15
    return-void
.end method

.method public static of(Ljava/lang/String;Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/GetFollowersRequest;
    .locals 3

    .prologue
    .line 18
    new-instance v0, Lcm/aptoide/pt/dataprovider/ws/BaseBodyDecorator;

    invoke-direct {v0, p1}, Lcm/aptoide/pt/dataprovider/ws/BaseBodyDecorator;-><init>(Ljava/lang/String;)V

    .line 20
    new-instance v1, Lcm/aptoide/pt/dataprovider/ws/v7/GetFollowersRequest;

    new-instance v2, Lcm/aptoide/pt/dataprovider/ws/v7/GetFollowersRequest$Body;

    invoke-direct {v2}, Lcm/aptoide/pt/dataprovider/ws/v7/GetFollowersRequest$Body;-><init>()V

    invoke-virtual {v0, v2, p0}, Lcm/aptoide/pt/dataprovider/ws/BaseBodyDecorator;->decorate(Lcm/aptoide/pt/dataprovider/ws/v7/BaseBody;Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/BaseBody;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/dataprovider/ws/v7/GetFollowersRequest$Body;

    const-string v2, "https://ws75.aptoide.com/api/7/"

    invoke-direct {v1, v0, v2}, Lcm/aptoide/pt/dataprovider/ws/v7/GetFollowersRequest;-><init>(Lcm/aptoide/pt/dataprovider/ws/v7/GetFollowersRequest$Body;Ljava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method protected loadDataFromNetwork(Lcm/aptoide/pt/dataprovider/ws/v7/V7$Interfaces;Z)Lrx/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcm/aptoide/pt/dataprovider/ws/v7/V7$Interfaces;",
            "Z)",
            "Lrx/d",
            "<",
            "Lcm/aptoide/pt/model/v7/GetFollowers;",
            ">;"
        }
    .end annotation

    .prologue
    .line 25
    iget-object v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/GetFollowersRequest;->body:Lcm/aptoide/pt/dataprovider/ws/v7/AccessTokenBody;

    check-cast v0, Lcm/aptoide/pt/dataprovider/ws/v7/GetFollowersRequest$Body;

    invoke-interface {p1, v0, p2}, Lcm/aptoide/pt/dataprovider/ws/v7/V7$Interfaces;->getTimelineFollowers(Lcm/aptoide/pt/dataprovider/ws/v7/GetFollowersRequest$Body;Z)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic loadDataFromNetwork(Ljava/lang/Object;Z)Lrx/d;
    .locals 1

    .prologue
    .line 12
    check-cast p1, Lcm/aptoide/pt/dataprovider/ws/v7/V7$Interfaces;

    invoke-virtual {p0, p1, p2}, Lcm/aptoide/pt/dataprovider/ws/v7/GetFollowersRequest;->loadDataFromNetwork(Lcm/aptoide/pt/dataprovider/ws/v7/V7$Interfaces;Z)Lrx/d;

    move-result-object v0

    return-object v0
.end method
