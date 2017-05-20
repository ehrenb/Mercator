.class public Lcm/aptoide/pt/v8engine/analytics/Analytics$ApplicationLaunch;
.super Ljava/lang/Object;
.source "Analytics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcm/aptoide/pt/v8engine/analytics/Analytics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ApplicationLaunch"
.end annotation


# static fields
.field public static final DOWNLOADING_UPDATES:Ljava/lang/String; = "Downloading Updates"

.field public static final EVENT_NAME:Ljava/lang/String; = "Application Launch"

.field public static final LAUNCHER:Ljava/lang/String; = "Launcher"

.field public static final NEW_REPO:Ljava/lang/String; = "New Repository"

.field public static final NEW_UPDATES_NOTIFICATION:Ljava/lang/String; = "New Updates Available"

.field public static final SOURCE:Ljava/lang/String; = "Source"

.field public static final TIMELINE_NOTIFICATION:Ljava/lang/String; = "Timeline Notification"

.field public static final URI:Ljava/lang/String; = "Uri"

.field public static final WEBSITE:Ljava/lang/String; = "Website"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 716
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static downloadingUpdates()V
    .locals 4

    .prologue
    .line 754
    const-string v0, "Application Launch"

    const-string v1, "Source"

    const-string v2, "Downloading Updates"

    const v3, 0x7fffffff

    # invokes: Lcm/aptoide/pt/v8engine/analytics/Analytics;->track(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    invoke-static {v0, v1, v2, v3}, Lcm/aptoide/pt/v8engine/analytics/Analytics;->access$400(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 755
    return-void
.end method

.method public static launcher()V
    .locals 4

    .prologue
    .line 729
    const-string v0, "Application Launch"

    const-string v1, "Source"

    const-string v2, "Launcher"

    const/4 v3, 0x1

    # invokes: Lcm/aptoide/pt/v8engine/analytics/Analytics;->track(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    invoke-static {v0, v1, v2, v3}, Lcm/aptoide/pt/v8engine/analytics/Analytics;->access$400(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 730
    return-void
.end method

.method public static newRepo()V
    .locals 4

    .prologue
    .line 762
    const-string v0, "Application Launch"

    const-string v1, "Source"

    const-string v2, "New Repository"

    const v3, 0x7fffffff

    # invokes: Lcm/aptoide/pt/v8engine/analytics/Analytics;->track(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    invoke-static {v0, v1, v2, v3}, Lcm/aptoide/pt/v8engine/analytics/Analytics;->access$400(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 763
    return-void
.end method

.method public static newUpdatesNotification()V
    .locals 4

    .prologue
    .line 750
    const-string v0, "Application Launch"

    const-string v1, "Source"

    const-string v2, "New Updates Available"

    const v3, 0x7fffffff

    # invokes: Lcm/aptoide/pt/v8engine/analytics/Analytics;->track(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    invoke-static {v0, v1, v2, v3}, Lcm/aptoide/pt/v8engine/analytics/Analytics;->access$400(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 751
    return-void
.end method

.method public static timelineNotification()V
    .locals 4

    .prologue
    .line 758
    const-string v0, "Application Launch"

    const-string v1, "Source"

    const-string v2, "Timeline Notification"

    const v3, 0x7fffffff

    # invokes: Lcm/aptoide/pt/v8engine/analytics/Analytics;->track(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    invoke-static {v0, v1, v2, v3}, Lcm/aptoide/pt/v8engine/analytics/Analytics;->access$400(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 759
    return-void
.end method

.method public static website(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 733
    # getter for: Lcm/aptoide/pt/v8engine/analytics/Analytics;->TAG:Ljava/lang/String;
    invoke-static {}, Lcm/aptoide/pt/v8engine/analytics/Analytics;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "website: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcm/aptoide/pt/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 736
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 737
    const-string v1, "Source"

    const-string v2, "Website"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 739
    if-eqz p0, :cond_0

    .line 740
    const-string v1, "Uri"

    const/4 v2, 0x0

    const-string v3, ":"

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 743
    :cond_0
    const-string v1, "Application Launch"

    const v2, 0x7fffffff

    # invokes: Lcm/aptoide/pt/v8engine/analytics/Analytics;->track(Ljava/lang/String;Ljava/util/HashMap;I)V
    invoke-static {v1, v0, v2}, Lcm/aptoide/pt/v8engine/analytics/Analytics;->access$600(Ljava/lang/String;Ljava/util/HashMap;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 747
    :goto_0
    return-void

    .line 744
    :catch_0
    move-exception v0

    .line 745
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
