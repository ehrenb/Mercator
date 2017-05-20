.class public Lcom/localytics/android/Localytics;
.super Ljava/lang/Object;
.source "Localytics.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/localytics/android/Localytics$Log;,
        Lcom/localytics/android/Localytics$ProfileScope;,
        Lcom/localytics/android/Localytics$InAppMessageDismissButtonLocation;
    }
.end annotation


# static fields
.field static final ANALYTICS_HOST_KEY:Ljava/lang/String; = "analytics_host"

.field static final IGNORE_STANDARD_EVENT_CLV:Ljava/lang/String; = "ignore_standard_event_clv"

.field static final MANIFEST_HOST_KEY:Ljava/lang/String; = "manifest_host"

.field static final MAX_MONITORING_REGIONS_KEY:Ljava/lang/String; = "max_monitoring_regions"

.field static final MAX_REGION_DWELL_TIME_KEY:Ljava/lang/String; = "max_region_dwell_time"

.field static final MESSAGING_HOST_KEY:Ljava/lang/String; = "messaging_host"

.field static final MIN_REGION_DWELL_TIME_KEY:Ljava/lang/String; = "min_region_dwell_time"

.field static final PLUGIN_LIBRARY_KEY:Ljava/lang/String; = "plugin_library"

.field static final PROFILES_HOST_KEY:Ljava/lang/String; = "profiles_host"

.field static final PUSH_API_HOST_KEY:Ljava/lang/String; = "push_api_host"

.field static final REGION_THROTTLE_TIME_KEY:Ljava/lang/String; = "region_throttle_time"

.field static final SESSION_TIMEOUT_KEY:Ljava/lang/String; = "session_timeout"

.field static final TEST_DEVICES_HOST_KEY:Ljava/lang/String; = "test_devices_host"

.field static final TEST_PUSH_EVENTS_HOST_KEY:Ljava/lang/String; = "test_push_events_host"

.field static final USE_HTTPS_KEY:Ljava/lang/String; = "use_https"

.field static final USE_SANDBOX_KEY:Ljava/lang/String; = "use_sandbox"

.field private static final optionBooleanKeys:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final optionStringKeys:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final optionsNumberKeys:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 70
    new-instance v0, Lcom/localytics/android/Localytics$1;

    invoke-direct {v0}, Lcom/localytics/android/Localytics$1;-><init>()V

    sput-object v0, Lcom/localytics/android/Localytics;->optionsNumberKeys:Ljava/util/Set;

    .line 77
    new-instance v0, Lcom/localytics/android/Localytics$2;

    invoke-direct {v0}, Lcom/localytics/android/Localytics$2;-><init>()V

    sput-object v0, Lcom/localytics/android/Localytics;->optionStringKeys:Ljava/util/Set;

    .line 88
    new-instance v0, Lcom/localytics/android/Localytics$3;

    invoke-direct {v0}, Lcom/localytics/android/Localytics$3;-><init>()V

    sput-object v0, Lcom/localytics/android/Localytics;->optionBooleanKeys:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1888
    return-void
.end method

