.class Lcom/localytics/android/BasePushManager;
.super Lcom/localytics/android/BaseMarketingManager;
.source "BasePushManager.java"


# static fields
.field protected static final ACTION_ATTRIBUTE:Ljava/lang/String; = "Action"

.field protected static final APP_CONTEXT_ATTRIBUTE:Ljava/lang/String; = "App Context"

.field protected static final CAMPAIGN_ID_ATTRIBUTE:Ljava/lang/String; = "Campaign ID"

.field protected static final CREATIVE_DISPLAYED_ATTRIBUTE:Ljava/lang/String; = "Creative Displayed"

.field protected static final CREATIVE_ID_ATTRIBUTE:Ljava/lang/String; = "Creative ID"

.field protected static final CREATIVE_TYPE_ATTRIBUTE:Ljava/lang/String; = "Creative Type"

.field protected static final PUSH_NOTIFICATIONS_ENABLED_ATTRIBUTE:Ljava/lang/String; = "Push Notifications Enabled"


# instance fields
.field protected final mMarketingHandler:Lcom/localytics/android/MarketingHandler;


# direct methods
.method public constructor <init>(Lcom/localytics/android/LocalyticsDao;Lcom/localytics/android/MarketingHandler;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/localytics/android/BaseMarketingManager;-><init>(Lcom/localytics/android/LocalyticsDao;)V

    .line 35
    iput-object p2, p0, Lcom/localytics/android/BasePushManager;->mMarketingHandler:Lcom/localytics/android/MarketingHandler;

    .line 36
    return-void
.end method

.method private _getSoundUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2

    .prologue
    .line 131
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    const/4 v0, 0x0

    .line 141
    :goto_0
    return-object v0

    .line 137
    :cond_0
    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 139
    const/4 v0, 0x0

    const-string v1, "."

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 141
    :cond_1
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "android.resource"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/localytics/android/BasePushManager;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v1}, Lcom/localytics/android/LocalyticsDao;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "raw"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method private logNotification(Landroid/app/Notification;Landroid/app/PendingIntent;)V
    .locals 4

    .prologue
    .line 228
    const-string v1, "The notification returned by the user contains %s content intent"

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v0, p1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    invoke-virtual {p2, v0}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "the same"

    :goto_0
    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->v(Ljava/lang/String;)I

    .line 230
    invoke-virtual {p1}, Landroid/app/Notification;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->v(Ljava/lang/String;)I

    .line 231
    return-void

    .line 228
    :cond_0
    const-string v0, "a different"

    goto :goto_0
.end method


# virtual methods
.method _creativeTypeForMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 44
    const-string p1, "Alert"

    .line 52
    :cond_0
    :goto_0
    return-object p1

    .line 48
    :cond_1
    const-string p1, "Silent"

    goto :goto_0
.end method

