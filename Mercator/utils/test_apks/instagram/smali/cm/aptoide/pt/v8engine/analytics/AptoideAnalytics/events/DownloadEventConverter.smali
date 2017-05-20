.class public Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadEventConverter;
.super Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallEventConverter;
.source "DownloadEventConverter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallEventConverter",
        "<",
        "Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadEvent;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallEventConverter;-><init>()V

    return-void
.end method


# virtual methods
.method protected convertSpecificFields(Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadEvent;Lcm/aptoide/pt/dataprovider/ws/v7/analyticsbody/DownloadInstallAnalyticsBaseBody$Data;)Lcm/aptoide/pt/dataprovider/ws/v7/analyticsbody/DownloadInstallAnalyticsBaseBody$Data;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 14
    invoke-virtual {p2}, Lcm/aptoide/pt/dataprovider/ws/v7/analyticsbody/DownloadInstallAnalyticsBaseBody$Data;->getApp()Lcm/aptoide/pt/dataprovider/ws/v7/analyticsbody/DownloadInstallAnalyticsBaseBody$App;

    move-result-object v0

    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadEvent;->getMirrorApk()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcm/aptoide/pt/dataprovider/ws/v7/analyticsbody/DownloadInstallAnalyticsBaseBody$App;->setMirror(Ljava/lang/String;)V

    move v1, v2

    .line 15
    :goto_0
    invoke-virtual {p2}, Lcm/aptoide/pt/dataprovider/ws/v7/analyticsbody/DownloadInstallAnalyticsBaseBody$Data;->getObb()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcm/aptoide/pt/dataprovider/ws/v7/analyticsbody/DownloadInstallAnalyticsBaseBody$Data;->getObb()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 16
    if-nez v1, :cond_0

    .line 17
    invoke-virtual {p2}, Lcm/aptoide/pt/dataprovider/ws/v7/analyticsbody/DownloadInstallAnalyticsBaseBody$Data;->getObb()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/dataprovider/ws/v7/analyticsbody/DownloadInstallAnalyticsBaseBody$Obb;

    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadEvent;->getMirrorObbMain()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcm/aptoide/pt/dataprovider/ws/v7/analyticsbody/DownloadInstallAnalyticsBaseBody$Obb;->setMirror(Ljava/lang/String;)V

    .line 15
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {p2}, Lcm/aptoide/pt/dataprovider/ws/v7/analyticsbody/DownloadInstallAnalyticsBaseBody$Data;->getObb()Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/dataprovider/ws/v7/analyticsbody/DownloadInstallAnalyticsBaseBody$Obb;

    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadEvent;->getMirrorObbPatch()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcm/aptoide/pt/dataprovider/ws/v7/analyticsbody/DownloadInstallAnalyticsBaseBody$Obb;->setMirror(Ljava/lang/String;)V

    goto :goto_1

    .line 22
    :cond_1
    return-object p2
.end method

.method protected bridge synthetic convertSpecificFields(Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent;Lcm/aptoide/pt/dataprovider/ws/v7/analyticsbody/DownloadInstallAnalyticsBaseBody$Data;)Lcm/aptoide/pt/dataprovider/ws/v7/analyticsbody/DownloadInstallAnalyticsBaseBody$Data;
    .locals 1

    .prologue
    .line 9
    check-cast p1, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadEvent;

    invoke-virtual {p0, p1, p2}, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadEventConverter;->convertSpecificFields(Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadEvent;Lcm/aptoide/pt/dataprovider/ws/v7/analyticsbody/DownloadInstallAnalyticsBaseBody$Data;)Lcm/aptoide/pt/dataprovider/ws/v7/analyticsbody/DownloadInstallAnalyticsBaseBody$Data;

    move-result-object v0

    return-object v0
.end method

.method protected createEventObject(Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$Action;Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$Origin;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$AppContext;I)Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadEvent;
    .locals 10

    .prologue
    .line 28
    new-instance v0, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadEvent;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move-object v9, p0

    invoke-direct/range {v0 .. v9}, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadEvent;-><init>(Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$Action;Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$Origin;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$AppContext;ILcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadEventConverter;)V

    return-object v0
.end method

.method protected bridge synthetic createEventObject(Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$Action;Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$Origin;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$AppContext;I)Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent;
    .locals 1

    .prologue
    .line 9
    invoke-virtual/range {p0 .. p8}, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadEventConverter;->createEventObject(Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$Action;Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$Origin;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$AppContext;I)Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadEvent;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getOrigin(Lcm/aptoide/pt/database/realm/Download;)Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$Origin;
    .locals 1

    .prologue
    .line 9
    invoke-super {p0, p1}, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallEventConverter;->getOrigin(Lcm/aptoide/pt/database/realm/Download;)Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$Origin;

    move-result-object v0

    return-object v0
.end method
