.class public Lcm/aptoide/pt/v8engine/analytics/Analytics$Rollback;
.super Ljava/lang/Object;
.source "Analytics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcm/aptoide/pt/v8engine/analytics/Analytics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Rollback"
.end annotation


# static fields
.field private static final CLEAR:Ljava/lang/String; = "Clear"

.field private static final DOWNGRADED:Ljava/lang/String; = "Downgraded"

.field private static final EVENT_NAME:Ljava/lang/String; = "Rollback"

.field private static final EVENT_NAME_DOWNGRADE_DIALOG:Ljava/lang/String; = "Downgrade_Dialog"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 415
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clear()V
    .locals 0

    .prologue
    .line 436
    return-void
.end method

.method public static downgradeDialogCancel()V
    .locals 4

    .prologue
    .line 431
    const-string v0, "Downgrade_Dialog"

    const-string v1, "Action"

    const-string v2, "Cancel"

    const/4 v3, 0x2

    # invokes: Lcm/aptoide/pt/v8engine/analytics/Analytics;->track(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    invoke-static {v0, v1, v2, v3}, Lcm/aptoide/pt/v8engine/analytics/Analytics;->access$400(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 432
    return-void
.end method

.method public static downgradeDialogContinue()V
    .locals 4

    .prologue
    .line 427
    const-string v0, "Downgrade_Dialog"

    const-string v1, "Action"

    const-string v2, "Continue"

    const/4 v3, 0x2

    # invokes: Lcm/aptoide/pt/v8engine/analytics/Analytics;->track(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    invoke-static {v0, v1, v2, v3}, Lcm/aptoide/pt/v8engine/analytics/Analytics;->access$400(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 428
    return-void
.end method

.method public static downgraded()V
    .locals 0

    .prologue
    .line 424
    return-void
.end method