.method _handlePushIntegrationReceivedVerification(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 126
    return-void
.end method

.method _hasMessage(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 57
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method _showPushNotification(Ljava/lang/String;Ljava/lang/String;JLcom/localytics/android/Campaign;Landroid/os/Bundle;)V
    .locals 7

    .prologue
    .line 155
    iget-object v0, p0, Lcom/localytics/android/BasePushManager;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v0}, Lcom/localytics/android/LocalyticsDao;->getAppContext()Landroid/content/Context;

    move-result-object v3

    .line 156
    const-string v0, ""

    .line 157
    invoke-static {v3}, Lcom/localytics/android/DatapointHelper;->getLocalyticsNotificationIcon(Landroid/content/Context;)I

    move-result v1

    .line 160
    :try_start_0
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 161
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 169
    :goto_0
    new-instance v2, Landroid/content/Intent;

    const-class v4, Lcom/localytics/android/PushTrackingActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 170
    invoke-virtual {v2, p6}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 171
    long-to-int v4, p3

    const/high16 v5, 0x8000000

    invoke-static {v3, v4, v2, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 173
    new-instance v2, Landroid/support/v4/app/am$d;

    invoke-direct {v2, v3}, Landroid/support/v4/app/am$d;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/support/v4/app/am$d;->a(I)Landroid/support/v4/app/am$d;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/am$d;->a(Ljava/lang/CharSequence;)Landroid/support/v4/app/am$d;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/support/v4/app/am$d;->a(Landroid/app/PendingIntent;)Landroid/support/v4/app/am$d;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/am$d;->b(Z)Landroid/support/v4/app/am$d;

    move-result-object v1

    .line 179
    invoke-direct {p0, p2}, Lcom/localytics/android/BasePushManager;->_getSoundUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 180
    if-eqz v0, :cond_2

    .line 182
    invoke-virtual {v1, v0}, Landroid/support/v4/app/am$d;->a(Landroid/net/Uri;)Landroid/support/v4/app/am$d;

    .line 183
    const/4 v0, 0x6

    invoke-virtual {v1, v0}, Landroid/support/v4/app/am$d;->b(I)Landroid/support/v4/app/am$d;

    .line 189
    :goto_1
    const-string v0, "ll_public_message"

    invoke-virtual {p6, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 190
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 192
    invoke-virtual {v1, v0}, Landroid/support/v4/app/am$d;->b(Ljava/lang/CharSequence;)Landroid/support/v4/app/am$d;

    move-result-object v2

    new-instance v5, Landroid/support/v4/app/am$c;

    invoke-direct {v5}, Landroid/support/v4/app/am$c;-><init>()V

    invoke-virtual {v5, v0}, Landroid/support/v4/app/am$c;->a(Ljava/lang/CharSequence;)Landroid/support/v4/app/am$c;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/support/v4/app/am$d;->a(Landroid/support/v4/app/am$q;)Landroid/support/v4/app/am$d;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/am$d;->a()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/v4/app/am$d;->a(Landroid/app/Notification;)Landroid/support/v4/app/am$d;

    .line 197
    :cond_0
    invoke-virtual {v1, p1}, Landroid/support/v4/app/am$d;->b(Ljava/lang/CharSequence;)Landroid/support/v4/app/am$d;

    move-result-object v0

    new-instance v2, Landroid/support/v4/app/am$c;

    invoke-direct {v2}, Landroid/support/v4/app/am$c;-><init>()V

    invoke-virtual {v2, p1}, Landroid/support/v4/app/am$c;->a(Ljava/lang/CharSequence;)Landroid/support/v4/app/am$c;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/support/v4/app/am$d;->a(Landroid/support/v4/app/am$q;)Landroid/support/v4/app/am$d;

    .line 201
    iget-object v0, p0, Lcom/localytics/android/BasePushManager;->mMarketingHandler:Lcom/localytics/android/MarketingHandler;

    iget-object v0, v0, Lcom/localytics/android/MarketingHandler;->mListeners:Lcom/localytics/android/ListenersSet;

    invoke-virtual {v0}, Lcom/localytics/android/ListenersSet;->getDevListener()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/localytics/android/MessagingListener;

    .line 202
    if-eqz v0, :cond_4

    .line 204
    instance-of v2, p5, Lcom/localytics/android/PlacesCampaign;

    if-eqz v2, :cond_3

    .line 206
    check-cast p5, Lcom/localytics/android/PlacesCampaign;

    invoke-interface {v0, v1, p5}, Lcom/localytics/android/MessagingListener;->localyticsWillShowPlacesPushNotification(Landroid/support/v4/app/am$d;Lcom/localytics/android/PlacesCampaign;)Landroid/support/v4/app/am$d;

    move-result-object v1

    move-object v2, v1

    .line 215
    :goto_2
    const-string v1, "notification"

    invoke-virtual {v3, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 216
    invoke-virtual {v2}, Landroid/support/v4/app/am$d;->a()Landroid/app/Notification;

    move-result-object v2

    .line 219
    if-eqz v0, :cond_1

    .line 221
    invoke-direct {p0, v2, v4}, Lcom/localytics/android/BasePushManager;->logNotification(Landroid/app/Notification;Landroid/app/PendingIntent;)V

    .line 223
    :cond_1
    long-to-int v0, p3

    invoke-virtual {v1, v0, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 224
    return-void

    .line 163
    :catch_0
    move-exception v2

    .line 165
    const-string v2, "Failed to get application name"

    invoke-static {v2}, Lcom/localytics/android/Localytics$Log;->w(Ljava/lang/String;)I

    goto/16 :goto_0

    .line 187
    :cond_2
    const/4 v0, -0x1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/am$d;->b(I)Landroid/support/v4/app/am$d;

    goto :goto_1

    .line 208
    :cond_3
    instance-of v2, p5, Lcom/localytics/android/PushCampaign;

    if-eqz v2, :cond_4

    .line 210
    check-cast p5, Lcom/localytics/android/PushCampaign;

    invoke-interface {v0, v1, p5}, Lcom/localytics/android/MessagingListener;->localyticsWillShowPushNotification(Landroid/support/v4/app/am$d;Lcom/localytics/android/PushCampaign;)Landroid/support/v4/app/am$d;

    move-result-object v1

    move-object v2, v1

    goto :goto_2

    :cond_4
    move-object v2, v1

    goto :goto_2
.end method

.method _tagPushReceived(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/util/Map;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 66
    iget-object v1, p0, Lcom/localytics/android/BasePushManager;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v1}, Lcom/localytics/android/LocalyticsDao;->areNotificationsDisabled()Z

    move-result v3

    .line 67
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x1

    .line 69
    :goto_0
    move-object/from16 v0, p7

    invoke-virtual {p0, v0, p2}, Lcom/localytics/android/BasePushManager;->_creativeTypeForMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 70
    const-string v2, "Not Available"

    .line 71
    iget-object v5, p0, Lcom/localytics/android/BasePushManager;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v5}, Lcom/localytics/android/LocalyticsDao;->isAutoIntegrate()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 73
    iget-object v2, p0, Lcom/localytics/android/BasePushManager;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v2}, Lcom/localytics/android/LocalyticsDao;->isAppInForeground()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 75
    const-string v2, "Foreground"

    .line 84
    :cond_0
    :goto_1
    if-eqz v1, :cond_6

    .line 86
    if-eqz v3, :cond_5

    const-string v1, "No"

    .line 93
    :goto_2
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 94
    const-string v6, "Campaign ID"

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    const-string v6, "Creative ID"

    invoke-virtual {v5, v6, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    const-string v6, "Creative Type"

    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    const-string v4, "Creative Displayed"

    invoke-virtual {v5, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    const-string v4, "Push Notifications Enabled"

    if-eqz v3, :cond_7

    const-string v1, "No"

    :goto_3
    invoke-virtual {v5, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    const-string v1, "App Context"

    invoke-virtual {v5, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    const-string v1, "Schema Version - Client"

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    const-string v1, "Schema Version - Server"

    invoke-virtual {v5, v1, p6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    if-eqz p11, :cond_1

    .line 104
    move-object/from16 v0, p11

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 107
    :cond_1
    if-nez p8, :cond_8

    if-nez p9, :cond_8

    .line 109
    iget-object v1, p0, Lcom/localytics/android/BasePushManager;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v1, p1, v5}, Lcom/localytics/android/LocalyticsDao;->tagEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 110
    iget-object v1, p0, Lcom/localytics/android/BasePushManager;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v1}, Lcom/localytics/android/LocalyticsDao;->upload()V

    .line 112
    invoke-static/range {p10 .. p10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 114
    move-object/from16 v0, p10

    invoke-virtual {p0, v0}, Lcom/localytics/android/BasePushManager;->_handlePushIntegrationReceivedVerification(Ljava/lang/String;)V

    .line 117
    :cond_2
    const/4 v1, 0x1

    .line 120
    :goto_4
    return v1

    .line 67
    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    .line 79
    :cond_4
    const-string v2, "Background"

    goto :goto_1

    .line 86
    :cond_5
    const-string v1, "Yes"

    goto :goto_2

    .line 90
    :cond_6
    const-string v1, "Not Applicable"

    goto :goto_2

    .line 98
    :cond_7
    const-string v1, "Yes"

    goto :goto_3

    .line 120
    :cond_8
    const/4 v1, 0x0

    goto :goto_4
.end method
