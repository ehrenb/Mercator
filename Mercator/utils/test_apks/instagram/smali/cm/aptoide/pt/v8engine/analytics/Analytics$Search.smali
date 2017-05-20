.class public Lcm/aptoide/pt/v8engine/analytics/Analytics$Search;
.super Ljava/lang/Object;
.source "Analytics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcm/aptoide/pt/v8engine/analytics/Analytics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Search"
.end annotation


# static fields
.field public static final EVENT_NAME_NO_SEARCH_RESULTS:Ljava/lang/String; = "No Search Result"

.field public static final EVENT_NAME_SEARCH_TERM:Ljava/lang/String; = "Search Term"

.field public static final QUERY:Ljava/lang/String; = "Query"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 654
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static noSearchResults(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 667
    const-string v0, "No Search Result"

    const-string v1, "Query"

    const v2, 0x7fffffff

    # invokes: Lcm/aptoide/pt/v8engine/analytics/Analytics;->track(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    invoke-static {v0, v1, p0, v2}, Lcm/aptoide/pt/v8engine/analytics/Analytics;->access$400(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 668
    return-void
.end method

.method public static searchTerm(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 663
    const-string v0, "Search Term"

    const-string v1, "Query"

    const/4 v2, 0x1

    # invokes: Lcm/aptoide/pt/v8engine/analytics/Analytics;->track(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    invoke-static {v0, v1, p0, v2}, Lcm/aptoide/pt/v8engine/analytics/Analytics;->access$400(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 664
    return-void
.end method
