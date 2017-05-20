.class public Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/AccountAnalytcsImp;
.super Ljava/lang/Object;
.source "AccountAnalytcsImp.java"

# interfaces
.implements Lcm/aptoide/accountmanager/Analytics;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public login(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 13
    invoke-static {p1}, Lcm/aptoide/pt/v8engine/analytics/Analytics$AccountEvents;->login(Ljava/lang/String;)V

    .line 14
    return-void
.end method

.method public signUp()V
    .locals 0

    .prologue
    .line 17
    invoke-static {}, Lcm/aptoide/pt/v8engine/analytics/Analytics$AccountEvents;->signUp()V

    .line 18
    return-void
.end method
