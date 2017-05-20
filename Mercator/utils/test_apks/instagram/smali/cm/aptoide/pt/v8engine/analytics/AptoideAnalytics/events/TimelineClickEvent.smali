.class public Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/TimelineClickEvent;
.super Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/Event;
.source "TimelineClickEvent.java"


# static fields
.field public static final OPEN_APP:Ljava/lang/String; = "OPEN_APP"

.field public static final OPEN_ARTICLE:Ljava/lang/String; = "OPEN_ARTICLE"

.field public static final OPEN_BLOG:Ljava/lang/String; = "OPEN_BLOG"

.field public static final OPEN_CHANNEL:Ljava/lang/String; = "OPEN_CHANNEL"

.field public static final OPEN_STORE:Ljava/lang/String; = "OPEN_STORE"

.field public static final OPEN_VIDEO:Ljava/lang/String; = "OPEN_VIDEO"

.field public static final SOURCE_APTOIDE:Ljava/lang/String; = "APTOIDE"

.field public static final UPDATE_APP:Ljava/lang/String; = "UPDATE_APP"


# instance fields
.field private final data:Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Data;

.field private final eventName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Data;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/Event;-><init>()V

    .line 25
    iput-object p1, p0, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/TimelineClickEvent;->data:Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Data;

    .line 26
    iput-object p2, p0, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/TimelineClickEvent;->eventName:Ljava/lang/String;

    .line 27
    return-void
.end method

.method static synthetic lambda$send$0(Lcm/aptoide/pt/model/v7/BaseV7Response;)V
    .locals 0

    .prologue
    .line 34
    return-void
.end method

.method static synthetic lambda$send$1(Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 34
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method


# virtual methods
.method public send()V
    .locals 3

    .prologue
    .line 30
    invoke-static {}, Lcm/aptoide/accountmanager/AptoideAccountManager;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/TimelineClickEvent;->data:Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Data;

    iget-object v2, p0, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/TimelineClickEvent;->eventName:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest;->of(Ljava/lang/String;Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Data;Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest;

    move-result-object v0

    .line 31
    invoke-virtual {v0}, Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest;->observe()Lrx/d;

    move-result-object v0

    .line 32
    invoke-static {}, Lrx/g/a;->d()Lrx/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->a(Lrx/g;)Lrx/d;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/TimelineClickEvent$$Lambda$1;->lambdaFactory$()Lrx/b/b;

    move-result-object v1

    invoke-static {}, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/TimelineClickEvent$$Lambda$2;->lambdaFactory$()Lrx/b/b;

    move-result-object v2

    .line 33
    invoke-virtual {v0, v1, v2}, Lrx/d;->a(Lrx/b/b;Lrx/b/b;)Lrx/k;

    .line 35
    return-void
.end method
