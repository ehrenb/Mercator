.class public Lcm/aptoide/pt/v8engine/analytics/Analytics$AccountEvents;
.super Ljava/lang/Object;
.source "Analytics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcm/aptoide/pt/v8engine/analytics/Analytics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AccountEvents"
.end annotation


# static fields
.field public static final ACTION:Ljava/lang/String; = "Action"

.field public static final LOGGED_IN_EVENT:Ljava/lang/String; = "Logged in"

.field public static final USER_REGISTERED:Ljava/lang/String; = "User Registered"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static login(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1168
    const-string v0, "Logged in"

    const-string v1, "Action"

    const/4 v2, 0x1

    # invokes: Lcm/aptoide/pt/v8engine/analytics/Analytics;->track(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    invoke-static {v0, v1, p0, v2}, Lcm/aptoide/pt/v8engine/analytics/Analytics;->access$400(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1169
    return-void
.end method

.method public static signUp()V
    .locals 2

    .prologue
    .line 1172
    const-string v0, "User Registered"

    const/4 v1, 0x1

    # invokes: Lcm/aptoide/pt/v8engine/analytics/Analytics;->track(Ljava/lang/String;I)V
    invoke-static {v0, v1}, Lcm/aptoide/pt/v8engine/analytics/Analytics;->access$500(Ljava/lang/String;I)V

    .line 1173
    return-void
.end method
