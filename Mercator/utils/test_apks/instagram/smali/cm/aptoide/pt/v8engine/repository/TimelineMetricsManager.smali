.class public Lcm/aptoide/pt/v8engine/repository/TimelineMetricsManager;
.super Ljava/lang/Object;
.source "TimelineMetricsManager.java"


# instance fields
.field private analytics:Lcm/aptoide/pt/v8engine/analytics/Analytics;


# direct methods
.method public constructor <init>(Lcm/aptoide/pt/v8engine/analytics/Analytics;)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcm/aptoide/pt/v8engine/repository/TimelineMetricsManager;->analytics:Lcm/aptoide/pt/v8engine/analytics/Analytics;

    .line 15
    return-void
.end method


# virtual methods
.method public sendEvent(Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Data;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 18
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/repository/TimelineMetricsManager;->analytics:Lcm/aptoide/pt/v8engine/analytics/Analytics;

    new-instance v1, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/TimelineClickEvent;

    invoke-direct {v1, p1, p2}, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/TimelineClickEvent;-><init>(Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Data;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcm/aptoide/pt/v8engine/analytics/Analytics;->sendEvent(Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/Event;)V

    .line 19
    return-void
.end method
