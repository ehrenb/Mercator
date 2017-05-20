.class public Lcm/aptoide/pt/v8engine/analytics/Analytics$AppsTimeline;
.super Ljava/lang/Object;
.source "Analytics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcm/aptoide/pt/v8engine/analytics/Analytics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppsTimeline"
.end annotation


# static fields
.field public static final ACTION:Ljava/lang/String; = "Action"

.field public static final BLANK:Ljava/lang/String; = "(blank)"

.field public static final CARD_TYPE:Ljava/lang/String; = "Card Type"

.field public static final EVENT_NAME:Ljava/lang/String; = "Apps Timeline"

.field public static final OPEN_APP_VIEW:Ljava/lang/String; = "Open App View"

.field public static final OPEN_ARTICLE:Ljava/lang/String; = "Open Article"

.field public static final OPEN_ARTICLE_HEADER:Ljava/lang/String; = "Open Article Header"

.field public static final OPEN_STORE:Ljava/lang/String; = "Open Store"

.field public static final OPEN_VIDEO:Ljava/lang/String; = "Open Video"

.field public static final OPEN_VIDEO_HEADER:Ljava/lang/String; = "Open Video Header"

.field public static final PACKAGE_NAME:Ljava/lang/String; = "Package Name"

.field public static final PUBLISHER:Ljava/lang/String; = "Publisher"

.field public static final TITLE:Ljava/lang/String; = "Title"

.field public static final UPDATE_APP:Ljava/lang/String; = "Update Application"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 834
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clickOnCard(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 854
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 856
    const-string v1, "Action"

    invoke-virtual {v0, v1, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 857
    const-string v1, "Package Name"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 858
    const-string v1, "Title"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 859
    const-string v1, "Publisher"

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 861
    invoke-static {v0, p0}, Lcm/aptoide/pt/v8engine/analytics/Analytics$AppsTimeline;->localyticsTrack(Ljava/util/HashMap;Ljava/lang/String;)V

    .line 862
    invoke-static {v0, p0}, Lcm/aptoide/pt/v8engine/analytics/Analytics$AppsTimeline;->flurryTrack(Ljava/util/HashMap;Ljava/lang/String;)V

    .line 863
    return-void
.end method

.method public static endlessScrollLoadMore()V
    .locals 2

    .prologue
    .line 880
    const-string v0, "Endless-scroll_Apps Timeline"

    const/4 v1, 0x2

    # invokes: Lcm/aptoide/pt/v8engine/analytics/Analytics;->track(Ljava/lang/String;I)V
    invoke-static {v0, v1}, Lcm/aptoide/pt/v8engine/analytics/Analytics;->access$500(Ljava/lang/String;I)V

    .line 881
    return-void
.end method

.method private static flurryTrack(Ljava/util/HashMap;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 871
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Apps Timeline"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 872
    const/4 v1, 0x2

    # invokes: Lcm/aptoide/pt/v8engine/analytics/Analytics;->track(Ljava/lang/String;Ljava/util/HashMap;I)V
    invoke-static {v0, p0, v1}, Lcm/aptoide/pt/v8engine/analytics/Analytics;->access$600(Ljava/lang/String;Ljava/util/HashMap;I)V

    .line 873
    return-void
.end method

.method private static localyticsTrack(Ljava/util/HashMap;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 866
    const-string v0, "Card Type"

    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 867
    const-string v0, "Apps Timeline"

    const/4 v1, 0x1

    # invokes: Lcm/aptoide/pt/v8engine/analytics/Analytics;->track(Ljava/lang/String;Ljava/util/HashMap;I)V
    invoke-static {v0, p0, v1}, Lcm/aptoide/pt/v8engine/analytics/Analytics;->access$600(Ljava/lang/String;Ljava/util/HashMap;I)V

    .line 868
    return-void
.end method

.method public static openTimeline()V
    .locals 2

    .prologue
    .line 884
    const-string v0, "Open Apps Timeline"

    const/4 v1, 0x2

    # invokes: Lcm/aptoide/pt/v8engine/analytics/Analytics;->track(Ljava/lang/String;I)V
    invoke-static {v0, v1}, Lcm/aptoide/pt/v8engine/analytics/Analytics;->access$500(Ljava/lang/String;I)V

    .line 885
    return-void
.end method

.method public static pullToRefresh()V
    .locals 2

    .prologue
    .line 876
    const-string v0, "Pull-to-refresh_Apps Timeline"

    const/4 v1, 0x2

    # invokes: Lcm/aptoide/pt/v8engine/analytics/Analytics;->track(Ljava/lang/String;I)V
    invoke-static {v0, v1}, Lcm/aptoide/pt/v8engine/analytics/Analytics;->access$500(Ljava/lang/String;I)V

    .line 877
    return-void
.end method
