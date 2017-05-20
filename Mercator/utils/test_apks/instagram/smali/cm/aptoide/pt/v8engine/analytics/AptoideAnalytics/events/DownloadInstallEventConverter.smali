.class abstract Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallEventConverter;
.super Ljava/lang/Object;
.source "DownloadInstallEventConverter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public convert(Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent;Lcm/aptoide/pt/dataprovider/ws/v7/analyticsbody/DownloadInstallAnalyticsBaseBody$ResultStatus;Ljava/lang/Throwable;)Lcm/aptoide/pt/dataprovider/ws/v7/analyticsbody/DownloadInstallAnalyticsBaseBody;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcm/aptoide/pt/dataprovider/ws/v7/analyticsbody/DownloadInstallAnalyticsBaseBody$ResultStatus;",
            "Ljava/lang/Throwable;",
            ")",
            "Lcm/aptoide/pt/dataprovider/ws/v7/analyticsbody/DownloadInstallAnalyticsBaseBody;"
        }
    .end annotation

    .prologue
    .line 20
    new-instance v0, Lcm/aptoide/pt/dataprovider/ws/v7/analyticsbody/DownloadInstallAnalyticsBaseBody;

    .line 21
    invoke-static {}, Lcm/aptoide/pt/dataprovider/DataProvider;->getConfiguration()Lcm/aptoide/pt/preferences/AptoidePreferencesConfiguration;

    move-result-object v1

    invoke-interface {v1}, Lcm/aptoide/pt/preferences/AptoidePreferencesConfiguration;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcm/aptoide/pt/dataprovider/ws/v7/analyticsbody/DownloadInstallAnalyticsBaseBody;-><init>(Ljava/lang/String;)V

    .line 23
    new-instance v1, Lcm/aptoide/pt/dataprovider/ws/v7/analyticsbody/DownloadInstallAnalyticsBaseBody$Data;

    invoke-direct {v1}, Lcm/aptoide/pt/dataprovider/ws/v7/analyticsbody/DownloadInstallAnalyticsBaseBody$Data;-><init>()V

    .line 24
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent;->getOrigin()Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$Origin;

    move-result-object v2

    invoke-virtual {v2}, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$Origin;->name()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcm/aptoide/pt/dataprovider/ws/v7/analyticsbody/DownloadInstallAnalyticsBaseBody$DataOrigin;->valueOf(Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/analyticsbody/DownloadInstallAnalyticsBaseBody$DataOrigin;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcm/aptoide/pt/dataprovider/ws/v7/analyticsbody/DownloadInstallAnalyticsBaseBody$Data;->setOrigin(Lcm/aptoide/pt/dataprovider/ws/v7/analyticsbody/DownloadInstallAnalyticsBaseBody$DataOrigin;)V

    .line 26
    new-instance v2, Lcm/aptoide/pt/dataprovider/ws/v7/analyticsbody/DownloadInstallAnalyticsBaseBody$App;

    invoke-direct {v2}, Lcm/aptoide/pt/dataprovider/ws/v7/analyticsbody/DownloadInstallAnalyticsBaseBody$App;-><init>()V

    .line 27
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcm/aptoide/pt/dataprovider/ws/v7/analyticsbody/DownloadInstallAnalyticsBaseBody$App;->setPackageName(Ljava/lang/String;)V

    .line 28
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcm/aptoide/pt/dataprovider/ws/v7/analyticsbody/DownloadInstallAnalyticsBaseBody$App;->setUrl(Ljava/lang/String;)V

    .line 29
    invoke-virtual {v1, v2}, Lcm/aptoide/pt/dataprovider/ws/v7/analyticsbody/DownloadInstallAnalyticsBaseBody$Data;->setApp(Lcm/aptoide/pt/dataprovider/ws/v7/analyticsbody/DownloadInstallAnalyticsBaseBody$App;)V

    .line 31
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent;->getObbUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 32
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 33
    new-instance v3, Lcm/aptoide/pt/dataprovider/ws/v7/analyticsbody/DownloadInstallAnalyticsBaseBody$Obb;

    invoke-direct {v3}, Lcm/aptoide/pt/dataprovider/ws/v7/analyticsbody/DownloadInstallAnalyticsBaseBody$Obb;-><init>()V

    .line 34
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent;->getObbUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcm/aptoide/pt/dataprovider/ws/v7/analyticsbody/DownloadInstallAnalyticsBaseBody$Obb;->setUrl(Ljava/lang/String;)V

    .line 35
    sget-object v4, Lcm/aptoide/pt/dataprovider/ws/v7/analyticsbody/DownloadInstallAnalyticsBaseBody$ObbType;->MAIN:Lcm/aptoide/pt/dataprovider/ws/v7/analyticsbody/DownloadInstallAnalyticsBaseBody$ObbType;

    invoke-virtual {v3, v4}, Lcm/aptoide/pt/dataprovider/ws/v7/analyticsbody/DownloadInstallAnalyticsBaseBody$Obb;->setType(Lcm/aptoide/pt/dataprovider/ws/v7/analyticsbody/DownloadInstallAnalyticsBaseBody$ObbType;)V

    .line 36
    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 37
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent;->getPatchObbUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 38
    new-instance v3, Lcm/aptoide/pt/dataprovider/ws/v7/analyticsbody/DownloadInstallAnalyticsBaseBody$Obb;

    invoke-direct {v3}, Lcm/aptoide/pt/dataprovider/ws/v7/analyticsbody/DownloadInstallAnalyticsBaseBody$Obb;-><init>()V

    .line 39
    sget-object v4, Lcm/aptoide/pt/dataprovider/ws/v7/analyticsbody/DownloadInstallAnalyticsBaseBody$ObbType;->PATCH:Lcm/aptoide/pt/dataprovider/ws/v7/analyticsbody/DownloadInstallAnalyticsBaseBody$ObbType;

    invoke-virtual {v3, v4}, Lcm/aptoide/pt/dataprovider/ws/v7/analyticsbody/DownloadInstallAnalyticsBaseBody$Obb;->setType(Lcm/aptoide/pt/dataprovider/ws/v7/analyticsbody/DownloadInstallAnalyticsBaseBody$ObbType;)V

    .line 40
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent;->getPatchObbUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcm/aptoide/pt/dataprovider/ws/v7/analyticsbody/DownloadInstallAnalyticsBaseBody$Obb;->setUrl(Ljava/lang/String;)V

    .line 41
    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 43
    :cond_0
    invoke-virtual {v1, v2}, Lcm/aptoide/pt/dataprovider/ws/v7/analyticsbody/DownloadInstallAnalyticsBaseBody$Data;->setObb(Ljava/util/List;)V

    .line 46
    :cond_1
    invoke-static {}, Lcm/aptoide/pt/utils/AptoideUtils$SystemU;->getConnectionType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcm/aptoide/pt/dataprovider/ws/v7/analyticsbody/DownloadInstallAnalyticsBaseBody$Data;->setNetwork(Ljava/lang/String;)V

    .line 47
    invoke-static {}, Lcm/aptoide/pt/utils/AptoideUtils$SystemU;->getCarrierName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcm/aptoide/pt/dataprovider/ws/v7/analyticsbody/DownloadInstallAnalyticsBaseBody$Data;->setTeleco(Ljava/lang/String;)V

    .line 49
    new-instance v2, Lcm/aptoide/pt/dataprovider/ws/v7/analyticsbody/DownloadInstallAnalyticsBaseBody$Result;

    invoke-direct {v2}, Lcm/aptoide/pt/dataprovider/ws/v7/analyticsbody/DownloadInstallAnalyticsBaseBody$Result;-><init>()V

    .line 50
    invoke-virtual {v2, p2}, Lcm/aptoide/pt/dataprovider/ws/v7/analyticsbody/DownloadInstallAnalyticsBaseBody$Result;->setStatus(Lcm/aptoide/pt/dataprovider/ws/v7/analyticsbody/DownloadInstallAnalyticsBaseBody$ResultStatus;)V

    .line 51
    if-eqz p3, :cond_2

    .line 53
    new-instance v3, Lcm/aptoide/pt/dataprovider/ws/v7/analyticsbody/DownloadInstallAnalyticsBaseBody$ResultError;

    invoke-direct {v3}, Lcm/aptoide/pt/dataprovider/ws/v7/analyticsbody/DownloadInstallAnalyticsBaseBody$ResultError;-><init>()V

    .line 55
    invoke-virtual {p3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcm/aptoide/pt/dataprovider/ws/v7/analyticsbody/DownloadInstallAnalyticsBaseBody$ResultError;->setMessage(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcm/aptoide/pt/dataprovider/ws/v7/analyticsbody/DownloadInstallAnalyticsBaseBody$ResultError;->setType(Ljava/lang/String;)V

    .line 57
    invoke-virtual {v2, v3}, Lcm/aptoide/pt/dataprovider/ws/v7/analyticsbody/DownloadInstallAnalyticsBaseBody$Result;->setError(Lcm/aptoide/pt/dataprovider/ws/v7/analyticsbody/DownloadInstallAnalyticsBaseBody$ResultError;)V

    .line 60
    :cond_2
    invoke-virtual {v1, v2}, Lcm/aptoide/pt/dataprovider/ws/v7/analyticsbody/DownloadInstallAnalyticsBaseBody$Data;->setResult(Lcm/aptoide/pt/dataprovider/ws/v7/analyticsbody/DownloadInstallAnalyticsBaseBody$Result;)V

    .line 61
    invoke-virtual {p0, p1, v1}, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallEventConverter;->convertSpecificFields(Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent;Lcm/aptoide/pt/dataprovider/ws/v7/analyticsbody/DownloadInstallAnalyticsBaseBody$Data;)Lcm/aptoide/pt/dataprovider/ws/v7/analyticsbody/DownloadInstallAnalyticsBaseBody$Data;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcm/aptoide/pt/dataprovider/ws/v7/analyticsbody/DownloadInstallAnalyticsBaseBody;->setData(Ljava/lang/Object;)V

    .line 62
    return-object v0
.end method

.method protected abstract convertSpecificFields(Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent;Lcm/aptoide/pt/dataprovider/ws/v7/analyticsbody/DownloadInstallAnalyticsBaseBody$Data;)Lcm/aptoide/pt/dataprovider/ws/v7/analyticsbody/DownloadInstallAnalyticsBaseBody$Data;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcm/aptoide/pt/dataprovider/ws/v7/analyticsbody/DownloadInstallAnalyticsBaseBody$Data;",
            ")",
            "Lcm/aptoide/pt/dataprovider/ws/v7/analyticsbody/DownloadInstallAnalyticsBaseBody$Data;"
        }
    .end annotation
.end method

.method public create(Lcm/aptoide/pt/database/realm/Download;Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$Action;Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$AppContext;)Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcm/aptoide/pt/database/realm/Download;",
            "Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$Action;",
            "Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$AppContext;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 70
    invoke-virtual {p0, p1}, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallEventConverter;->getOrigin(Lcm/aptoide/pt/database/realm/Download;)Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$Origin;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallEventConverter;->create(Lcm/aptoide/pt/database/realm/Download;Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$Action;Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$AppContext;Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$Origin;)Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent;

    move-result-object v0

    return-object v0
.end method

.method public create(Lcm/aptoide/pt/database/realm/Download;Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$Action;Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$AppContext;Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$Origin;)Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcm/aptoide/pt/database/realm/Download;",
            "Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$Action;",
            "Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$AppContext;",
            "Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$Origin;",
            ")TT;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v6, 0x0

    .line 75
    .line 79
    invoke-virtual {p1}, Lcm/aptoide/pt/database/realm/Download;->getFilesToDownload()Lio/realm/aa;

    move-result-object v1

    .line 80
    invoke-virtual {v1}, Lio/realm/aa;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 81
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lio/realm/aa;->b(I)Lio/realm/ac;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/database/realm/FileToDownload;

    invoke-virtual {v0}, Lcm/aptoide/pt/database/realm/FileToDownload;->getLink()Ljava/lang/String;

    move-result-object v4

    .line 82
    invoke-virtual {v1}, Lio/realm/aa;->size()I

    move-result v0

    if-le v0, v2, :cond_1

    .line 83
    invoke-virtual {v1, v2}, Lio/realm/aa;->b(I)Lio/realm/ac;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/database/realm/FileToDownload;

    invoke-virtual {v0}, Lcm/aptoide/pt/database/realm/FileToDownload;->getLink()Ljava/lang/String;

    move-result-object v5

    .line 84
    invoke-virtual {v1}, Lio/realm/aa;->size()I

    move-result v0

    if-le v0, v3, :cond_0

    .line 85
    invoke-virtual {v1, v3}, Lio/realm/aa;->b(I)Lio/realm/ac;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/database/realm/FileToDownload;

    invoke-virtual {v0}, Lcm/aptoide/pt/database/realm/FileToDownload;->getLink()Ljava/lang/String;

    move-result-object v6

    .line 90
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcm/aptoide/pt/database/realm/Download;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 91
    invoke-virtual {p1}, Lcm/aptoide/pt/database/realm/Download;->getVersionCode()I

    move-result v8

    move-object v0, p0

    move-object v1, p2

    move-object v2, p4

    move-object v7, p3

    .line 90
    invoke-virtual/range {v0 .. v8}, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallEventConverter;->createEventObject(Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$Action;Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$Origin;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$AppContext;I)Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent;

    move-result-object v0

    return-object v0

    :cond_1
    move-object v5, v6

    goto :goto_0

    :cond_2
    move-object v5, v6

    move-object v4, v6

    goto :goto_0
.end method

.method protected abstract createEventObject(Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$Action;Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$Origin;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$AppContext;I)Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$Action;",
            "Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$Origin;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$AppContext;",
            "I)TT;"
        }
    .end annotation
.end method

.method public getOrigin(Lcm/aptoide/pt/database/realm/Download;)Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$Origin;
    .locals 1

    .prologue
    .line 96
    invoke-virtual {p1}, Lcm/aptoide/pt/database/realm/Download;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 107
    sget-object v0, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$Origin;->INSTALL:Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$Origin;

    .line 109
    :goto_0
    return-object v0

    .line 98
    :pswitch_0
    sget-object v0, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$Origin;->INSTALL:Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$Origin;

    goto :goto_0

    .line 101
    :pswitch_1
    sget-object v0, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$Origin;->UPDATE:Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$Origin;

    goto :goto_0

    .line 104
    :pswitch_2
    sget-object v0, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$Origin;->DOWNGRADE:Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$Origin;

    goto :goto_0

    .line 96
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
