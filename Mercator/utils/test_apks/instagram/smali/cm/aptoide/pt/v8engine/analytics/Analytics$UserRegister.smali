.class public Lcm/aptoide/pt/v8engine/analytics/Analytics$UserRegister;
.super Ljava/lang/Object;
.source "Analytics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcm/aptoide/pt/v8engine/analytics/Analytics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UserRegister"
.end annotation


# static fields
.field public static final EVENT_NAME:Ljava/lang/String; = "User Registered"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 405
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static registered()V
    .locals 2

    .prologue
    .line 410
    const-string v0, "User Registered"

    const v1, 0x7fffffff

    # invokes: Lcm/aptoide/pt/v8engine/analytics/Analytics;->track(Ljava/lang/String;I)V
    invoke-static {v0, v1}, Lcm/aptoide/pt/v8engine/analytics/Analytics;->access$500(Ljava/lang/String;I)V

    .line 411
    return-void
.end method
