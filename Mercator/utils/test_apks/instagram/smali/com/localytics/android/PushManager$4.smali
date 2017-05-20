.class Lcom/localytics/android/PushManager$4;
.super Landroid/os/AsyncTask;
.source "PushManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/localytics/android/PushManager;->pushIntegrationUpload(Ljava/lang/String;ZLjava/lang/String;Lcom/localytics/android/PushManager$POSTBodyBuilder;)V
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

.field final synthetic val$builder:Lcom/localytics/android/PushManager$POSTBodyBuilder;

.field final synthetic val$canPresentToast:Z

.field final synthetic val$successMessage:Ljava/lang/String;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/localytics/android/PushManager;Lcom/localytics/android/PushManager$POSTBodyBuilder;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 449
    iput-object p1, p0, Lcom/localytics/android/PushManager$4;->this$0:Lcom/localytics/android/PushManager;

    iput-object p2, p0, Lcom/localytics/android/PushManager$4;->val$builder:Lcom/localytics/android/PushManager$POSTBodyBuilder;

    iput-object p3, p0, Lcom/localytics/android/PushManager$4;->val$url:Ljava/lang/String;

    iput-object p4, p0, Lcom/localytics/android/PushManager$4;->val$successMessage:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/localytics/android/PushManager$4;->val$canPresentToast:Z

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 449
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/localytics/android/PushManager$4;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 453
    const-string v1, "There was an unexpected network error while connecting to the Dashboard. Please try again."

    .line 456
    :try_start_0
    iget-object v0, p0, Lcom/localytics/android/PushManager$4;->val$builder:Lcom/localytics/android/PushManager$POSTBodyBuilder;

    invoke-interface {v0}, Lcom/localytics/android/PushManager$POSTBodyBuilder;->getBody()Ljava/lang/String;

    move-result-object v3

    .line 457
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 459
    const-string v0, "POST body for push integration is empty"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->e(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object v0, v1

    .line 499
    :goto_0
    return-object v0

    .line 463
    :cond_0
    const/4 v2, 0x0

    .line 466
    :try_start_1
    new-instance v0, Ljava/net/URL;

    iget-object v4, p0, Lcom/localytics/android/PushManager$4;->val$url:Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/localytics/android/PushManager$4;->this$0:Lcom/localytics/android/PushManager;

    iget-object v4, v4, Lcom/localytics/android/PushManager;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v4}, Lcom/localytics/android/LocalyticsDao;->getProxy()Ljava/net/Proxy;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/localytics/android/BaseUploadThread;->createURLConnection(Ljava/net/URL;Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 467
    const/16 v2, 0x1388

    :try_start_2
    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 468
    const/16 v2, 0x1388

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 469
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 470
    const-string v2, "POST"

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 471
    const-string v2, "Content-Type"

    const-string v4, "application/json"

    invoke-virtual {v0, v2, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    .line 474
    const-string v4, "UTF-8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V

    .line 475
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 477
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 486
    if-eqz v0, :cond_1

    .line 488
    :try_start_3
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 499
    :cond_1
    iget-object v0, p0, Lcom/localytics/android/PushManager$4;->val$successMessage:Ljava/lang/String;

    goto :goto_0

    .line 479
    :catch_0
    move-exception v0

    .line 481
    :goto_1
    :try_start_4
    const-string v3, "POST for push integration has failed"

    invoke-static {v3, v0}, Lcom/localytics/android/Localytics$Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 486
    if-eqz v2, :cond_2

    .line 488
    :try_start_5
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_2
    move-object v0, v1

    goto :goto_0

    .line 486
    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v2, :cond_3

    .line 488
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_3
    throw v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 493
    :catch_1
    move-exception v0

    .line 495
    const-string v2, "POST for push integration has failed"

    invoke-static {v2, v0}, Lcom/localytics/android/Localytics$Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    .line 496
    goto :goto_0

    .line 486
    :catchall_1
    move-exception v2

    move-object v5, v2

    move-object v2, v0

    move-object v0, v5

    goto :goto_2

    .line 479
    :catch_2
    move-exception v2

    move-object v5, v2

    move-object v2, v0

    move-object v0, v5

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 449
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/localytics/android/PushManager$4;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 507
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/localytics/android/PushManager$4;->val$canPresentToast:Z

    if-eqz v0, :cond_0

    .line 509
    iget-object v0, p0, Lcom/localytics/android/PushManager$4;->this$0:Lcom/localytics/android/PushManager;

    iget-object v0, v0, Lcom/localytics/android/PushManager;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v0}, Lcom/localytics/android/LocalyticsDao;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 516
    :cond_0
    :goto_0
    return-void

    .line 512
    :catch_0
    move-exception v0

    .line 514
    const-string v1, "Exception while handling device info"

    invoke-static {v1, v0}, Lcom/localytics/android/Localytics$Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
