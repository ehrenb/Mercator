.class public Lcm/aptoide/pt/v8engine/DownloadAnalytics;
.super Ljava/lang/Object;
.source "DownloadAnalytics.java"

# interfaces
.implements Lcm/aptoide/pt/downloadmanager/interfaces/Analytics;


# instance fields
.field private analytics:Lcm/aptoide/pt/v8engine/analytics/Analytics;


# direct methods
.method public constructor <init>(Lcm/aptoide/pt/v8engine/analytics/Analytics;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcm/aptoide/pt/v8engine/DownloadAnalytics;->analytics:Lcm/aptoide/pt/v8engine/analytics/Analytics;

    .line 17
    return-void
.end method


# virtual methods
.method public onError(Lcm/aptoide/pt/database/realm/Download;Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    .line 20
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/DownloadAnalytics;->analytics:Lcm/aptoide/pt/v8engine/analytics/Analytics;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    invoke-virtual {p1}, Lcm/aptoide/pt/database/realm/Download;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcm/aptoide/pt/database/realm/Download;->getVersionCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadEvent;

    invoke-virtual {v0, v1, v2}, Lcm/aptoide/pt/v8engine/analytics/Analytics;->get(Ljava/lang/String;Ljava/lang/Class;)Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/Event;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadEvent;

    .line 23
    if-eqz v0, :cond_0

    .line 24
    sget-object v1, Lcm/aptoide/pt/dataprovider/ws/v7/analyticsbody/DownloadInstallAnalyticsBaseBody$ResultStatus;->FAIL:Lcm/aptoide/pt/dataprovider/ws/v7/analyticsbody/DownloadInstallAnalyticsBaseBody$ResultStatus;

    invoke-virtual {v0, v1}, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadEvent;->setResultStatus(Lcm/aptoide/pt/dataprovider/ws/v7/analyticsbody/DownloadInstallAnalyticsBaseBody$ResultStatus;)V

    .line 25
    invoke-virtual {v0, p2}, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadEvent;->setError(Ljava/lang/Throwable;)V

    .line 26
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/DownloadAnalytics;->analytics:Lcm/aptoide/pt/v8engine/analytics/Analytics;

    invoke-virtual {v1, v0}, Lcm/aptoide/pt/v8engine/analytics/Analytics;->sendEvent(Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/Event;)V

    .line 28
    :cond_0
    return-void
.end method
