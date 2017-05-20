.class Lcm/aptoide/pt/v8engine/receivers/DeepLinkIntentReceiver$MyAppDownloader;
.super Landroid/os/AsyncTask;
.source "DeepLinkIntentReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcm/aptoide/pt/v8engine/receivers/DeepLinkIntentReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyAppDownloader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field pd:Landroid/app/ProgressDialog;

.field final synthetic this$0:Lcm/aptoide/pt/v8engine/receivers/DeepLinkIntentReceiver;


# direct methods
.method constructor <init>(Lcm/aptoide/pt/v8engine/receivers/DeepLinkIntentReceiver;)V
    .locals 0

    .prologue
    .line 472
    iput-object p1, p0, Lcm/aptoide/pt/v8engine/receivers/DeepLinkIntentReceiver$MyAppDownloader;->this$0:Lcm/aptoide/pt/v8engine/receivers/DeepLinkIntentReceiver;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 472
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcm/aptoide/pt/v8engine/receivers/DeepLinkIntentReceiver$MyAppDownloader;->doInBackground([Ljava/lang/String;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Void;
    .locals 2

    .prologue
    .line 479
    :try_start_0
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/receivers/DeepLinkIntentReceiver$MyAppDownloader;->this$0:Lcm/aptoide/pt/v8engine/receivers/DeepLinkIntentReceiver;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    # invokes: Lcm/aptoide/pt/v8engine/receivers/DeepLinkIntentReceiver;->downloadMyAppFile(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcm/aptoide/pt/v8engine/receivers/DeepLinkIntentReceiver;->access$000(Lcm/aptoide/pt/v8engine/receivers/DeepLinkIntentReceiver;Ljava/lang/String;)V

    .line 480
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/receivers/DeepLinkIntentReceiver$MyAppDownloader;->this$0:Lcm/aptoide/pt/v8engine/receivers/DeepLinkIntentReceiver;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/receivers/DeepLinkIntentReceiver$MyAppDownloader;->this$0:Lcm/aptoide/pt/v8engine/receivers/DeepLinkIntentReceiver;

    # getter for: Lcm/aptoide/pt/v8engine/receivers/DeepLinkIntentReceiver;->TMP_MYAPP_FILE:Ljava/lang/String;
    invoke-static {v1}, Lcm/aptoide/pt/v8engine/receivers/DeepLinkIntentReceiver;->access$100(Lcm/aptoide/pt/v8engine/receivers/DeepLinkIntentReceiver;)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcm/aptoide/pt/v8engine/receivers/DeepLinkIntentReceiver;->parseXmlMyapp(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcm/aptoide/pt/v8engine/receivers/DeepLinkIntentReceiver;->access$200(Lcm/aptoide/pt/v8engine/receivers/DeepLinkIntentReceiver;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 485
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 481
    :catch_0
    move-exception v0

    .line 482
    invoke-static {}, Lcm/aptoide/pt/crashreports/CrashReport;->getInstance()Lcm/aptoide/pt/crashreports/CrashReport;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcm/aptoide/pt/crashreports/CrashReport;->log(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 472
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcm/aptoide/pt/v8engine/receivers/DeepLinkIntentReceiver$MyAppDownloader;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1

    .prologue
    .line 497
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 498
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/receivers/DeepLinkIntentReceiver$MyAppDownloader;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/receivers/DeepLinkIntentReceiver$MyAppDownloader;->this$0:Lcm/aptoide/pt/v8engine/receivers/DeepLinkIntentReceiver;

    invoke-virtual {v0}, Lcm/aptoide/pt/v8engine/receivers/DeepLinkIntentReceiver;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 499
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/receivers/DeepLinkIntentReceiver$MyAppDownloader;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 502
    :cond_0
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/receivers/DeepLinkIntentReceiver$MyAppDownloader;->this$0:Lcm/aptoide/pt/v8engine/receivers/DeepLinkIntentReceiver;

    # getter for: Lcm/aptoide/pt/v8engine/receivers/DeepLinkIntentReceiver;->app:Ljava/util/HashMap;
    invoke-static {v0}, Lcm/aptoide/pt/v8engine/receivers/DeepLinkIntentReceiver;->access$300(Lcm/aptoide/pt/v8engine/receivers/DeepLinkIntentReceiver;)Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/receivers/DeepLinkIntentReceiver$MyAppDownloader;->this$0:Lcm/aptoide/pt/v8engine/receivers/DeepLinkIntentReceiver;

    # getter for: Lcm/aptoide/pt/v8engine/receivers/DeepLinkIntentReceiver;->app:Ljava/util/HashMap;
    invoke-static {v0}, Lcm/aptoide/pt/v8engine/receivers/DeepLinkIntentReceiver;->access$300(Lcm/aptoide/pt/v8engine/receivers/DeepLinkIntentReceiver;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 534
    :goto_0
    return-void

    .line 532
    :cond_1
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/receivers/DeepLinkIntentReceiver$MyAppDownloader;->this$0:Lcm/aptoide/pt/v8engine/receivers/DeepLinkIntentReceiver;

    # invokes: Lcm/aptoide/pt/v8engine/receivers/DeepLinkIntentReceiver;->proceed()V
    invoke-static {v0}, Lcm/aptoide/pt/v8engine/receivers/DeepLinkIntentReceiver;->access$400(Lcm/aptoide/pt/v8engine/receivers/DeepLinkIntentReceiver;)V

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 3

    .prologue
    .line 489
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 490
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/receivers/DeepLinkIntentReceiver$MyAppDownloader;->this$0:Lcm/aptoide/pt/v8engine/receivers/DeepLinkIntentReceiver;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/receivers/DeepLinkIntentReceiver$MyAppDownloader;->pd:Landroid/app/ProgressDialog;

    .line 491
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/receivers/DeepLinkIntentReceiver$MyAppDownloader;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 492
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/receivers/DeepLinkIntentReceiver$MyAppDownloader;->pd:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 493
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/receivers/DeepLinkIntentReceiver$MyAppDownloader;->pd:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/receivers/DeepLinkIntentReceiver$MyAppDownloader;->this$0:Lcm/aptoide/pt/v8engine/receivers/DeepLinkIntentReceiver;

    sget v2, Lcm/aptoide/pt/v8engine/R$string;->please_wait:I

    invoke-virtual {v1, v2}, Lcm/aptoide/pt/v8engine/receivers/DeepLinkIntentReceiver;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 494
    return-void
.end method
