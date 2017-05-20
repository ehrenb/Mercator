.class public Lcm/aptoide/pt/v8engine/analytics/Analytics$SendFeedback;
.super Ljava/lang/Object;
.source "Analytics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcm/aptoide/pt/v8engine/analytics/Analytics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SendFeedback"
.end annotation


# static fields
.field public static final EVENT_NAME:Ljava/lang/String; = "Send Feedback"

.field private static final SEND_FEEDBACK:Ljava/lang/String; = "Send Feedback"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 458
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static sendFeedback()V
    .locals 4

    .prologue
    .line 464
    const-string v0, "Send Feedback"

    const-string v1, "Action"

    const-string v2, "Send Feedback"

    const v3, 0x7fffffff

    # invokes: Lcm/aptoide/pt/v8engine/analytics/Analytics;->track(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    invoke-static {v0, v1, v2, v3}, Lcm/aptoide/pt/v8engine/analytics/Analytics;->access$400(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 465
    return-void
.end method
