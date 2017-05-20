.class Lcom/localytics/android/PushManager$2;
.super Ljava/lang/Object;
.source "PushManager.java"

# interfaces
.implements Lcom/localytics/android/PushManager$POSTBodyBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/localytics/android/PushManager;->handleDeviceInfo(Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/localytics/android/PushManager;

.field final synthetic val$appContext:Landroid/content/Context;

.field final synthetic val$customerIdFuture:Ljava/util/concurrent/Future;

.field final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/localytics/android/PushManager;Landroid/net/Uri;Ljava/util/concurrent/Future;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 335
    iput-object p1, p0, Lcom/localytics/android/PushManager$2;->this$0:Lcom/localytics/android/PushManager;

    iput-object p2, p0, Lcom/localytics/android/PushManager$2;->val$uri:Landroid/net/Uri;

    iput-object p3, p0, Lcom/localytics/android/PushManager$2;->val$customerIdFuture:Ljava/util/concurrent/Future;

    iput-object p4, p0, Lcom/localytics/android/PushManager$2;->val$appContext:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBody()Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 341
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 343
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 344
    iget-object v2, p0, Lcom/localytics/android/PushManager$2;->val$uri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v2

    .line 345
    if-eqz v2, :cond_1

    .line 347
    const-string v5, "&"

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 348
    array-length v6, v5

    move v2, v1

    :goto_0
    if-ge v2, v6, :cond_1

    aget-object v7, v5, v2

    .line 350
    const-string v8, "="

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 351
    array-length v8, v7

    const/4 v9, 0x2

    if-ne v8, v9, :cond_0

    .line 353
    const/4 v8, 0x0

    aget-object v8, v7, v8

    const/4 v9, 0x1

    aget-object v7, v7, v9

    invoke-virtual {v4, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 348
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 357
    :cond_1
    const-string v2, "request_info"

    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 359
    iget-object v2, p0, Lcom/localytics/android/PushManager$2;->this$0:Lcom/localytics/android/PushManager;

    iget-object v2, v2, Lcom/localytics/android/PushManager;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v2}, Lcom/localytics/android/LocalyticsDao;->getPushRegistrationId()Ljava/lang/String;

    move-result-object v2

    .line 360
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 361
    const-string v5, "app_id"

    iget-object v6, p0, Lcom/localytics/android/PushManager$2;->this$0:Lcom/localytics/android/PushManager;

    iget-object v6, v6, Lcom/localytics/android/PushManager;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v6}, Lcom/localytics/android/LocalyticsDao;->getAppKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 362
    const-string v5, "customer_id"

    iget-object v6, p0, Lcom/localytics/android/PushManager$2;->val$customerIdFuture:Ljava/util/concurrent/Future;

    invoke-interface {v6}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 363
    const-string v5, "install_id"

    iget-object v6, p0, Lcom/localytics/android/PushManager$2;->this$0:Lcom/localytics/android/PushManager;

    iget-object v6, v6, Lcom/localytics/android/PushManager;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v6}, Lcom/localytics/android/LocalyticsDao;->getInstallationId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 364
    const-string v5, "manufacturer"

    invoke-static {}, Lcom/localytics/android/DatapointHelper;->getManufacturer()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 365
    const-string v5, "os_version"

    sget-object v6, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 366
    const-string v5, "model"

    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 367
    const-string v5, "library_version"

    sget-object v6, Lcom/localytics/android/Constants;->LOCALYTICS_CLIENT_LIBRARY_VERSION:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 368
    const-string v5, "app_version"

    iget-object v6, p0, Lcom/localytics/android/PushManager$2;->val$appContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/localytics/android/DatapointHelper;->getAppVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 369
    const-string v5, "push_token"

    invoke-virtual {v4, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 370
    const-string v5, "notifications_enabled"

    iget-object v6, p0, Lcom/localytics/android/PushManager$2;->this$0:Lcom/localytics/android/PushManager;

    iget-object v6, v6, Lcom/localytics/android/PushManager;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v6}, Lcom/localytics/android/LocalyticsDao;->areNotificationsDisabled()Z

    move-result v6

    if-nez v6, :cond_2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    :goto_1
    invoke-virtual {v4, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 371
    const-string v0, "device_platform"

    const-string v1, "Android"

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 372
    const-string v0, "package_name"

    iget-object v1, p0, Lcom/localytics/android/PushManager$2;->val$appContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 373
    const-string v0, "is_opted_out"

    iget-object v1, p0, Lcom/localytics/android/PushManager$2;->this$0:Lcom/localytics/android/PushManager;

    iget-object v1, v1, Lcom/localytics/android/PushManager;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v1}, Lcom/localytics/android/LocalyticsDao;->isOptedOut()Z

    move-result v1

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 374
    const-string v0, "sender_id"

    iget-object v1, p0, Lcom/localytics/android/PushManager$2;->this$0:Lcom/localytics/android/PushManager;

    iget-object v1, v1, Lcom/localytics/android/PushManager;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v1}, Lcom/localytics/android/LocalyticsDao;->getSenderId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 375
    const-string v0, "device_info"

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 377
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 379
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 380
    const-string v2, "has_gcm_receiver"

    iget-object v4, p0, Lcom/localytics/android/PushManager$2;->val$appContext:Landroid/content/Context;

    const-string v5, "com.google.android.gms.gcm.GcmReceiver"

    invoke-static {v4, v5}, Lcom/localytics/android/ManifestUtil;->isReceiverInManifest(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 381
    const-string v2, "has_gcm_listener_service"

    iget-object v4, p0, Lcom/localytics/android/PushManager$2;->val$appContext:Landroid/content/Context;

    const-class v5, Lcom/localytics/android/GcmListenerService;

    invoke-static {v4, v5}, Lcom/localytics/android/ManifestUtil;->isServiceInManifest(Landroid/content/Context;Ljava/lang/Class;)Z

    move-result v4

    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 382
    const-string v2, "has_instance_id_listener_service"

    iget-object v4, p0, Lcom/localytics/android/PushManager$2;->val$appContext:Landroid/content/Context;

    const-class v5, Lcom/localytics/android/InstanceIDListenerService;

    invoke-static {v4, v5}, Lcom/localytics/android/ManifestUtil;->isServiceInManifest(Landroid/content/Context;Ljava/lang/Class;)Z

    move-result v4

    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 383
    const-string v2, "has_push_tracking_activity"

    iget-object v4, p0, Lcom/localytics/android/PushManager$2;->val$appContext:Landroid/content/Context;

    const-class v5, Lcom/localytics/android/PushTrackingActivity;

    invoke-static {v4, v5}, Lcom/localytics/android/ManifestUtil;->isActivityInManifest(Landroid/content/Context;Ljava/lang/Class;)Z

    move-result v4

    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 384
    const-string v2, "%s.permission.C2D_MESSAGE"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/localytics/android/PushManager$2;->val$appContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 385
    const-string v4, "has_permission_c2d_message"

    iget-object v5, p0, Lcom/localytics/android/PushManager$2;->val$appContext:Landroid/content/Context;

    invoke-static {v5, v2}, Lcom/localytics/android/ManifestUtil;->isPermissionInManifest(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 386
    const-string v4, "has_uses_permission_c2d_message"

    iget-object v5, p0, Lcom/localytics/android/PushManager$2;->val$appContext:Landroid/content/Context;

    invoke-static {v5, v2}, Lcom/localytics/android/ManifestUtil;->isRequestedPermissionInManifest(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 387
    const-string v2, "has_uses_permission_receive"

    iget-object v4, p0, Lcom/localytics/android/PushManager$2;->val$appContext:Landroid/content/Context;

    const-string v5, "com.google.android.c2dm.permission.RECEIVE"

    invoke-static {v4, v5}, Lcom/localytics/android/ManifestUtil;->isRequestedPermissionInManifest(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 388
    const-string v2, "manifest_info"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 390
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 391
    const-string v2, "has_gcm"

    const-string v4, "com.google.android.gms.gcm.GcmListenerService"

    invoke-static {v4}, Lcom/localytics/android/Utils;->classExists(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 392
    const-string v2, "dependency_info"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 394
    const-string v1, "integration_info"

    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 396
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 403
    :goto_2
    return-object v0

    :cond_2
    move v0, v1

    .line 370
    goto/16 :goto_1

    .line 398
    :catch_0
    move-exception v0

    .line 400
    const-string v1, "Failed to create device info POST body"

    invoke-static {v1, v0}, Lcom/localytics/android/Localytics$Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 403
    const/4 v0, 0x0

    goto :goto_2
.end method
