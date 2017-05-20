.class public Lcm/aptoide/pt/v8engine/analytics/Analytics$Updates;
.super Ljava/lang/Object;
.source "Analytics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcm/aptoide/pt/v8engine/analytics/Analytics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Updates"
.end annotation


# static fields
.field public static final CLICKED_ON_CREATE_REVIEW:Ljava/lang/String; = "Create Review"

.field public static final CLICKED_ON_UPDATE:Ljava/lang/String; = "Update"

.field public static final CLICKED_ON_UPDATE_ALL:Ljava/lang/String; = "Update All"

.field public static final EVENT_NAME:Ljava/lang/String; = "Updates"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 617
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createReview()V
    .locals 4

    .prologue
    .line 633
    const-string v0, "Updates"

    const-string v1, "Action"

    const-string v2, "Create Review"

    const/4 v3, 0x1

    # invokes: Lcm/aptoide/pt/v8engine/analytics/Analytics;->track(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    invoke-static {v0, v1, v2, v3}, Lcm/aptoide/pt/v8engine/analytics/Analytics;->access$400(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 634
    return-void
.end method

.method public static update()V
    .locals 4

    .prologue
    .line 625
    const-string v0, "Updates"

    const-string v1, "Action"

    const-string v2, "Update"

    const/4 v3, 0x1

    # invokes: Lcm/aptoide/pt/v8engine/analytics/Analytics;->track(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    invoke-static {v0, v1, v2, v3}, Lcm/aptoide/pt/v8engine/analytics/Analytics;->access$400(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 626
    return-void
.end method

.method public static updateAll()V
    .locals 4

    .prologue
    .line 629
    const-string v0, "Updates"

    const-string v1, "Action"

    const-string v2, "Update All"

    const/4 v3, 0x1

    # invokes: Lcm/aptoide/pt/v8engine/analytics/Analytics;->track(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    invoke-static {v0, v1, v2, v3}, Lcm/aptoide/pt/v8engine/analytics/Analytics;->access$400(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 630
    return-void
.end method
