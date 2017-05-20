.class Lcom/localytics/android/PushManager;
.super Lcom/localytics/android/BasePushManager;
.source "PushManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/localytics/android/PushManager$POSTBodyBuilder;
    }
.end annotation


# static fields
.field private static final DEVICE_INFO_URL_TEMPLATE:Ljava/lang/String; = "https://%s/test_devices"

.field private static final PUSH_API_URL_TEMPLATE:Ljava/lang/String; = "https://%s/push_test?platform=android&type=prod&campaign=%s&creative=%s&token=%s&install_id=%s&client_ts=%s"

.field private static final PUSH_OPENED_EVENT:Ljava/lang/String; = "Localytics Push Opened"

.field private static final PUSH_RECEIVED_EVENT:Ljava/lang/String; = "Localytics Push Received"

.field private static final TEST_PUSH_EVENTS_URL_TEMPLATE:Ljava/lang/String; = "https://%s/test_push_events"


# direct methods
.method constructor <init>(Lcom/localytics/android/LocalyticsDao;Lcom/localytics/android/MarketingHandler;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/localytics/android/BasePushManager;-><init>(Lcom/localytics/android/LocalyticsDao;Lcom/localytics/android/MarketingHandler;)V

    .line 40
    return-void
.end method

.method private handlePushIntegrationOpenedVerification(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 416
    const-string v0, "opened"

    const-string v1, "Localytics Push Opened event was tagged."

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/localytics/android/PushManager;->handleTestPushEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 417
    return-void
.end method

.method private handleTestPushEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 4

    .prologue
    .line 422
    const-string v0, "https://%s/test_push_events"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/localytics/android/PushManager;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v3}, Lcom/localytics/android/LocalyticsDao;->getTestPushEventsHost()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 423
    new-instance v1, Lcom/localytics/android/PushManager$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/localytics/android/PushManager$3;-><init>(Lcom/localytics/android/PushManager;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0, p4, p3, v1}, Lcom/localytics/android/PushManager;->pushIntegrationUpload(Ljava/lang/String;ZLjava/lang/String;Lcom/localytics/android/PushManager$POSTBodyBuilder;)V

    .line 443
    return-void
.end method

.method private pushIntegrationUpload(Ljava/lang/String;ZLjava/lang/String;Lcom/localytics/android/PushManager$POSTBodyBuilder;)V
    .locals 6

    .prologue
    .line 448
    new-instance v0, Lcom/localytics/android/PushManager$4;

    move-object v1, p0

    move-object v2, p4

    move-object v3, p1

    move-object v4, p3

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/localytics/android/PushManager$4;-><init>(Lcom/localytics/android/PushManager;Lcom/localytics/android/PushManager$POSTBodyBuilder;Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/localytics/android/PushManager$4;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 518
    return-void
.end method


# virtual methods
.method _convertToPushCampaign(Landroid/os/Bundle;)Lcom/localytics/android/PushCampaign;
    .locals 3

    .prologue
    .line 95
    :try_start_0
    const-string v0, "message"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 96
    const-string v0, "ll_sound_filename"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 97
    new-instance v0, Lcom/localytics/android/PushCampaign;

    invoke-direct {v0, v1, v2, p1}, Lcom/localytics/android/PushCampaign;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    :goto_0
    return-object v0

    .line 99
    :catch_0
    move-exception v0

    .line 101
    const-string v0, "Failed to parse push campaign from payload, ignoring message"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->w(Ljava/lang/String;)I

    .line 103
    const/4 v0, 0x0

    goto :goto_0
.end method

.method _handlePushIntegrationReceivedVerification(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 411
    const-string v0, "received"

    const-string v1, "Localytics Push Received event was tagged."

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/localytics/android/PushManager;->handleTestPushEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 412
    return-void
.end method

.method _handlePushReceived(Landroid/os/Bundle;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 50
    iget-object v0, p0, Lcom/localytics/android/PushManager;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v0}, Lcom/localytics/android/LocalyticsDao;->areNotificationsDisabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 52
    const-string v0, "Got push notification while push is disabled."

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->w(Ljava/lang/String;)I

    .line 80
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 57
    :cond_1
    invoke-virtual {p0, p1}, Lcom/localytics/android/PushManager;->_convertToPushCampaign(Landroid/os/Bundle;)Lcom/localytics/android/PushCampaign;

    move-result-object v2

    .line 58
    if-eqz v2, :cond_0

    .line 60
    iget-object v3, p0, Lcom/localytics/android/PushManager;->mMarketingHandler:Lcom/localytics/android/MarketingHandler;

    monitor-enter v3

    .line 62
    :try_start_0
    iget-object v0, p0, Lcom/localytics/android/PushManager;->mMarketingHandler:Lcom/localytics/android/MarketingHandler;

    iget-object v0, v0, Lcom/localytics/android/MarketingHandler;->mListeners:Lcom/localytics/android/ListenersSet;

    invoke-virtual {v0}, Lcom/localytics/android/ListenersSet;->getDevListener()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/localytics/android/MessagingListener;

    .line 63
    if-eqz v0, :cond_2

    .line 65
    invoke-interface {v0, v2}, Lcom/localytics/android/MessagingListener;->localyticsShouldShowPushNotification(Lcom/localytics/android/PushCampaign;)Z

    move-result v0

    .line 67
    :goto_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    if-eqz v0, :cond_0

    .line 70
    invoke-virtual {p0, v2}, Lcom/localytics/android/PushManager;->_tagPushReceivedEvent(Lcom/localytics/android/PushCampaign;)Z

    .line 71
    invoke-virtual {v2}, Lcom/localytics/android/PushCampaign;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/localytics/android/PushManager;->_hasMessage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v2}, Lcom/localytics/android/PushCampaign;->isControlGroup()Z

    move-result v0

    if-nez v0, :cond_0

    .line 73
    invoke-virtual {p0, v2, p1}, Lcom/localytics/android/PushManager;->_showPushNotification(Lcom/localytics/android/PushCampaign;Landroid/os/Bundle;)V

    move v0, v1

    .line 74
    goto :goto_0

    .line 67
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method _showPushNotification(Lcom/localytics/android/PushCampaign;Landroid/os/Bundle;)V
    .locals 8

    .prologue
    .line 126
    invoke-virtual {p1}, Lcom/localytics/android/PushCampaign;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 127
    invoke-virtual {p1}, Lcom/localytics/android/PushCampaign;->getCampaignId()J

    move-result-wide v4

    .line 128
    invoke-virtual {p1}, Lcom/localytics/android/PushCampaign;->getSoundFilename()Ljava/lang/String;

    move-result-object v3

    move-object v1, p0

    move-object v6, p1

    move-object v7, p2

    invoke-virtual/range {v1 .. v7}, Lcom/localytics/android/PushManager;->_showPushNotification(Ljava/lang/String;Ljava/lang/String;JLcom/localytics/android/Campaign;Landroid/os/Bundle;)V

    .line 129
    return-void
.end method

.method _tagPushReceivedEvent(Landroid/os/Bundle;)Z
    .locals 1

    .prologue
    .line 85
    invoke-virtual {p0, p1}, Lcom/localytics/android/PushManager;->_convertToPushCampaign(Landroid/os/Bundle;)Lcom/localytics/android/PushCampaign;

    move-result-object v0

    .line 86
    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/localytics/android/PushManager;->_tagPushReceivedEvent(Lcom/localytics/android/PushCampaign;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method _tagPushReceivedEvent(Lcom/localytics/android/PushCampaign;)Z
    .locals 14

    .prologue
    .line 108
    invoke-virtual {p1}, Lcom/localytics/android/PushCampaign;->getCampaignId()J

    move-result-wide v4

    .line 109
    invoke-virtual {p1}, Lcom/localytics/android/PushCampaign;->getCreativeId()J

    move-result-wide v0

    .line 111
    invoke-virtual {p1}, Lcom/localytics/android/PushCampaign;->getMessage()Ljava/lang/String;

    move-result-object v3

    .line 112
    invoke-virtual {p1}, Lcom/localytics/android/PushCampaign;->getCreativeType()Ljava/lang/String;

    move-result-object v8

    .line 113
    invoke-virtual {p1}, Lcom/localytics/android/PushCampaign;->getSchemaVersion()J

    move-result-wide v12

    .line 114
    invoke-virtual {p1}, Lcom/localytics/android/PushCampaign;->getKillSwitch()I

    move-result v9

    .line 115
    invoke-virtual {p1}, Lcom/localytics/android/PushCampaign;->getTestMode()I

    move-result v10

    .line 116
    invoke-virtual {p1}, Lcom/localytics/android/PushCampaign;->getPip()Ljava/lang/String;

    move-result-object v11

    .line 118
    const-string v2, "Localytics Push Received"

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    const/4 v12, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v12}, Lcom/localytics/android/PushManager;->_tagPushReceived(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/util/Map;)Z

    move-result v0

    return v0
.end method

.method handleDeviceInfo(Landroid/net/Uri;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 331
    iget-object v0, p0, Lcom/localytics/android/PushManager;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v0}, Lcom/localytics/android/LocalyticsDao;->getAppContext()Landroid/content/Context;

    move-result-object v0

    .line 332
    iget-object v1, p0, Lcom/localytics/android/PushManager;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v1}, Lcom/localytics/android/LocalyticsDao;->getCustomerIdFuture()Ljava/util/concurrent/Future;

    move-result-object v1

    .line 333
    const-string v2, "https://%s/test_devices"

    new-array v3, v6, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/localytics/android/PushManager;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v5}, Lcom/localytics/android/LocalyticsDao;->getTestDevicesHost()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 334
    const-string v3, "You have successfully paired your device with the Dashboard."

    new-instance v4, Lcom/localytics/android/PushManager$2;

    invoke-direct {v4, p0, p1, v1, v0}, Lcom/localytics/android/PushManager$2;-><init>(Lcom/localytics/android/PushManager;Landroid/net/Uri;Ljava/util/concurrent/Future;Landroid/content/Context;)V

    invoke-direct {p0, v2, v6, v3, v4}, Lcom/localytics/android/PushManager;->pushIntegrationUpload(Ljava/lang/String;ZLjava/lang/String;Lcom/localytics/android/PushManager$POSTBodyBuilder;)V

    .line 406
    return-void