.method public static addProfileAttributesToSet(Ljava/lang/String;[J)V
    .locals 1

    .prologue
    .line 759
    sget-object v0, Lcom/localytics/android/Localytics$ProfileScope;->APPLICATION:Lcom/localytics/android/Localytics$ProfileScope;

    invoke-static {p0, p1, v0}, Lcom/localytics/android/Localytics;->addProfileAttributesToSet(Ljava/lang/String;[JLcom/localytics/android/Localytics$ProfileScope;)V

    .line 760
    return-void
.end method

.method public static addProfileAttributesToSet(Ljava/lang/String;[JLcom/localytics/android/Localytics$ProfileScope;)V
    .locals 1

    .prologue
    .line 748
    invoke-static {}, Lcom/localytics/android/LocalyticsManager;->getInstance()Lcom/localytics/android/LocalyticsManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/localytics/android/LocalyticsManager;->addProfileAttributesToSet(Ljava/lang/String;[JLcom/localytics/android/Localytics$ProfileScope;)V

    .line 749
    return-void
.end method

.method public static addProfileAttributesToSet(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 782
    sget-object v0, Lcom/localytics/android/Localytics$ProfileScope;->APPLICATION:Lcom/localytics/android/Localytics$ProfileScope;

    invoke-static {p0, p1, v0}, Lcom/localytics/android/Localytics;->addProfileAttributesToSet(Ljava/lang/String;[Ljava/lang/String;Lcom/localytics/android/Localytics$ProfileScope;)V

    .line 783
    return-void
.end method

.method public static addProfileAttributesToSet(Ljava/lang/String;[Ljava/lang/String;Lcom/localytics/android/Localytics$ProfileScope;)V
    .locals 1

    .prologue
    .line 771
    invoke-static {}, Lcom/localytics/android/LocalyticsManager;->getInstance()Lcom/localytics/android/LocalyticsManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/localytics/android/LocalyticsManager;->addProfileAttributesToSet(Ljava/lang/String;[Ljava/lang/String;Lcom/localytics/android/Localytics$ProfileScope;)V

    .line 772
    return-void
.end method

.method public static addProfileAttributesToSet(Ljava/lang/String;[Ljava/util/Date;)V
    .locals 1

    .prologue
    .line 805
    sget-object v0, Lcom/localytics/android/Localytics$ProfileScope;->APPLICATION:Lcom/localytics/android/Localytics$ProfileScope;

    invoke-static {p0, p1, v0}, Lcom/localytics/android/Localytics;->addProfileAttributesToSet(Ljava/lang/String;[Ljava/util/Date;Lcom/localytics/android/Localytics$ProfileScope;)V

    .line 806
    return-void
.end method

.method public static addProfileAttributesToSet(Ljava/lang/String;[Ljava/util/Date;Lcom/localytics/android/Localytics$ProfileScope;)V
    .locals 1

    .prologue
    .line 794
    invoke-static {}, Lcom/localytics/android/LocalyticsManager;->getInstance()Lcom/localytics/android/LocalyticsManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/localytics/android/LocalyticsManager;->addProfileAttributesToSet(Ljava/lang/String;[Ljava/util/Date;Lcom/localytics/android/Localytics$ProfileScope;)V

    .line 795
    return-void
.end method

.method public static areNotificationsDisabled()Z
    .locals 1

    .prologue
    .line 1103
    invoke-static {}, Lcom/localytics/android/LocalyticsManager;->getInstance()Lcom/localytics/android/LocalyticsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/localytics/android/LocalyticsManager;->areNotificationsDisabled()Z

    move-result v0

    return v0
.end method

.method public static autoIntegrate(Landroid/app/Application;)V
    .locals 1

    .prologue
    .line 168
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/localytics/android/Localytics;->autoIntegrate(Landroid/app/Application;Ljava/lang/String;)V

    .line 169
    return-void
.end method

.method public static autoIntegrate(Landroid/app/Application;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 180
    if-nez p0, :cond_0

    .line 182
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "application cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 185
    :cond_0
    invoke-static {}, Lcom/localytics/android/LocalyticsManager;->getInstance()Lcom/localytics/android/LocalyticsManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/localytics/android/LocalyticsManager;->autoIntegrate(Landroid/app/Application;Ljava/lang/String;)V

    .line 186
    return-void
.end method

.method public static clearInAppMessageDisplayActivity()V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 1011
    invoke-static {}, Lcom/localytics/android/LocalyticsManager;->getInstance()Lcom/localytics/android/LocalyticsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/localytics/android/LocalyticsManager;->clearInAppMessageDisplayActivity()V

    .line 1012
    return-void
.end method

.method public static closeSession()V
    .locals 1

    .prologue
    .line 316
    invoke-static {}, Lcom/localytics/android/LocalyticsManager;->getInstance()Lcom/localytics/android/LocalyticsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/localytics/android/LocalyticsManager;->closeSession()V

    .line 317
    return-void
.end method

.method static decrementActivityCounter()V
    .locals 1

    .prologue
    .line 253
    invoke-static {}, Lcom/localytics/android/LocalyticsManager;->getInstance()Lcom/localytics/android/LocalyticsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/localytics/android/LocalyticsManager;->decrementActivityCounter()V

    .line 254
    return-void
.end method

.method public static decrementProfileAttribute(Ljava/lang/String;J)V
    .locals 1

    .prologue
    .line 921
    sget-object v0, Lcom/localytics/android/Localytics$ProfileScope;->APPLICATION:Lcom/localytics/android/Localytics$ProfileScope;

    invoke-static {p0, p1, p2, v0}, Lcom/localytics/android/Localytics;->decrementProfileAttribute(Ljava/lang/String;JLcom/localytics/android/Localytics$ProfileScope;)V

    .line 922
    return-void
.end method

.method public static decrementProfileAttribute(Ljava/lang/String;JLcom/localytics/android/Localytics$ProfileScope;)V
    .locals 5

    .prologue
    .line 910
    invoke-static {}, Lcom/localytics/android/LocalyticsManager;->getInstance()Lcom/localytics/android/LocalyticsManager;

    move-result-object v0

    const-wide/16 v2, -0x1

    mul-long/2addr v2, p1

    invoke-virtual {v0, p0, v2, v3, p3}, Lcom/localytics/android/LocalyticsManager;->incrementProfileAttribute(Ljava/lang/String;JLcom/localytics/android/Localytics$ProfileScope;)V

    .line 911
    return-void
.end method

.method public static deleteProfileAttribute(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 942
    sget-object v0, Lcom/localytics/android/Localytics$ProfileScope;->APPLICATION:Lcom/localytics/android/Localytics$ProfileScope;

    invoke-static {p0, v0}, Lcom/localytics/android/Localytics;->deleteProfileAttribute(Ljava/lang/String;Lcom/localytics/android/Localytics$ProfileScope;)V

    .line 943
    return-void
.end method

.method public static deleteProfileAttribute(Ljava/lang/String;Lcom/localytics/android/Localytics$ProfileScope;)V
    .locals 1

    .prologue
    .line 932
    invoke-static {}, Lcom/localytics/android/LocalyticsManager;->getInstance()Lcom/localytics/android/LocalyticsManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/localytics/android/LocalyticsManager;->deleteProfileAttribute(Ljava/lang/String;Lcom/localytics/android/Localytics$ProfileScope;)V

    .line 933
    return-void
.end method

.method public static dismissCurrentInAppMessage()V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 1043
    invoke-static {}, Lcom/localytics/android/LocalyticsManager;->getInstance()Lcom/localytics/android/LocalyticsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/localytics/android/LocalyticsManager;->dismissCurrentInAppMessage()V

    .line 1044
    return-void
.end method

.method static downloadInboxThumbnails(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/localytics/android/InboxCampaign;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1282
    invoke-static {}, Lcom/localytics/android/LocalyticsManager;->getInstance()Lcom/localytics/android/LocalyticsManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/localytics/android/LocalyticsManager;->downloadInboxThumbnails(Ljava/util/List;)V

    .line 1283
    return-void
.end method

.method public static getAppKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1763
    invoke-static {}, Lcom/localytics/android/LocalyticsManager;->getInstance()Lcom/localytics/android/LocalyticsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/localytics/android/LocalyticsManager;->getAppKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCustomDimension(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 578
    invoke-static {}, Lcom/localytics/android/LocalyticsManager;->getInstance()Lcom/localytics/android/LocalyticsManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/localytics/android/LocalyticsManager;->getCustomDimension(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCustomerId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1400
    const-string v0, "customer_id"

    invoke-static {v0}, Lcom/localytics/android/Localytics;->getIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getGeofencesToMonitor(DD)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DD)",
            "Ljava/util/List",
            "<",
            "Lcom/localytics/android/CircularRegion;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1326
    invoke-static {}, Lcom/localytics/android/LocalyticsManager;->getInstance()Lcom/localytics/android/LocalyticsManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/localytics/android/LocalyticsManager;->getGeofencesToMonitor(DD)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getIdentifier(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1412
    invoke-static {}, Lcom/localytics/android/LocalyticsManager;->getInstance()Lcom/localytics/android/LocalyticsManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/localytics/android/LocalyticsManager;->getIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getInAppMessageDismissButtonLocation()Lcom/localytics/android/Localytics$InAppMessageDismissButtonLocation;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 1797
    invoke-static {}, Lcom/localytics/android/LocalyticsManager;->getInstance()Lcom/localytics/android/LocalyticsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/localytics/android/LocalyticsManager;->getInAppMessageDismissButtonLocation()Lcom/localytics/android/Localytics$InAppMessageDismissButtonLocation;

    move-result-object v0

    return-object v0
.end method

.method public static getInboxCampaigns()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/localytics/android/InboxCampaign;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1237
    invoke-static {}, Lcom/localytics/android/LocalyticsManager;->getInstance()Lcom/localytics/android/LocalyticsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/localytics/android/LocalyticsManager;->getInboxCampaigns()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getInboxCampaignsUnreadCount()I
    .locals 1

    .prologue
    .line 1272
    invoke-static {}, Lcom/localytics/android/LocalyticsManager;->getInstance()Lcom/localytics/android/LocalyticsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/localytics/android/LocalyticsManager;->getInboxCampaignsUnreadCount()I

    move-result v0

    return v0
.end method

.method public static getInstallId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1753
    invoke-static {}, Lcom/localytics/android/LocalyticsManager;->getInstance()Lcom/localytics/android/LocalyticsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/localytics/android/LocalyticsManager;->getInstallationId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLibraryVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1773
    sget-object v0, Lcom/localytics/android/Constants;->LOCALYTICS_CLIENT_LIBRARY_VERSION:Ljava/lang/String;

    return-object v0
.end method

.method public static getPushRegistrationId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1069
    invoke-static {}, Lcom/localytics/android/LocalyticsManager;->getInstance()Lcom/localytics/android/LocalyticsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/localytics/android/LocalyticsManager;->getPushRegistrationId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static handleNotificationReceived(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 1138
    invoke-static {}, Lcom/localytics/android/LocalyticsManager;->getInstance()Lcom/localytics/android/LocalyticsManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/localytics/android/LocalyticsManager;->handleNotificationReceived(Landroid/os/Bundle;)V

    .line 1139
    return-void
.end method

.method public static handlePushNotificationOpened(Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 1113
    invoke-static {}, Lcom/localytics/android/LocalyticsManager;->getInstance()Lcom/localytics/android/LocalyticsManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/localytics/android/LocalyticsManager;->handlePushNotificationOpened(Landroid/content/Intent;)V

    .line 1114
    return-void
.end method

.method public static handlePushNotificationReceived(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 1127
    invoke-static {}, Lcom/localytics/android/LocalyticsManager;->getInstance()Lcom/localytics/android/LocalyticsManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/localytics/android/LocalyticsManager;->tagPushReceivedEvent(Landroid/os/Bundle;)V

    .line 1128
    return-void
.end method

.method public static handleTestMode(Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 1161
    invoke-static {}, Lcom/localytics/android/LocalyticsManager;->getInstance()Lcom/localytics/android/LocalyticsManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/localytics/android/LocalyticsManager;->handleTestMode(Landroid/content/Intent;)V

    .line 1162
    return-void
.end method

.method static incrementActivityCounter()V
    .locals 1

    .prologue
    .line 242
    invoke-static {}, Lcom/localytics/android/LocalyticsManager;->getInstance()Lcom/localytics/android/LocalyticsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/localytics/android/LocalyticsManager;->incrementActivityCounter()V

    .line 243
    return-void
.end method

.method public static incrementProfileAttribute(Ljava/lang/String;J)V
    .locals 1

    .prologue
    .line 898
    sget-object v0, Lcom/localytics/android/Localytics$ProfileScope;->APPLICATION:Lcom/localytics/android/Localytics$ProfileScope;

    invoke-static {p0, p1, p2, v0}, Lcom/localytics/android/Localytics;->incrementProfileAttribute(Ljava/lang/String;JLcom/localytics/android/Localytics$ProfileScope;)V

    .line 899
    return-void
.end method

.method public static incrementProfileAttribute(Ljava/lang/String;JLcom/localytics/android/Localytics$ProfileScope;)V
    .locals 1

    .prologue
    .line 887
    invoke-static {}, Lcom/localytics/android/LocalyticsManager;->getInstance()Lcom/localytics/android/LocalyticsManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/localytics/android/LocalyticsManager;->incrementProfileAttribute(Ljava/lang/String;JLcom/localytics/android/Localytics$ProfileScope;)V

    .line 888
    return-void
.end method

.method public static integrate(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 138
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/localytics/android/Localytics;->integrate(Landroid/content/Context;Ljava/lang/String;)V

    .line 139
    return-void
.end method

.method public static integrate(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 152
    if-nez p0, :cond_0

    .line 154
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 157
    :cond_0
    invoke-static {}, Lcom/localytics/android/LocalyticsManager;->getInstance()Lcom/localytics/android/LocalyticsManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/localytics/android/LocalyticsManager;->integrate(Landroid/content/Context;Ljava/lang/String;)V

    .line 158
    return-void
.end method

.method static isAppInForeground()Z
    .locals 1

    .prologue
    .line 231
    invoke-static {}, Lcom/localytics/android/LocalyticsManager;->getInstance()Lcom/localytics/android/LocalyticsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/localytics/android/LocalyticsManager;->isAppInForeground()Z

    move-result v0

    return v0
.end method

.method static isAutoIntegrate()Z
    .locals 1

    .prologue
    .line 208
    invoke-static {}, Lcom/localytics/android/LocalyticsManager;->getInstance()Lcom/localytics/android/LocalyticsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/localytics/android/LocalyticsManager;->isAutoIntegrate()Z

    move-result v0

    return v0
.end method

.method static isLocationMonitoringEnabled()Z
    .locals 1

    .prologue
    .line 1313
    invoke-static {}, Lcom/localytics/android/LocalyticsManager;->getInstance()Lcom/localytics/android/LocalyticsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/localytics/android/LocalyticsManager;->isLocationMonitoringEnabled()Z

    move-result v0

    return v0
.end method

.method public static isLoggingEnabled()Z
    .locals 1

    .prologue
    .line 1691
    sget-boolean v0, Lcom/localytics/android/Constants;->IS_LOGGING_ENABLED:Z

    return v0
.end method

.method public static isOptedOut()Z
    .locals 1

    .prologue
    .line 287
    invoke-static {}, Lcom/localytics/android/LocalyticsManager;->getInstance()Lcom/localytics/android/LocalyticsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/localytics/android/LocalyticsManager;->isOptedOut()Z

    move-result v0

    return v0
.end method

.method public static isTestModeEnabled()Z
    .locals 1

    .prologue
    .line 1186
    invoke-static {}, Lcom/localytics/android/LocalyticsManager;->getInstance()Lcom/localytics/android/LocalyticsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/localytics/android/LocalyticsManager;->isTestModeEnabled()Z

    move-result v0

    return v0
.end method

.method public static onActivityPause(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 1484
    invoke-static {}, Lcom/localytics/android/Localytics;->dismissCurrentInAppMessage()V

    .line 1485
    invoke-static {}, Lcom/localytics/android/Localytics;->clearInAppMessageDisplayActivity()V

    .line 1486
    invoke-static {}, Lcom/localytics/android/Localytics;->closeSession()V

    .line 1487
    invoke-static {}, Lcom/localytics/android/Localytics;->upload()V

    .line 1488
    return-void
.end method

.method public static onActivityPaused(Landroid/app/Activity;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1469
    invoke-static {p0}, Lcom/localytics/android/Localytics;->onActivityPause(Landroid/app/Activity;)V

    .line 1470
    return-void
.end method

.method public static onActivityResume(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 1442
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/localytics/android/Localytics;->onActivityResume(Landroid/app/Activity;Landroid/content/Intent;)V

    .line 1443
    return-void
.end method

.method private static onActivityResume(Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 1447
    invoke-static {}, Lcom/localytics/android/Localytics;->openSession()V

    .line 1448
    invoke-static {}, Lcom/localytics/android/Localytics;->upload()V

    .line 1449
    invoke-static {p0}, Lcom/localytics/android/Localytics;->setInAppMessageDisplayActivity(Landroid/app/Activity;)V

    .line 1450
    invoke-static {p1}, Lcom/localytics/android/Localytics;->handleTestMode(Landroid/content/Intent;)V

    .line 1451
    invoke-static {p1}, Lcom/localytics/android/Localytics;->handlePushNotificationOpened(Landroid/content/Intent;)V

    .line 1452
    return-void
.end method

.method public static onNewIntent(Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 1501
    invoke-static {p0, p1}, Lcom/localytics/android/Localytics;->onActivityResume(Landroid/app/Activity;Landroid/content/Intent;)V

    .line 1502
    return-void
.end method

.method public static openSession()V
    .locals 1

    .prologue
    .line 304
    invoke-static {}, Lcom/localytics/android/LocalyticsManager;->getInstance()Lcom/localytics/android/LocalyticsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/localytics/android/LocalyticsManager;->openSession()V

    .line 305
    return-void
.end method

.method static priorityDownloadCreative(Lcom/localytics/android/InboxCampaign;Lcom/localytics/android/CreativeManager$FirstDownloadedCallback;)V
    .locals 1

    .prologue
    .line 1287
    invoke-static {}, Lcom/localytics/android/LocalyticsManager;->getInstance()Lcom/localytics/android/LocalyticsManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/localytics/android/LocalyticsManager;->priorityDownloadCreative(Lcom/localytics/android/InboxCampaign;Lcom/localytics/android/CreativeManager$FirstDownloadedCallback;)V

    .line 1288
    return-void
.end method

.method public static refreshInboxCampaigns(Lcom/localytics/android/InboxRefreshListener;)V
    .locals 1

    .prologue
    .line 1248
    invoke-static {}, Lcom/localytics/android/LocalyticsManager;->getInstance()Lcom/localytics/android/LocalyticsManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/localytics/android/LocalyticsManager;->refreshInboxCampaigns(Lcom/localytics/android/InboxRefreshListener;)V

    .line 1249
    return-void
.end method

.method public static registerPush(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1053
    invoke-static {}, Lcom/localytics/android/LocalyticsManager;->getInstance()Lcom/localytics/android/LocalyticsManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/localytics/android/LocalyticsManager;->registerPush(Ljava/lang/String;)V

    .line 1054
    return-void
.end method

.method public static removeProfileAttributesFromSet(Ljava/lang/String;[J)V
    .locals 1

    .prologue
    .line 829
    sget-object v0, Lcom/localytics/android/Localytics$ProfileScope;->APPLICATION:Lcom/localytics/android/Localytics$ProfileScope;

    invoke-static {p0, p1, v0}, Lcom/localytics/android/Localytics;->removeProfileAttributesFromSet(Ljava/lang/String;[JLcom/localytics/android/Localytics$ProfileScope;)V

    .line 830
    return-void
.end method

.method public static removeProfileAttributesFromSet(Ljava/lang/String;[JLcom/localytics/android/Localytics$ProfileScope;)V
    .locals 1

    .prologue
    .line 817
    invoke-static {}, Lcom/localytics/android/LocalyticsManager;->getInstance()Lcom/localytics/android/LocalyticsManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/localytics/android/LocalyticsManager;->removeProfileAttributesFromSet(Ljava/lang/String;[JLcom/localytics/android/Localytics$ProfileScope;)V

    .line 818
    return-void
.end method

.method public static removeProfileAttributesFromSet(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 852
    sget-object v0, Lcom/localytics/android/Localytics$ProfileScope;->APPLICATION:Lcom/localytics/android/Localytics$ProfileScope;

    invoke-static {p0, p1, v0}, Lcom/localytics/android/Localytics;->removeProfileAttributesFromSet(Ljava/lang/String;[Ljava/lang/String;Lcom/localytics/android/Localytics$ProfileScope;)V

    .line 853
    return-void
.end method

.method public static removeProfileAttributesFromSet(Ljava/lang/String;[Ljava/lang/String;Lcom/localytics/android/Localytics$ProfileScope;)V
    .locals 1

    .prologue
    .line 841
    invoke-static {}, Lcom/localytics/android/LocalyticsManager;->getInstance()Lcom/localytics/android/LocalyticsManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/localytics/android/LocalyticsManager;->removeProfileAttributesFromSet(Ljava/lang/String;[Ljava/lang/String;Lcom/localytics/android/Localytics$ProfileScope;)V

    .line 842
    return-void
.end method

.method public static removeProfileAttributesFromSet(Ljava/lang/String;[Ljava/util/Date;)V
    .locals 1

    .prologue
    .line 875
    sget-object v0, Lcom/localytics/android/Localytics$ProfileScope;->APPLICATION:Lcom/localytics/android/Localytics$ProfileScope;

    invoke-static {p0, p1, v0}, Lcom/localytics/android/Localytics;->removeProfileAttributesFromSet(Ljava/lang/String;[Ljava/util/Date;Lcom/localytics/android/Localytics$ProfileScope;)V

    .line 876
    return-void
.end method

.method public static removeProfileAttributesFromSet(Ljava/lang/String;[Ljava/util/Date;Lcom/localytics/android/Localytics$ProfileScope;)V
    .locals 1

    .prologue
    .line 864
    invoke-static {}, Lcom/localytics/android/LocalyticsManager;->getInstance()Lcom/localytics/android/LocalyticsManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/localytics/android/LocalyticsManager;->removeProfileAttributesFromSet(Ljava/lang/String;[Ljava/util/Date;Lcom/localytics/android/Localytics$ProfileScope;)V

    .line 865
    return-void
.end method

.method static retrieveTokenFromInstanceId()V
    .locals 1

    .prologue
    .line 1061
    invoke-static {}, Lcom/localytics/android/LocalyticsManager;->getInstance()Lcom/localytics/android/LocalyticsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/localytics/android/LocalyticsManager;->retrieveTokenFromInstanceId()V

    .line 1062
    return-void
.end method

.method static setAnalyticsHost(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1830
    invoke-static {}, Lcom/localytics/android/LocalyticsManager;->getInstance()Lcom/localytics/android/LocalyticsManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/localytics/android/LocalyticsManager;->setAnalyticsHost(Ljava/lang/String;)V

    .line 1831
    return-void
.end method

.method public static setAnalyticsListener(Lcom/localytics/android/AnalyticsListener;)V
    .locals 1

    .prologue
    .line 595
    invoke-static {}, Lcom/localytics/android/LocalyticsManager;->getInstance()Lcom/localytics/android/LocalyticsManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/localytics/android/LocalyticsManager;->setAnalyticsListener(Lcom/localytics/android/AnalyticsListener;)V

    .line 596
    return-void
.end method

.method static setClientLibraryVersion(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1880
    sput-object p0, Lcom/localytics/android/Constants;->LOCALYTICS_CLIENT_LIBRARY_VERSION:Ljava/lang/String;

    .line 1881
    return-void
.end method

.method public static setCustomDimension(ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 566
    invoke-static {}, Lcom/localytics/android/LocalyticsManager;->getInstance()Lcom/localytics/android/LocalyticsManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/localytics/android/LocalyticsManager;->setCustomDimension(ILjava/lang/String;)V

    .line 567
    return-void
.end method

.method public static setCustomerEmail(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 952
    invoke-static {}, Lcom/localytics/android/LocalyticsManager;->getInstance()Lcom/localytics/android/LocalyticsManager;

    move-result-object v0

    const-string v1, "email"

    invoke-virtual {v0, v1, p0}, Lcom/localytics/android/LocalyticsManager;->setSpecialCustomerIdentifierAndAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 953
    return-void
.end method

.method public static setCustomerFirstName(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 962
    invoke-static {}, Lcom/localytics/android/LocalyticsManager;->getInstance()Lcom/localytics/android/LocalyticsManager;

    move-result-object v0

    const-string v1, "first_name"

    invoke-virtual {v0, v1, p0}, Lcom/localytics/android/LocalyticsManager;->setSpecialCustomerIdentifierAndAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 963
    return-void
.end method

.method public static setCustomerFullName(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 982
    invoke-static {}, Lcom/localytics/android/LocalyticsManager;->getInstance()Lcom/localytics/android/LocalyticsManager;

    move-result-object v0

    const-string v1, "full_name"

    invoke-virtual {v0, v1, p0}, Lcom/localytics/android/LocalyticsManager;->setSpecialCustomerIdentifierAndAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 983
    return-void
.end method

.method public static setCustomerId(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1390
    invoke-static {}, Lcom/localytics/android/LocalyticsManager;->getInstance()Lcom/localytics/android/LocalyticsManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/localytics/android/LocalyticsManager;->setCustomerId(Ljava/lang/String;)V

    .line 1391
    return-void
.end method

.method public static setCustomerLastName(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 972
    invoke-static {}, Lcom/localytics/android/LocalyticsManager;->getInstance()Lcom/localytics/android/LocalyticsManager;

    move-result-object v0

    const-string v1, "last_name"

    invoke-virtual {v0, v1, p0}, Lcom/localytics/android/LocalyticsManager;->setSpecialCustomerIdentifierAndAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 973
    return-void
.end method

.method public static setIdentifier(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1379
    invoke-static {}, Lcom/localytics/android/LocalyticsManager;->getInstance()Lcom/localytics/android/LocalyticsManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/localytics/android/LocalyticsManager;->setIdentifier(Ljava/lang/String;Ljava/lang/String;)V

    .line 1380
    return-void
.end method

.method static setIgnoreStandardEventClv(Ljava/lang/Boolean;)V
    .locals 0

    .prologue
    .line 1885
    sput-object p0, Lcom/localytics/android/Constants;->IGNORE_STANDARD_EVENT_CLV:Ljava/lang/Boolean;

    .line 1886
    return-void
.end method

.method public static setInAppMessageDismissButtonImage(Landroid/content/res/Resources;I)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 1198
    invoke-static {}, Lcom/localytics/android/LocalyticsManager;->getInstance()Lcom/localytics/android/LocalyticsManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/localytics/android/LocalyticsManager;->setInAppMessageDismissButtonImage(Landroid/content/res/Resources;I)V

    .line 1199
    return-void
.end method

.method public static setInAppMessageDismissButtonImage(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 1210
    invoke-static {}, Lcom/localytics/android/LocalyticsManager;->getInstance()Lcom/localytics/android/LocalyticsManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/localytics/android/LocalyticsManager;->setInAppMessageDismissButtonImage(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 1211
    return-void
.end method

.method public static setInAppMessageDismissButtonLocation(Lcom/localytics/android/Localytics$InAppMessageDismissButtonLocation;)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 1785
    invoke-static {}, Lcom/localytics/android/LocalyticsManager;->getInstance()Lcom/localytics/android/LocalyticsManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/localytics/android/LocalyticsManager;->setInAppMessageDismissButtonLocation(Lcom/localytics/android/Localytics$InAppMessageDismissButtonLocation;)V

    .line 1786
    return-void
.end method

.method public static setInAppMessageDisplayActivity(Landroid/app/Activity;)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 1000
    invoke-static {}, Lcom/localytics/android/LocalyticsManager;->getInstance()Lcom/localytics/android/LocalyticsManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/localytics/android/LocalyticsManager;->setInAppMessageDisplayActivity(Landroid/app/Activity;)V

    .line 1001
    return-void
.end method

.method public static setInboxCampaignRead(JZ)V
    .locals 2

    .prologue
    .line 1262
    invoke-static {}, Lcom/localytics/android/LocalyticsManager;->getInstance()Lcom/localytics/android/LocalyticsManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/localytics/android/LocalyticsManager;->setInboxCampaignRead(JZ)V

    .line 1263
    return-void
.end method

.method static setInboxDetailFragmentDisplaying(Ljava/lang/Object;Z)V
    .locals 1

    .prologue
    .line 1277
    invoke-static {}, Lcom/localytics/android/LocalyticsManager;->getInstance()Lcom/localytics/android/LocalyticsManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/localytics/android/LocalyticsManager;->setInboxDetailFragmentDisplaying(Ljava/lang/Object;Z)V

    .line 1278
    return-void
.end method

.method static setIsAutoIntegrate(Z)V
    .locals 1

    .prologue
    .line 219
    invoke-static {}, Lcom/localytics/android/LocalyticsManager;->getInstance()Lcom/localytics/android/LocalyticsManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/localytics/android/LocalyticsManager;->setIsAutoIntegrate(Z)V

    .line 220
    return-void
.end method

.method public static setLocation(Landroid/location/Location;)V
    .locals 1

    .prologue
    .line 1422
    invoke-static {}, Lcom/localytics/android/LocalyticsManager;->getInstance()Lcom/localytics/android/LocalyticsManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/localytics/android/LocalyticsManager;->setLocation(Landroid/location/Location;)V

    .line 1423
    return-void
.end method

.method public static setLocationListener(Lcom/localytics/android/LocationListener;)V
    .locals 1

    .prologue
    .line 1363
    invoke-static {}, Lcom/localytics/android/LocalyticsManager;->getInstance()Lcom/localytics/android/LocalyticsManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/localytics/android/LocalyticsManager;->setLocationListener(Lcom/localytics/android/LocationListener;)V

    .line 1364
    return-void
.end method

.method public static setLocationMonitoringEnabled(Z)V
    .locals 1

    .prologue
    .line 1302
    invoke-static {}, Lcom/localytics/android/LocalyticsManager;->getInstance()Lcom/localytics/android/LocalyticsManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/localytics/android/LocalyticsManager;->setLocationMonitoringEnabled(Z)V

    .line 1303
    return-void
.end method

.method public static setLoggingEnabled(Z)V
    .locals 0

    .prologue
    .line 1680
    sput-boolean p0, Lcom/localytics/android/Constants;->IS_LOGGING_ENABLED:Z

    .line 1681
    return-void
.end method

.method static setManifestHost(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1860
    invoke-static {}, Lcom/localytics/android/LocalyticsManager;->getInstance()Lcom/localytics/android/LocalyticsManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/localytics/android/LocalyticsManager;->setManifestHost(Ljava/lang/String;)V

    .line 1861
    return-void
.end method

.method static setMaxRegionDwellTime(J)V
    .locals 4

    .prologue
    .line 1743
    const-wide/16 v0, 0x0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v2, p0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    sput-wide v0, Lcom/localytics/android/Constants;->MAX_REGION_DWELL_TIME_MILLIS:J

    .line 1744
    return-void
.end method

.method static setMessagingHost(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1840
    invoke-static {}, Lcom/localytics/android/LocalyticsManager;->getInstance()Lcom/localytics/android/LocalyticsManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/localytics/android/LocalyticsManager;->setMessagingHost(Ljava/lang/String;)V

    .line 1841
    return-void
.end method

.method public static setMessagingListener(Lcom/localytics/android/MessagingListener;)V
    .locals 1

    .prologue
    .line 1227
    invoke-static {}, Lcom/localytics/android/LocalyticsManager;->getInstance()Lcom/localytics/android/LocalyticsManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/localytics/android/LocalyticsManager;->setMessagingListener(Lcom/localytics/android/MessagingListener;)V

    .line 1228
    return-void
.end method

.method static setMinRegionDwellTime(J)V
    .locals 4

    .prologue
    .line 1733
    const-wide/16 v0, 0x0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v2, p0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    sput-wide v0, Lcom/localytics/android/Constants;->MIN_REGION_DWELL_TIME_MILLIS:J

    .line 1734
    return-void
.end method

.method public static setNotificationsDisabled(Z)V
    .locals 1

    .prologue
    .line 1092
    invoke-static {}, Lcom/localytics/android/LocalyticsManager;->getInstance()Lcom/localytics/android/LocalyticsManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/localytics/android/LocalyticsManager;->setNotificationsDisabled(Z)V

    .line 1093
    return-void
.end method

.method public static setOptedOut(Z)V
    .locals 1

    .prologue
    .line 276
    invoke-static {}, Lcom/localytics/android/LocalyticsManager;->getInstance()Lcom/localytics/android/LocalyticsManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/localytics/android/LocalyticsManager;->setOptedOut(Z)V

    .line 277
    return-void
.end method

.method public static setOption(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 1533
    sget-object v2, Lcom/localytics/android/Localytics;->optionsNumberKeys:Ljava/util/Set;

    invoke-interface {v2, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1536
    if-eqz p1, :cond_27

    .line 1538
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_1

    .line 1540
    check-cast p1, Ljava/lang/Number;

    .line 1550
    :goto_0
    const-string v0, "session_timeout"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1552
    if-nez p1, :cond_2

    const-wide/16 v0, 0xf

    :goto_1
    invoke-static {v0, v1}, Lcom/localytics/android/Localytics;->setSessionTimeoutInterval(J)V

    .line 1670
    :cond_0
    :goto_2
    return-void

    .line 1544
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid value "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (should be Number or null) for key "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " passed to setOption()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->e(Ljava/lang/String;)I

    goto :goto_2

    .line 1552
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    goto :goto_1

    .line 1555
    :cond_3
    const-string v0, "max_monitoring_regions"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1557
    if-nez p1, :cond_4

    const/16 v0, 0x14

    :goto_3
    invoke-static {v0}, Lcom/localytics/android/Localytics;->setRegionMonitoringLimit(I)V

    goto :goto_2

    :cond_4
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v0

    goto :goto_3

    .line 1560
    :cond_5
    const-string v0, "region_throttle_time"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1562
    if-nez p1, :cond_6

    const-wide/32 v0, 0x1b7740

    :goto_4
    invoke-static {v0, v1}, Lcom/localytics/android/Localytics;->setRegionThrottleTime(J)V

    goto :goto_2

    :cond_6
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    goto :goto_4

    .line 1565
    :cond_7
    const-string v0, "min_region_dwell_time"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1567
    if-nez p1, :cond_8

    const-wide/16 v0, 0x7530

    :goto_5
    invoke-static {v0, v1}, Lcom/localytics/android/Localytics;->setMinRegionDwellTime(J)V

    goto :goto_2

    :cond_8
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    goto :goto_5

    .line 1570
    :cond_9
    const-string v0, "max_region_dwell_time"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1572
    if-nez p1, :cond_a

    const-wide/32 v0, 0x240c8400

    :goto_6
    invoke-static {v0, v1}, Lcom/localytics/android/Localytics;->setMaxRegionDwellTime(J)V

    goto :goto_2

    :cond_a
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    goto :goto_6

    .line 1576
    :cond_b
    sget-object v2, Lcom/localytics/android/Localytics;->optionBooleanKeys:Ljava/util/Set;

    invoke-interface {v2, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 1579
    if-eqz p1, :cond_26

    .line 1581
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_c

    .line 1583
    check-cast p1, Ljava/lang/Boolean;

    .line 1593
    :goto_7
    const-string v0, "use_sandbox"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1595
    if-nez p1, :cond_d

    move v0, v1

    :goto_8
    invoke-static {v0}, Lcom/localytics/android/Localytics;->setUseSandbox(Z)V

    goto/16 :goto_2

    .line 1587
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid value "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (should be Boolean or null) for key "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " passed to setOption()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->e(Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1595
    :cond_d
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_8

    .line 1597
    :cond_e
    const-string v0, "use_https"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1599
    if-nez p1, :cond_f

    const/4 v0, 0x1

    :goto_9
    invoke-static {v0}, Lcom/localytics/android/Localytics;->setUseHTTPS(Z)V

    goto/16 :goto_2

    :cond_f
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_9

    .line 1601
    :cond_10
    const-string v0, "ignore_standard_event_clv"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1603
    if-nez p1, :cond_11

    :goto_a
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/localytics/android/Localytics;->setIgnoreStandardEventClv(Ljava/lang/Boolean;)V

    goto/16 :goto_2

    :cond_11
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_a

    .line 1606
    :cond_12
    sget-object v1, Lcom/localytics/android/Localytics;->optionStringKeys:Ljava/util/Set;

    invoke-interface {v1, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 1609
    if-eqz p1, :cond_13

    .line 1611
    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_15

    .line 1613
    check-cast p1, Ljava/lang/String;

    .line 1614
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_25

    .line 1627
    :cond_13
    :goto_b
    const-string v1, "analytics_host"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 1629
    if-nez v0, :cond_14

    const-string v0, "analytics.localytics.com"

    :cond_14
    invoke-static {v0}, Lcom/localytics/android/Localytics;->setAnalyticsHost(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1621
    :cond_15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid value "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (should be String or null) for key "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " passed to setOption()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->e(Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1631
    :cond_16
    const-string v1, "messaging_host"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 1633
    if-nez v0, :cond_17

    const-string v0, "analytics.localytics.com"

    :cond_17
    invoke-static {v0}, Lcom/localytics/android/Localytics;->setMessagingHost(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1635
    :cond_18
    const-string v1, "profiles_host"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 1637
    if-nez v0, :cond_19

    const-string v0, "profile.localytics.com"

    :cond_19
    invoke-static {v0}, Lcom/localytics/android/Localytics;->setProfilesHost(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1639
    :cond_1a
    const-string v1, "manifest_host"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 1641
    if-nez v0, :cond_1b

    const-string v0, "manifest.localytics.com"

    :cond_1b
    invoke-static {v0}, Lcom/localytics/android/Localytics;->setManifestHost(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1643
    :cond_1c
    const-string v1, "plugin_library"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 1645
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "androida_4.1.0"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1646
    if-eqz v0, :cond_1d

    .line 1648
    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1649
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1651
    :cond_1d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/localytics/android/Localytics;->setClientLibraryVersion(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1653
    :cond_1e
    const-string v1, "push_api_host"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 1655
    if-nez v0, :cond_1f

    const-string v0, "pushapi.localytics.com"

    :cond_1f
    invoke-static {v0}, Lcom/localytics/android/Localytics;->setPushApiHost(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1657
    :cond_20
    const-string v1, "test_devices_host"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 1659
    if-nez v0, :cond_21

    const-string v0, "dashboard.localytics.com"

    :cond_21
    invoke-static {v0}, Lcom/localytics/android/Localytics;->setTestDevicesHost(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1661
    :cond_22
    const-string v1, "test_push_events_host"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1663
    if-nez v0, :cond_23

    const-string v0, "dashboard.localytics.com"

    :cond_23
    invoke-static {v0}, Lcom/localytics/android/Localytics;->setTestPushEventsHost(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1668
    :cond_24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid key "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " passed to setOption()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->e(Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_25
    move-object v0, p1

    goto/16 :goto_b

    :cond_26
    move-object p1, v0

    goto/16 :goto_7

    :cond_27
    move-object p1, v0

    goto/16 :goto_0
.end method

.method public static setOptions(Ljava/util/HashMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1517
    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1519
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/localytics/android/Localytics;->setOption(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 1521
    :cond_0
    return-void
.end method

.method public static setProfileAttribute(Ljava/lang/String;J)V
    .locals 1

    .prologue
    .line 621
    sget-object v0, Lcom/localytics/android/Localytics$ProfileScope;->APPLICATION:Lcom/localytics/android/Localytics$ProfileScope;

    invoke-static {p0, p1, p2, v0}, Lcom/localytics/android/Localytics;->setProfileAttribute(Ljava/lang/String;JLcom/localytics/android/Localytics$ProfileScope;)V

    .line 622
    return-void
.end method

.method public static setProfileAttribute(Ljava/lang/String;JLcom/localytics/android/Localytics$ProfileScope;)V
    .locals 1

    .prologue
    .line 610
    invoke-static {}, Lcom/localytics/android/LocalyticsManager;->getInstance()Lcom/localytics/android/LocalyticsManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/localytics/android/LocalyticsManager;->setProfileAttribute(Ljava/lang/String;JLcom/localytics/android/Localytics$ProfileScope;)V

    .line 611
    return-void
.end method

.method public static setProfileAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 667
    sget-object v0, Lcom/localytics/android/Localytics$ProfileScope;->APPLICATION:Lcom/localytics/android/Localytics$ProfileScope;

    invoke-static {p0, p1, v0}, Lcom/localytics/android/Localytics;->setProfileAttribute(Ljava/lang/String;Ljava/lang/String;Lcom/localytics/android/Localytics$ProfileScope;)V

    .line 668
    return-void
.end method

.method public static setProfileAttribute(Ljava/lang/String;Ljava/lang/String;Lcom/localytics/android/Localytics$ProfileScope;)V
    .locals 1

    .prologue
    .line 656
    invoke-static {}, Lcom/localytics/android/LocalyticsManager;->getInstance()Lcom/localytics/android/LocalyticsManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/localytics/android/LocalyticsManager;->setProfileAttribute(Ljava/lang/String;Ljava/lang/String;Lcom/localytics/android/Localytics$ProfileScope;)V

    .line 657
    return-void
.end method

.method public static setProfileAttribute(Ljava/lang/String;Ljava/util/Date;)V
    .locals 1

    .prologue
    .line 713
    sget-object v0, Lcom/localytics/android/Localytics$ProfileScope;->APPLICATION:Lcom/localytics/android/Localytics$ProfileScope;

    invoke-static {p0, p1, v0}, Lcom/localytics/android/Localytics;->setProfileAttribute(Ljava/lang/String;Ljava/util/Date;Lcom/localytics/android/Localytics$ProfileScope;)V

    .line 714
    return-void
.end method

.method public static setProfileAttribute(Ljava/lang/String;Ljava/util/Date;Lcom/localytics/android/Localytics$ProfileScope;)V
    .locals 1

    .prologue
    .line 702
    invoke-static {}, Lcom/localytics/android/LocalyticsManager;->getInstance()Lcom/localytics/android/LocalyticsManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/localytics/android/LocalyticsManager;->setProfileAttribute(Ljava/lang/String;Ljava/util/Date;Lcom/localytics/android/Localytics$ProfileScope;)V

    .line 703
    return-void
.end method

.method public static setProfileAttribute(Ljava/lang/String;[J)V
    .locals 1

    .prologue
    .line 644
    sget-object v0, Lcom/localytics/android/Localytics$ProfileScope;->APPLICATION:Lcom/localytics/android/Localytics$ProfileScope;

    invoke-static {p0, p1, v0}, Lcom/localytics/android/Localytics;->setProfileAttribute(Ljava/lang/String;[JLcom/localytics/android/Localytics$ProfileScope;)V

    .line 645
    return-void
.end method

.method public static setProfileAttribute(Ljava/lang/String;[JLcom/localytics/android/Localytics$ProfileScope;)V
    .locals 1

    .prologue
    .line 633
    invoke-static {}, Lcom/localytics/android/LocalyticsManager;->getInstance()Lcom/localytics/android/LocalyticsManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/localytics/android/LocalyticsManager;->setProfileAttribute(Ljava/lang/String;[JLcom/localytics/android/Localytics$ProfileScope;)V

    .line 634
    return-void
.end method

.method public static setProfileAttribute(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 690
    sget-object v0, Lcom/localytics/android/Localytics$ProfileScope;->APPLICATION:Lcom/localytics/android/Localytics$ProfileScope;

    invoke-static {p0, p1, v0}, Lcom/localytics/android/Localytics;->setProfileAttribute(Ljava/lang/String;[Ljava/lang/String;Lcom/localytics/android/Localytics$ProfileScope;)V

    .line 691
    return-void
.end method

.method public static setProfileAttribute(Ljava/lang/String;[Ljava/lang/String;Lcom/localytics/android/Localytics$ProfileScope;)V
    .locals 1

    .prologue
    .line 679
    invoke-static {}, Lcom/localytics/android/LocalyticsManager;->getInstance()Lcom/localytics/android/LocalyticsManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/localytics/android/LocalyticsManager;->setProfileAttribute(Ljava/lang/String;[Ljava/lang/String;Lcom/localytics/android/Localytics$ProfileScope;)V

    .line 680
    return-void
.end method

.method public static setProfileAttribute(Ljava/lang/String;[Ljava/util/Date;)V
    .locals 1

    .prologue
    .line 736
    sget-object v0, Lcom/localytics/android/Localytics$ProfileScope;->APPLICATION:Lcom/localytics/android/Localytics$ProfileScope;

    invoke-static {p0, p1, v0}, Lcom/localytics/android/Localytics;->setProfileAttribute(Ljava/lang/String;[Ljava/util/Date;Lcom/localytics/android/Localytics$ProfileScope;)V

    .line 737
    return-void
.end method

.method public static setProfileAttribute(Ljava/lang/String;[Ljava/util/Date;Lcom/localytics/android/Localytics$ProfileScope;)V
    .locals 1

    .prologue
    .line 725
    invoke-static {}, Lcom/localytics/android/LocalyticsManager;->getInstance()Lcom/localytics/android/LocalyticsManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/localytics/android/LocalyticsManager;->setProfileAttribute(Ljava/lang/String;[Ljava/util/Date;Lcom/localytics/android/Localytics$ProfileScope;)V

    .line 726
    return-void
.end method

.method static setProfilesHost(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1850
    invoke-static {}, Lcom/localytics/android/LocalyticsManager;->getInstance()Lcom/localytics/android/LocalyticsManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/localytics/android/LocalyticsManager;->setProfilesHost(Ljava/lang/String;)V

    .line 1851
    return-void
.end method

.method static setPushApiHost(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1865
    invoke-static {}, Lcom/localytics/android/LocalyticsManager;->getInstance()Lcom/localytics/android/LocalyticsManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/localytics/android/LocalyticsManager;->setPushApiHost(Ljava/lang/String;)V

    .line 1866
    return-void
.end method

.method public static setPushRegistrationId(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1079
    invoke-static {}, Lcom/localytics/android/LocalyticsManager;->getInstance()Lcom/localytics/android/LocalyticsManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/localytics/android/LocalyticsManager;->setPushRegistrationId(Ljava/lang/String;)V

    .line 1080
    return-void
.end method

.method static setReferrerId(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1147
    invoke-static {}, Lcom/localytics/android/LocalyticsManager;->getInstance()Lcom/localytics/android/LocalyticsManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/localytics/android/LocalyticsManager;->setReferrerId(Ljava/lang/String;)V

    .line 1148
    return-void
.end method

.method static setRegionMonitoringLimit(I)V
    .locals 2

    .prologue
    .line 1711
    const/4 v0, 0x0

    const/16 v1, 0x64

    invoke-static {v1, p0}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lcom/localytics/android/Constants;->GEOFENCES_MONITORING_LIMIT:I

    .line 1712
    return-void
.end method

.method static setRegionThrottleTime(J)V
    .locals 4

    .prologue
    .line 1723
    const-wide/16 v0, 0x0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v2, p0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    sput-wide v0, Lcom/localytics/android/Constants;->REGION_THROTTLE_CUTOFF_TIME_MILLIS:J

    .line 1724
    return-void
.end method

.method static setSessionTimeoutInterval(J)V
    .locals 2

    .prologue
    .line 1701
    const-wide/16 v0, 0x3e8

    mul-long/2addr v0, p0

    sput-wide v0, Lcom/localytics/android/Constants;->SESSION_EXPIRATION:J

    .line 1702
    return-void
.end method

.method static setTestDevicesHost(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1870
    invoke-static {}, Lcom/localytics/android/LocalyticsManager;->getInstance()Lcom/localytics/android/LocalyticsManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/localytics/android/LocalyticsManager;->setTestDevicesHost(Ljava/lang/String;)V

    .line 1871
    return-void
.end method

.method public static setTestModeEnabled(Z)V
    .locals 1

    .prologue
    .line 1175
    invoke-static {}, Lcom/localytics/android/LocalyticsManager;->getInstance()Lcom/localytics/android/LocalyticsManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/localytics/android/LocalyticsManager;->setTestModeEnabled(Z)V

    .line 1176
    return-void
.end method

.method static setTestPushEventsHost(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1875
    invoke-static {}, Lcom/localytics/android/LocalyticsManager;->getInstance()Lcom/localytics/android/LocalyticsManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/localytics/android/LocalyticsManager;->setTestPushEventsHost(Ljava/lang/String;)V

    .line 1876
    return-void
.end method

.method static setUseHTTPS(Z)V
    .locals 0

    .prologue
    .line 1802
    sput-boolean p0, Lcom/localytics/android/Constants;->USE_HTTPS:Z

    .line 1803
    return-void
.end method

.method static setUseSandbox(Z)V
    .locals 1

    .prologue
    .line 1807
    if-eqz p0, :cond_0

    .line 1809
    const-string v0, "queuer.sandbox53.localytics.com"

    invoke-static {v0}, Lcom/localytics/android/Localytics;->setAnalyticsHost(Ljava/lang/String;)V

    .line 1810
    const-string v0, "queuer.sandbox53.localytics.com"

    invoke-static {v0}, Lcom/localytics/android/Localytics;->setMessagingHost(Ljava/lang/String;)V

    .line 1811
    const-string v0, "profile-api.sandbox53.localytics.com"

    invoke-static {v0}, Lcom/localytics/android/Localytics;->setProfilesHost(Ljava/lang/String;)V

    .line 1812
    const-string v0, "manifest.sandbox53.localytics.com"

    invoke-static {v0}, Lcom/localytics/android/Localytics;->setManifestHost(Ljava/lang/String;)V

    .line 1821
    :goto_0
    return-void

    .line 1816
    :cond_0
    const-string v0, "analytics.localytics.com"

    invoke-static {v0}, Lcom/localytics/android/Localytics;->setAnalyticsHost(Ljava/lang/String;)V

    .line 1817
    const-string v0, "analytics.localytics.com"

    invoke-static {v0}, Lcom/localytics/android/Localytics;->setMessagingHost(Ljava/lang/String;)V

    .line 1818
    const-string v0, "profile.localytics.com"

    invoke-static {v0}, Lcom/localytics/android/Localytics;->setProfilesHost(Ljava/lang/String;)V

    .line 1819
    const-string v0, "manifest.localytics.com"

    invoke-static {v0}, Lcom/localytics/android/Localytics;->setManifestHost(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static tagAddedToCart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 410
    invoke-static {}, Lcom/localytics/android/LocalyticsManager;->getInstance()Lcom/localytics/android/LocalyticsManager;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/localytics/android/LocalyticsManager;->tagAddedToCart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/util/Map;)V

    .line 411
    return-void
.end method

.method public static tagCompletedCheckout(Ljava/lang/Long;Ljava/lang/Long;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 434
    invoke-static {}, Lcom/localytics/android/LocalyticsManager;->getInstance()Lcom/localytics/android/LocalyticsManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/localytics/android/LocalyticsManager;->tagCompletedCheckout(Ljava/lang/Long;Ljava/lang/Long;Ljava/util/Map;)V

    .line 435
    return-void
.end method

.method public static tagContentRated(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 488
    invoke-static {}, Lcom/localytics/android/LocalyticsManager;->getInstance()Lcom/localytics/android/LocalyticsManager;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/localytics/android/LocalyticsManager;->tagContentRated(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/util/Map;)V

    .line 489
    return-void
.end method

.method public static tagContentViewed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 447
    invoke-static {}, Lcom/localytics/android/LocalyticsManager;->getInstance()Lcom/localytics/android/LocalyticsManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/localytics/android/LocalyticsManager;->tagContentViewed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 448
    return-void
.end method

.method public static tagCustomerLoggedIn(Lcom/localytics/android/Customer;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/localytics/android/Customer;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 512
    invoke-static {}, Lcom/localytics/android/LocalyticsManager;->getInstance()Lcom/localytics/android/LocalyticsManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/localytics/android/LocalyticsManager;->tagCustomerLoggedIn(Lcom/localytics/android/Customer;Ljava/lang/String;Ljava/util/Map;)V

    .line 513
    return-void
.end method

.method public static tagCustomerLoggedOut(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 522
    invoke-static {}, Lcom/localytics/android/LocalyticsManager;->getInstance()Lcom/localytics/android/LocalyticsManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/localytics/android/LocalyticsManager;->tagCustomerLoggedOut(Ljava/util/Map;)V

    .line 523
    return-void
.end method

.method public static tagCustomerRegistered(Lcom/localytics/android/Customer;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/localytics/android/Customer;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 500
    invoke-static {}, Lcom/localytics/android/LocalyticsManager;->getInstance()Lcom/localytics/android/LocalyticsManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/localytics/android/LocalyticsManager;->tagCustomerRegistered(Lcom/localytics/android/Customer;Ljava/lang/String;Ljava/util/Map;)V

    .line 501
    return-void
.end method

.method public static tagEvent(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 329
    const/4 v0, 0x0

    const-wide/16 v2, 0x0

    invoke-static {p0, v0, v2, v3}, Lcom/localytics/android/Localytics;->tagEvent(Ljava/lang/String;Ljava/util/Map;J)V

    .line 330
    return-void
.end method

.method public static tagEvent(Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 346
    const-wide/16 v0, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/localytics/android/Localytics;->tagEvent(Ljava/lang/String;Ljava/util/Map;J)V

    .line 347
    return-void
.end method

.method public static tagEvent(Ljava/lang/String;Ljava/util/Map;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 378
    invoke-static {}, Lcom/localytics/android/LocalyticsManager;->getInstance()Lcom/localytics/android/LocalyticsManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/localytics/android/LocalyticsManager;->tagEvent(Ljava/lang/String;Ljava/util/Map;J)V

    .line 379
    return-void
.end method

.method public static tagInvited(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 533
    invoke-static {}, Lcom/localytics/android/LocalyticsManager;->getInstance()Lcom/localytics/android/LocalyticsManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/localytics/android/LocalyticsManager;->tagInvited(Ljava/lang/String;Ljava/util/Map;)V

    .line 534
    return-void
.end method

.method public static tagPurchased(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 396
    invoke-static {}, Lcom/localytics/android/LocalyticsManager;->getInstance()Lcom/localytics/android/LocalyticsManager;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/localytics/android/LocalyticsManager;->tagPurchased(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/util/Map;)V

    .line 397
    return-void
.end method

.method public static tagScreen(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 547
    invoke-static {}, Lcom/localytics/android/LocalyticsManager;->getInstance()Lcom/localytics/android/LocalyticsManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/localytics/android/LocalyticsManager;->tagScreen(Ljava/lang/String;)V

    .line 548
    return-void
.end method

.method public static tagSearched(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 460
    invoke-static {}, Lcom/localytics/android/LocalyticsManager;->getInstance()Lcom/localytics/android/LocalyticsManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/localytics/android/LocalyticsManager;->tagSearched(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/util/Map;)V

    .line 461
    return-void
.end method

.method public static tagShared(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 474
    invoke-static {}, Lcom/localytics/android/LocalyticsManager;->getInstance()Lcom/localytics/android/LocalyticsManager;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/localytics/android/LocalyticsManager;->tagShared(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 475
    return-void
.end method

.method public static tagStartedCheckout(Ljava/lang/Long;Ljava/lang/Long;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 422
    invoke-static {}, Lcom/localytics/android/LocalyticsManager;->getInstance()Lcom/localytics/android/LocalyticsManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/localytics/android/LocalyticsManager;->tagStartedCheckout(Ljava/lang/Long;Ljava/lang/Long;Ljava/util/Map;)V

    .line 423
    return-void
.end method

.method public static triggerInAppMessage(Ljava/lang/String;)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 1022
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/localytics/android/Localytics;->triggerInAppMessage(Ljava/lang/String;Ljava/util/Map;)V

    .line 1023
    return-void
.end method

.method public static triggerInAppMessage(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1034
    invoke-static {}, Lcom/localytics/android/LocalyticsManager;->getInstance()Lcom/localytics/android/LocalyticsManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/localytics/android/LocalyticsManager;->triggerInAppMessage(Ljava/lang/String;Ljava/util/Map;)V

    .line 1035
    return-void
.end method

.method public static triggerRegion(Lcom/localytics/android/Region;Lcom/localytics/android/Region$Event;)V
    .locals 1

    .prologue
    .line 1337
    invoke-static {}, Lcom/localytics/android/LocalyticsManager;->getInstance()Lcom/localytics/android/LocalyticsManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/localytics/android/LocalyticsManager;->triggerRegion(Lcom/localytics/android/Region;Lcom/localytics/android/Region$Event;)V

    .line 1338
    return-void
.end method

.method public static triggerRegions(Ljava/util/List;Lcom/localytics/android/Region$Event;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/localytics/android/Region;",
            ">;",
            "Lcom/localytics/android/Region$Event;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1348
    invoke-static {}, Lcom/localytics/android/LocalyticsManager;->getInstance()Lcom/localytics/android/LocalyticsManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/localytics/android/LocalyticsManager;->triggerRegions(Ljava/util/List;Lcom/localytics/android/Region$Event;)V

    .line 1349
    return-void
.end method

.method public static upload()V
    .locals 1

    .prologue
    .line 195
    invoke-static {}, Lcom/localytics/android/LocalyticsManager;->getInstance()Lcom/localytics/android/LocalyticsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/localytics/android/LocalyticsManager;->upload()V

    .line 196
    return-void
.end method
