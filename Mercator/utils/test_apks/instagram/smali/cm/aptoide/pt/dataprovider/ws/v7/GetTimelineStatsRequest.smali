.class public Lcm/aptoide/pt/dataprovider/ws/v7/GetTimelineStatsRequest;
.super Lcm/aptoide/pt/dataprovider/ws/v7/V7;
.source "GetTimelineStatsRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcm/aptoide/pt/dataprovider/ws/v7/V7",
        "<",
        "Lcm/aptoide/pt/model/v7/TimelineStats;",
        "Lcm/aptoide/pt/dataprovider/ws/v7/BaseBody;",
        ">;"
    }
.end annotation


# direct methods
.method protected constructor <init>(Lcm/aptoide/pt/dataprovider/ws/v7/BaseBody;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Lcm/aptoide/pt/dataprovider/ws/v7/V7;-><init>(Lcm/aptoide/pt/dataprovider/ws/v7/AccessTokenBody;Ljava/lang/String;)V

    .line 15
    return-void
.end method

.method public static of(Ljava/lang/String;Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/GetTimelineStatsRequest;
    .locals 3

    .prologue
    .line 18
    new-instance v0, Lcm/aptoide/pt/dataprovider/ws/BaseBodyDecorator;

    invoke-direct {v0, p1}, Lcm/aptoide/pt/dataprovider/ws/BaseBodyDecorator;-><init>(Ljava/lang/String;)V

    .line 19
    new-instance v1, Lcm/aptoide/pt/dataprovider/ws/v7/GetTimelineStatsRequest;

    new-instance v2, Lcm/aptoide/pt/dataprovider/ws/v7/BaseBody;

    invoke-direct {v2}, Lcm/aptoide/pt/dataprovider/ws/v7/BaseBody;-><init>()V

    invoke-virtual {v0, v2, p0}, Lcm/aptoide/pt/dataprovider/ws/BaseBodyDecorator;->decorate(Lcm/aptoide/pt/dataprovider/ws/v7/BaseBody;Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/BaseBody;

    move-result-object v0

    const-string v2, "https://ws75.aptoide.com/api/7/"

    invoke-direct {v1, v0, v2}, Lcm/aptoide/pt/dataprovider/ws/v7/GetTimelineStatsRequest;-><init>(Lcm/aptoide/pt/dataprovider/ws/v7/BaseBody;Ljava/lang/String;)V

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
            "Lcm/aptoide/pt/model/v7/TimelineStats;",
            ">;"
        }
    .end annotation

    .prologue
    .line 24
    iget-object v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/GetTimelineStatsRequest;->body:Lcm/aptoide/pt/dataprovider/ws/v7/AccessTokenBody;

    check-cast v0, Lcm/aptoide/pt/dataprovider/ws/v7/BaseBody;

    invoke-interface {p1, v0, p2}, Lcm/aptoide/pt/dataprovider/ws/v7/V7$Interfaces;->getTimelineStats(Lcm/aptoide/pt/dataprovider/ws/v7/BaseBody;Z)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic loadDataFromNetwork(Ljava/lang/Object;Z)Lrx/d;
    .locals 1

    .prologue
    .line 11
    check-cast p1, Lcm/aptoide/pt/dataprovider/ws/v7/V7$Interfaces;

    invoke-virtual {p0, p1, p2}, Lcm/aptoide/pt/dataprovider/ws/v7/GetTimelineStatsRequest;->loadDataFromNetwork(Lcm/aptoide/pt/dataprovider/ws/v7/V7$Interfaces;Z)Lrx/d;

    move-result-object v0

    return-object v0
.end method
