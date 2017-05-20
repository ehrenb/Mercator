.class public Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/AnalyticsDataSaver;
.super Ljava/lang/Object;
.source "AnalyticsDataSaver.java"


# instance fields
.field private map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/Event;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/AnalyticsDataSaver;->map:Ljava/util/Map;

    .line 15
    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;)Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/Event;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/AnalyticsDataSaver;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/Event;

    return-object v0
.end method

.method public remove(Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/Event;)V
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/AnalyticsDataSaver;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 31
    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/AnalyticsDataSaver;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    return-void
.end method

.method public save(Ljava/lang/String;Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/Event;)V
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/AnalyticsDataSaver;->map:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    return-void
.end method
