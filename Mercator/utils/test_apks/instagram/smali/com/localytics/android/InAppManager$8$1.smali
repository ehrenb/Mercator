.class Lcom/localytics/android/InAppManager$8$1;
.super Landroid/os/AsyncTask;
.source "InAppManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/localytics/android/InAppManager$8;->call([Ljava/lang/Object;)Ljava/lang/Object;
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
.field final synthetic this$1:Lcom/localytics/android/InAppManager$8;


# direct methods
.method constructor <init>(Lcom/localytics/android/InAppManager$8;)V
    .locals 0

    .prologue
    .line 2093
    iput-object p1, p0, Lcom/localytics/android/InAppManager$8$1;->this$1:Lcom/localytics/android/InAppManager$8;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2093
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/localytics/android/InAppManager$8$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 2099
    :try_start_0
    iget-object v0, p0, Lcom/localytics/android/InAppManager$8$1;->this$1:Lcom/localytics/android/InAppManager$8;

    iget-object v0, v0, Lcom/localytics/android/InAppManager$8;->this$0:Lcom/localytics/android/InAppManager;

    iget-object v0, v0, Lcom/localytics/android/InAppManager;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v0}, Lcom/localytics/android/LocalyticsDao;->getPushRegistrationId()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 2106
    :goto_0
    return-object v0

    .line 2101
    :catch_0
    move-exception v0

    .line 2103
    const-string v1, "MarketingCallable ON_IN_APP_TEST_COPY_PUSH_TOKEN exception"

    invoke-static {v1, v0}, Lcom/localytics/android/Localytics$Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2106
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 2093
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/localytics/android/InAppManager$8$1;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 2114
    :try_start_0
    iget-object v0, p0, Lcom/localytics/android/InAppManager$8$1;->this$1:Lcom/localytics/android/InAppManager$8;

    iget-object v0, v0, Lcom/localytics/android/InAppManager$8;->this$0:Lcom/localytics/android/InAppManager;

    iget-object v1, p0, Lcom/localytics/android/InAppManager$8$1;->this$1:Lcom/localytics/android/InAppManager$8;

    iget-object v1, v1, Lcom/localytics/android/InAppManager$8;->val$appContext:Landroid/content/Context;

    const-string v2, "Push Token"

    # invokes: Lcom/localytics/android/InAppManager;->copyToClipboard(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, p1, v2}, Lcom/localytics/android/InAppManager;->access$500(Lcom/localytics/android/InAppManager;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2120
    :goto_0
    return-void

    .line 2116
    :catch_0
    move-exception v0

    .line 2118
    const-string v1, "MarketingCallable ON_IN_APP_TEST_COPY_PUSH_TOKEN exception"

    invoke-static {v1, v0}, Lcom/localytics/android/Localytics$Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
