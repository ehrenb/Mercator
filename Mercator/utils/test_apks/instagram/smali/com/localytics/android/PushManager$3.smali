.class Lcom/localytics/android/PushManager$3;
.super Ljava/lang/Object;
.source "PushManager.java"

# interfaces
.implements Lcom/localytics/android/PushManager$POSTBodyBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/localytics/android/PushManager;->handleTestPushEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/localytics/android/PushManager;

.field final synthetic val$action:Ljava/lang/String;

.field final synthetic val$pip:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/localytics/android/PushManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 424
    iput-object p1, p0, Lcom/localytics/android/PushManager$3;->this$0:Lcom/localytics/android/PushManager;

    iput-object p2, p0, Lcom/localytics/android/PushManager$3;->val$pip:Ljava/lang/String;

    iput-object p3, p0, Lcom/localytics/android/PushManager$3;->val$action:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBody()Ljava/lang/String;
    .locals 3

    .prologue
    .line 430
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 431
    const-string v1, "pip_id"

    iget-object v2, p0, Lcom/localytics/android/PushManager$3;->val$pip:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 432
    const-string v1, "event"

    iget-object v2, p0, Lcom/localytics/android/PushManager$3;->val$action:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 433
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 440
    :goto_0
    return-object v0

    .line 435
    :catch_0
    move-exception v0

    .line 437
    const-string v1, "Failed to create test push event POST body"

    invoke-static {v1, v0}, Lcom/localytics/android/Localytics$Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 440
    const/4 v0, 0x0

    goto :goto_0
.end method
