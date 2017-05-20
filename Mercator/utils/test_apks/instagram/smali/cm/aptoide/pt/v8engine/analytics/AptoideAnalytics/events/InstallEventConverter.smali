.class public Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/InstallEventConverter;
.super Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallEventConverter;
.source "InstallEventConverter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallEventConverter",
        "<",
        "Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/InstallEvent;",
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
.method protected bridge synthetic convertSpecificFields(Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent;Lcm/aptoide/pt/dataprovider/ws/v7/analyticsbody/DownloadInstallAnalyticsBaseBody$Data;)Lcm/aptoide/pt/dataprovider/ws/v7/analyticsbody/DownloadInstallAnalyticsBaseBody$Data;
    .locals 1

    .prologue
    .line 9
    check-cast p1, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/InstallEvent;

    invoke-virtual {p0, p1, p2}, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/InstallEventConverter;->convertSpecificFields(Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/InstallEvent;Lcm/aptoide/pt/dataprovider/ws/v7/analyticsbody/DownloadInstallAnalyticsBaseBody$Data;)Lcm/aptoide/pt/dataprovider/ws/v7/analyticsbody/DownloadInstallAnalyticsBaseBody$Data;

    move-result-object v0

    return-object v0
.end method

.method protected convertSpecificFields(Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/InstallEvent;Lcm/aptoide/pt/dataprovider/ws/v7/analyticsbody/DownloadInstallAnalyticsBaseBody$Data;)Lcm/aptoide/pt/dataprovider/ws/v7/analyticsbody/DownloadInstallAnalyticsBaseBody$Data;
    .locals 0

    .prologue
    .line 14
    return-object p2
.end method

.method protected bridge synthetic createEventObject(Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$Action;Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$Origin;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$AppContext;I)Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent;
    .locals 1

    .prologue
    .line 9
    invoke-virtual/range {p0 .. p8}, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/InstallEventConverter;->createEventObject(Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$Action;Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$Origin;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$AppContext;I)Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/InstallEvent;

    move-result-object v0

    return-object v0
.end method

.method protected createEventObject(Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$Action;Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$Origin;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$AppContext;I)Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/InstallEvent;
    .locals 10

    .prologue
    .line 20
    new-instance v0, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/InstallEvent;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move-object v9, p0

    invoke-direct/range {v0 .. v9}, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/InstallEvent;-><init>(Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$Action;Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$Origin;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$AppContext;ILcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallEventConverter;)V

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
