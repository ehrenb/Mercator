.class Lcom/localytics/android/PushManager$1;
.super Landroid/os/AsyncTask;
.source "PushManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/localytics/android/PushManager;->handlePushTestMode([Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/localytics/android/PushManager;

.field final synthetic val$appContext:Landroid/content/Context;

.field final synthetic val$campaign:Ljava/lang/String;

.field final synthetic val$creative:Ljava/lang/String;

.field final synthetic val$customerIdFuture:Ljava/util/concurrent/Future;


# direct methods
.method constructor <init>(Lcom/localytics/android/PushManager;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/Future;)V
    .locals 0

    .prologue
    .line 203
    iput-object p1, p0, Lcom/localytics/android/PushManager$1;->this$0:Lcom/localytics/android/PushManager;

    iput-object p2, p0, Lcom/localytics/android/PushManager$1;->val$appContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/localytics/android/PushManager$1;->val$campaign:Ljava/lang/String;

    iput-object p4, p0, Lcom/localytics/android/PushManager$1;->val$creative:Ljava/lang/String;

    iput-object p5, p0, Lcom/localytics/android/PushManager$1;->val$customerIdFuture:Ljava/util/concurrent/Future;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 203
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/localytics/android/PushManager$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 209
    :try_start_0
    iget-object v0, p0, Lcom/localytics/android/PushManager$1;->this$0:Lcom/localytics/android/PushManager;

    iget-object v0, v0, Lcom/localytics/android/PushManager;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v0}, Lcom/localytics/android/LocalyticsDao;->getPushRegistrationId()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 216
    :goto_0
    return-object v0

    .line 211
    :catch_0
    move-exception v0

    .line 213
    const-string v1, "Exception while handling test mode"

    invoke-static {v1, v0}, Lcom/localytics/android/Localytics$Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 216
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 203
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/localytics/android/PushManager$1;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 222
    new-instance v0, Lcom/localytics/android/PushManager$1$1;

    invoke-direct {v0, p0, p1}, Lcom/localytics/android/PushManager$1$1;-><init>(Lcom/localytics/android/PushManager$1;Ljava/lang/String;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/localytics/android/PushManager$1$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 319
    return-void
.end method
