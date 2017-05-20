.class public Lcm/aptoide/pt/dataprovider/ws/v7/GetUserTimelineRequest;
.super Lcm/aptoide/pt/dataprovider/ws/v7/V7;
.source "GetUserTimelineRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcm/aptoide/pt/dataprovider/ws/v7/GetUserTimelineRequest$Body;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcm/aptoide/pt/dataprovider/ws/v7/V7",
        "<",
        "Lcm/aptoide/pt/model/v7/timeline/GetUserTimeline;",
        "Lcm/aptoide/pt/dataprovider/ws/v7/GetUserTimelineRequest$Body;",
        ">;"
    }
.end annotation


# instance fields
.field private url:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcm/aptoide/pt/dataprovider/ws/v7/GetUserTimelineRequest$Body;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0, p2, p3}, Lcm/aptoide/pt/dataprovider/ws/v7/V7;-><init>(Lcm/aptoide/pt/dataprovider/ws/v7/AccessTokenBody;Ljava/lang/String;)V

    .line 29
    iput-object p1, p0, Lcm/aptoide/pt/dataprovider/ws/v7/GetUserTimelineRequest;->url:Ljava/lang/String;

    .line 30
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcm/aptoide/pt/dataprovider/ws/v7/GetUserTimelineRequest$Body;Lokhttp3/OkHttpClient;Lretrofit2/Converter$Factory;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0, p2, p3, p4, p5}, Lcm/aptoide/pt/dataprovider/ws/v7/V7;-><init>(Lcm/aptoide/pt/dataprovider/ws/v7/AccessTokenBody;Lokhttp3/OkHttpClient;Lretrofit2/Converter$Factory;Ljava/lang/String;)V

    .line 35
    iput-object p1, p0, Lcm/aptoide/pt/dataprovider/ws/v7/GetUserTimelineRequest;->url:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public static of(Ljava/lang/String;Ljava/lang/Integer;ILjava/util/List;Ljava/lang/String;Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/GetUserTimelineRequest;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcm/aptoide/pt/dataprovider/ws/v7/GetUserTimelineRequest;"
        }
    .end annotation

    .prologue
    .line 40
    new-instance v0, Lcm/aptoide/pt/dataprovider/ws/BaseBodyDecorator;

    invoke-direct {v0, p5}, Lcm/aptoide/pt/dataprovider/ws/BaseBodyDecorator;-><init>(Ljava/lang/String;)V

    .line 42
    new-instance v1, Lcm/aptoide/pt/dataprovider/ws/v7/GetUserTimelineRequest;

    new-instance v2, Lcm/aptoide/pt/dataprovider/ws/v7/GetUserTimelineRequest$Body;

    .line 43
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, p1, v3, p3}, Lcm/aptoide/pt/dataprovider/ws/v7/GetUserTimelineRequest$Body;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;)V

    invoke-virtual {v0, v2, p4}, Lcm/aptoide/pt/dataprovider/ws/BaseBodyDecorator;->decorate(Lcm/aptoide/pt/dataprovider/ws/v7/BaseBody;Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/BaseBody;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/dataprovider/ws/v7/GetUserTimelineRequest$Body;

    const-string v2, "https://ws75.aptoide.com/api/7/"

    invoke-direct {v1, p0, v0, v2}, Lcm/aptoide/pt/dataprovider/ws/v7/GetUserTimelineRequest;-><init>(Ljava/lang/String;Lcm/aptoide/pt/dataprovider/ws/v7/GetUserTimelineRequest$Body;Ljava/lang/String;)V

    .line 44
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
            "Lcm/aptoide/pt/model/v7/timeline/GetUserTimeline;",
            ">;"
        }
    .end annotation

    .prologue
    .line 49
    iget-object v1, p0, Lcm/aptoide/pt/dataprovider/ws/v7/GetUserTimelineRequest;->url:Ljava/lang/String;

    iget-object v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/GetUserTimelineRequest;->body:Lcm/aptoide/pt/dataprovider/ws/v7/AccessTokenBody;

    check-cast v0, Lcm/aptoide/pt/dataprovider/ws/v7/GetUserTimelineRequest$Body;

    invoke-interface {p1, v1, v0, p2}, Lcm/aptoide/pt/dataprovider/ws/v7/V7$Interfaces;->getUserTimeline(Ljava/lang/String;Lcm/aptoide/pt/dataprovider/ws/v7/GetUserTimelineRequest$Body;Z)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic loadDataFromNetwork(Ljava/lang/Object;Z)Lrx/d;
    .locals 1

    .prologue
    .line 23
    check-cast p1, Lcm/aptoide/pt/dataprovider/ws/v7/V7$Interfaces;

    invoke-virtual {p0, p1, p2}, Lcm/aptoide/pt/dataprovider/ws/v7/GetUserTimelineRequest;->loadDataFromNetwork(Lcm/aptoide/pt/dataprovider/ws/v7/V7$Interfaces;Z)Lrx/d;

    move-result-object v0

    return-object v0
.end method
