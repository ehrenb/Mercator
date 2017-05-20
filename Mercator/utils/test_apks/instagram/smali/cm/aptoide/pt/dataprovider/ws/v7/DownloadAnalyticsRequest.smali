.class public Lcm/aptoide/pt/dataprovider/ws/v7/DownloadAnalyticsRequest;
.super Lcm/aptoide/pt/dataprovider/ws/v7/AnalyticsBaseRequest;
.source "DownloadAnalyticsRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcm/aptoide/pt/dataprovider/ws/v7/AnalyticsBaseRequest",
        "<",
        "Lcm/aptoide/pt/dataprovider/ws/v7/analyticsbody/DownloadInstallAnalyticsBaseBody;",
        ">;"
    }
.end annotation


# instance fields
.field private action:Ljava/lang/String;

.field private context:Ljava/lang/String;

.field private name:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lcm/aptoide/pt/dataprovider/ws/v7/analyticsbody/DownloadInstallAnalyticsBaseBody;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lcm/aptoide/pt/dataprovider/ws/v7/AnalyticsBaseRequest;-><init>(Lcm/aptoide/pt/dataprovider/ws/v7/analyticsbody/AnalyticsBaseBody;Ljava/lang/String;)V

    .line 22
    iput-object p3, p0, Lcm/aptoide/pt/dataprovider/ws/v7/DownloadAnalyticsRequest;->action:Ljava/lang/String;

    .line 23
    iput-object p4, p0, Lcm/aptoide/pt/dataprovider/ws/v7/DownloadAnalyticsRequest;->name:Ljava/lang/String;

    .line 24
    iput-object p5, p0, Lcm/aptoide/pt/dataprovider/ws/v7/DownloadAnalyticsRequest;->context:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public static of(Ljava/lang/String;Ljava/lang/String;Lcm/aptoide/pt/dataprovider/ws/v7/analyticsbody/DownloadInstallAnalyticsBaseBody;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/DownloadAnalyticsRequest;
    .locals 6

    .prologue
    .line 29
    new-instance v1, Lcm/aptoide/pt/dataprovider/ws/BaseBodyDecorator;

    invoke-direct {v1, p0}, Lcm/aptoide/pt/dataprovider/ws/BaseBodyDecorator;-><init>(Ljava/lang/String;)V

    .line 30
    new-instance v0, Lcm/aptoide/pt/dataprovider/ws/v7/DownloadAnalyticsRequest;

    .line 31
    invoke-virtual {v1, p2, p1}, Lcm/aptoide/pt/dataprovider/ws/BaseBodyDecorator;->decorate(Lcm/aptoide/pt/dataprovider/ws/v7/BaseBody;Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/BaseBody;

    move-result-object v1

    check-cast v1, Lcm/aptoide/pt/dataprovider/ws/v7/analyticsbody/DownloadInstallAnalyticsBaseBody;

    const-string v2, "https://ws75.aptoide.com/api/7/"

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcm/aptoide/pt/dataprovider/ws/v7/DownloadAnalyticsRequest;-><init>(Lcm/aptoide/pt/dataprovider/ws/v7/analyticsbody/DownloadInstallAnalyticsBaseBody;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method protected loadDataFromNetwork(Lcm/aptoide/pt/dataprovider/ws/v7/V7$Interfaces;Z)Lrx/d;
    .locals 4
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
    .line 37
    iget-object v1, p0, Lcm/aptoide/pt/dataprovider/ws/v7/DownloadAnalyticsRequest;->name:Ljava/lang/String;

    iget-object v2, p0, Lcm/aptoide/pt/dataprovider/ws/v7/DownloadAnalyticsRequest;->action:Ljava/lang/String;

    iget-object v3, p0, Lcm/aptoide/pt/dataprovider/ws/v7/DownloadAnalyticsRequest;->context:Ljava/lang/String;

    iget-object v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/DownloadAnalyticsRequest;->body:Lcm/aptoide/pt/dataprovider/ws/v7/AccessTokenBody;

    check-cast v0, Lcm/aptoide/pt/dataprovider/ws/v7/analyticsbody/DownloadInstallAnalyticsBaseBody;

    invoke-interface {p1, v1, v2, v3, v0}, Lcm/aptoide/pt/dataprovider/ws/v7/V7$Interfaces;->setDownloadAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcm/aptoide/pt/dataprovider/ws/v7/analyticsbody/DownloadInstallAnalyticsBaseBody;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic loadDataFromNetwork(Ljava/lang/Object;Z)Lrx/d;
    .locals 1

    .prologue
    .line 12
    check-cast p1, Lcm/aptoide/pt/dataprovider/ws/v7/V7$Interfaces;

    invoke-virtual {p0, p1, p2}, Lcm/aptoide/pt/dataprovider/ws/v7/DownloadAnalyticsRequest;->loadDataFromNetwork(Lcm/aptoide/pt/dataprovider/ws/v7/V7$Interfaces;Z)Lrx/d;

    move-result-object v0

    return-object v0
.end method
