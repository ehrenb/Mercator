.class public Lcm/aptoide/pt/v8engine/analytics/Analytics$ExcludedUpdates;
.super Ljava/lang/Object;
.source "Analytics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcm/aptoide/pt/v8engine/analytics/Analytics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExcludedUpdates"
.end annotation


# static fields
.field private static final EVENT_NAME:Ljava/lang/String; = "Excluded Updates"

.field private static final RESTORE_UPDATES:Ljava/lang/String; = "Restore Updates"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 468
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static restoreUpdates()V
    .locals 4

    .prologue
    .line 473
    const-string v0, "Excluded Updates"

    const-string v1, "Action"

    const-string v2, "Restore Updates"

    const v3, 0x7fffffff

    # invokes: Lcm/aptoide/pt/v8engine/analytics/Analytics;->track(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    invoke-static {v0, v1, v2, v3}, Lcm/aptoide/pt/v8engine/analytics/Analytics;->access$400(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 474
    return-void
.end method
