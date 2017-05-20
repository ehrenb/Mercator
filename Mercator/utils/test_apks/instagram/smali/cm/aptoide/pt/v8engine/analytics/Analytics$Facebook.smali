.class public Lcm/aptoide/pt/v8engine/analytics/Analytics$Facebook;
.super Ljava/lang/Object;
.source "Analytics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcm/aptoide/pt/v8engine/analytics/Analytics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Facebook"
.end annotation


# static fields
.field public static final EVENT_NAME:Ljava/lang/String; = "Facebook"

.field public static final JOIN:Ljava/lang/String; = "Join"

.field public static final LOGIN:Ljava/lang/String; = "Login"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 498
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static join()V
    .locals 4

    .prologue
    .line 506
    const-string v0, "Facebook"

    const-string v1, "Action"

    const-string v2, "Join"

    const v3, 0x7fffffff

    # invokes: Lcm/aptoide/pt/v8engine/analytics/Analytics;->track(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    invoke-static {v0, v1, v2, v3}, Lcm/aptoide/pt/v8engine/analytics/Analytics;->access$400(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 507
    return-void
.end method

.method public static login()V
    .locals 4

    .prologue
    .line 510
    const-string v0, "Facebook"

    const-string v1, "Action"

    const-string v2, "Login"

    const v3, 0x7fffffff

    # invokes: Lcm/aptoide/pt/v8engine/analytics/Analytics;->track(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    invoke-static {v0, v1, v2, v3}, Lcm/aptoide/pt/v8engine/analytics/Analytics;->access$400(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 511
    return-void
.end method
