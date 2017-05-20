.class public Lcm/aptoide/pt/v8engine/analytics/Analytics$ClickedOnInstallButton;
.super Ljava/lang/Object;
.source "Analytics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcm/aptoide/pt/v8engine/analytics/Analytics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ClickedOnInstallButton"
.end annotation


# static fields
.field private static final APPLICATION_NAME:Ljava/lang/String; = "Application Name"

.field private static final APPLICATION_PUBLISHER:Ljava/lang/String; = "Application Publisher"

.field private static final EVENT_NAME:Ljava/lang/String; = "Clicked on install button"

.field private static final WARNING:Ljava/lang/String; = "Warning"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 766
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clicked(Lcm/aptoide/pt/model/v7/GetAppMeta$App;)V
    .locals 3

    .prologue
    .line 776
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 778
    const-string v1, "Application Name"

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 779
    const-string v1, "Application Publisher"

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getDeveloper()Lcm/aptoide/pt/model/v7/GetAppMeta$Developer;

    move-result-object v2

    invoke-virtual {v2}, Lcm/aptoide/pt/model/v7/GetAppMeta$Developer;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 781
    const-string v1, "Clicked on install button"

    const v2, 0x7fffffff

    # invokes: Lcm/aptoide/pt/v8engine/analytics/Analytics;->track(Ljava/lang/String;Ljava/util/HashMap;I)V
    invoke-static {v1, v0, v2}, Lcm/aptoide/pt/v8engine/analytics/Analytics;->access$600(Ljava/lang/String;Ljava/util/HashMap;I)V

    .line 783
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 784
    const-string v1, "Application Name"

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 785
    const-string v1, "Application Publisher"

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getDeveloper()Lcm/aptoide/pt/model/v7/GetAppMeta$Developer;

    move-result-object v2

    invoke-virtual {v2}, Lcm/aptoide/pt/model/v7/GetAppMeta$Developer;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 786
    const-string v1, "Clicked on install button"

    # invokes: Lcm/aptoide/pt/v8engine/analytics/Analytics;->logFacebookEvents(Ljava/lang/String;Landroid/os/Bundle;)V
    invoke-static {v1, v0}, Lcm/aptoide/pt/v8engine/analytics/Analytics;->access$700(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 790
    :goto_0
    return-void

    .line 787
    :catch_0
    move-exception v0

    .line 788
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
