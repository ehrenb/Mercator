.class public Lcm/aptoide/pt/v8engine/analytics/Analytics$Screens;
.super Ljava/lang/Object;
.source "Analytics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcm/aptoide/pt/v8engine/analytics/Analytics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Screens"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 378
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static tagScreen(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 382
    # getter for: Lcm/aptoide/pt/v8engine/analytics/Analytics;->ACTIVATE_LOCALYTICS:Z
    invoke-static {}, Lcm/aptoide/pt/v8engine/analytics/Analytics;->access$000()Z

    move-result v0

    if-nez v0, :cond_0

    .line 388
    :goto_0
    return-void

    .line 384
    :cond_0
    # getter for: Lcm/aptoide/pt/v8engine/analytics/Analytics;->TAG:Ljava/lang/String;
    invoke-static {}, Lcm/aptoide/pt/v8engine/analytics/Analytics;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Localytics: Screens: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcm/aptoide/pt/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    invoke-static {p0}, Lcom/localytics/android/Localytics;->tagScreen(Ljava/lang/String;)V

    .line 387
    invoke-static {}, Lcom/localytics/android/Localytics;->upload()V

    goto :goto_0
.end method