.end method

.method handlePushNotificationOpened(Landroid/content/Intent;)V
    .locals 7

    .prologue
    .line 135
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_1

    .line 189
    :cond_0
    :goto_0
    return-void

    .line 141
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "ll"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 142
    if-eqz v0, :cond_0

    .line 146
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 147
    const-string v0, "ca"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 148
    const-string v0, "cr"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 149
    const-string v0, "v"

    const-string v4, "1"

    invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 150
    const-string v0, "test_mode"

    const/4 v5, 0x0

    invoke-virtual {v1, v0, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    .line 152
    const-string v0, "t"

    const/4 v6, 0x0

    invoke-virtual {v1, v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 153
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 155
    const-string v0, "Alert"

    .line 158
    :cond_2
    if-eqz v2, :cond_3

    if-eqz v3, :cond_3

    if-nez v5, :cond_3

    .line 160
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 161
    const-string v6, "Campaign ID"

    invoke-virtual {v5, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    const-string v2, "Creative ID"

    invoke-virtual {v5, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    const-string v2, "Creative Type"

    invoke-virtual {v5, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    const-string v0, "Action"

    const-string v2, "Click"

    invoke-virtual {v5, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    const-string v0, "Schema Version - Client"

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    const-string v0, "Schema Version - Server"

    invoke-virtual {v5, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    iget-object v0, p0, Lcom/localytics/android/PushManager;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    const-string v2, "Localytics Push Opened"

    invoke-interface {v0, v2, v5}, Lcom/localytics/android/LocalyticsDao;->tagEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 169
    const-string v0, "pip"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 170
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 172
    invoke-direct {p0, v0}, Lcom/localytics/android/PushManager;->handlePushIntegrationOpenedVerification(Ljava/lang/String;)V

    .line 177
    :cond_3
    const-string v0, "ll"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 179
    :catch_0
    move-exception v0

    .line 181
    :try_start_2
    const-string v0, "Failed to get campaign id or creative id from payload"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->w(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 185
    :catch_1
    move-exception v0

    .line 187
    const-string v1, "Exception while handling opened push"

    invoke-static {v1, v0}, Lcom/localytics/android/Localytics$Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method

.method handlePushTestMode([Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 195
    const/4 v0, 0x2

    :try_start_0
    aget-object v3, p1, v0

    .line 196
    const/4 v0, 0x3

    aget-object v4, p1, v0

    .line 197
    iget-object v0, p0, Lcom/localytics/android/PushManager;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v0}, Lcom/localytics/android/LocalyticsDao;->getCustomerIdFuture()Ljava/util/concurrent/Future;

    move-result-object v5

    .line 198
    iget-object v0, p0, Lcom/localytics/android/PushManager;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v0}, Lcom/localytics/android/LocalyticsDao;->getAppContext()Landroid/content/Context;

    move-result-object v2

    .line 200
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 202
    new-instance v0, Lcom/localytics/android/PushManager$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/localytics/android/PushManager$1;-><init>(Lcom/localytics/android/PushManager;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/Future;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/localytics/android/PushManager$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 327
    :cond_0
    :goto_0
    return-void

    .line 323
    :catch_0
    move-exception v0

    .line 325
    const-string v1, "Exception while handling test mode"

    invoke-static {v1, v0}, Lcom/localytics/android/Localytics$Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
