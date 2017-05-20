.class final Lcom/localytics/android/LocalyticsManager$HandlerWrapper;
.super Ljava/lang/Object;
.source "LocalyticsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/localytics/android/LocalyticsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "HandlerWrapper"
.end annotation


# instance fields
.field analyticsHandler:Lcom/localytics/android/AnalyticsHandler;

.field locationHandler:Lcom/localytics/android/LocationHandler;

.field manifestHandler:Lcom/localytics/android/ManifestHandler;

.field marketingHandler:Lcom/localytics/android/MarketingHandler;

.field profileHandler:Lcom/localytics/android/ProfileHandler;

.field final synthetic this$0:Lcom/localytics/android/LocalyticsManager;


# direct methods
.method private constructor <init>(Lcom/localytics/android/LocalyticsManager;Lcom/localytics/android/AnalyticsHandler;Lcom/localytics/android/MarketingHandler;Lcom/localytics/android/ProfileHandler;Lcom/localytics/android/ManifestHandler;Lcom/localytics/android/LocationHandler;)V
    .locals 0

    .prologue
    .line 1152
    iput-object p1, p0, Lcom/localytics/android/LocalyticsManager$HandlerWrapper;->this$0:Lcom/localytics/android/LocalyticsManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1153
    iput-object p2, p0, Lcom/localytics/android/LocalyticsManager$HandlerWrapper;->analyticsHandler:Lcom/localytics/android/AnalyticsHandler;

    .line 1154
    iput-object p3, p0, Lcom/localytics/android/LocalyticsManager$HandlerWrapper;->marketingHandler:Lcom/localytics/android/MarketingHandler;

    .line 1155
    iput-object p4, p0, Lcom/localytics/android/LocalyticsManager$HandlerWrapper;->profileHandler:Lcom/localytics/android/ProfileHandler;

    .line 1156
    iput-object p5, p0, Lcom/localytics/android/LocalyticsManager$HandlerWrapper;->manifestHandler:Lcom/localytics/android/ManifestHandler;

    .line 1157
    iput-object p6, p0, Lcom/localytics/android/LocalyticsManager$HandlerWrapper;->locationHandler:Lcom/localytics/android/LocationHandler;

    .line 1158
    return-void
.end method

.method synthetic constructor <init>(Lcom/localytics/android/LocalyticsManager;Lcom/localytics/android/AnalyticsHandler;Lcom/localytics/android/MarketingHandler;Lcom/localytics/android/ProfileHandler;Lcom/localytics/android/ManifestHandler;Lcom/localytics/android/LocationHandler;Lcom/localytics/android/LocalyticsManager$1;)V
    .locals 0

    .prologue
    .line 1139
    invoke-direct/range {p0 .. p6}, Lcom/localytics/android/LocalyticsManager$HandlerWrapper;-><init>(Lcom/localytics/android/LocalyticsManager;Lcom/localytics/android/AnalyticsHandler;Lcom/localytics/android/MarketingHandler;Lcom/localytics/android/ProfileHandler;Lcom/localytics/android/ManifestHandler;Lcom/localytics/android/LocationHandler;)V

    return-void
.end method
