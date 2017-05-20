.class public Lcm/aptoide/pt/v8engine/analytics/Analytics$AdultContent;
.super Ljava/lang/Object;
.source "Analytics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcm/aptoide/pt/v8engine/analytics/Analytics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AdultContent"
.end annotation


# static fields
.field public static final EVENT_NAME:Ljava/lang/String; = "Adult Content"

.field public static final LOCK:Ljava/lang/String; = "true"

.field public static final UNLOCK:Ljava/lang/String; = "false"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 561
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static lock()V
    .locals 4

    .prologue
    .line 569
    const-string v0, "Adult Content"

    const-string v1, "Action"

    const-string v2, "true"

    const/4 v3, 0x2

    # invokes: Lcm/aptoide/pt/v8engine/analytics/Analytics;->track(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    invoke-static {v0, v1, v2, v3}, Lcm/aptoide/pt/v8engine/analytics/Analytics;->access$400(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 570
    return-void
.end method

.method public static unlock()V
    .locals 4

    .prologue
    .line 573
    const-string v0, "Adult Content"

    const-string v1, "Action"

    const-string v2, "false"

    const/4 v3, 0x2

    # invokes: Lcm/aptoide/pt/v8engine/analytics/Analytics;->track(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    invoke-static {v0, v1, v2, v3}, Lcm/aptoide/pt/v8engine/analytics/Analytics;->access$400(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 574
    return-void
.end method
