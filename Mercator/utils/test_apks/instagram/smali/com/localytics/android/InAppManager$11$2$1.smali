.class Lcom/localytics/android/InAppManager$11$2$1;
.super Ljava/lang/Object;
.source "InAppManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/localytics/android/InAppManager$11$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/localytics/android/InAppManager$11$2;


# direct methods
.method constructor <init>(Lcom/localytics/android/InAppManager$11$2;)V
    .locals 0

    .prologue
    .line 2250
    iput-object p1, p0, Lcom/localytics/android/InAppManager$11$2$1;->this$2:Lcom/localytics/android/InAppManager$11$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 2256
    :try_start_0
    iget-object v0, p0, Lcom/localytics/android/InAppManager$11$2$1;->this$2:Lcom/localytics/android/InAppManager$11$2;

    iget-object v0, v0, Lcom/localytics/android/InAppManager$11$2;->this$1:Lcom/localytics/android/InAppManager$11;

    iget-object v0, v0, Lcom/localytics/android/InAppManager$11;->this$0:Lcom/localytics/android/InAppManager;

    # getter for: Lcom/localytics/android/InAppManager;->mFragmentManager:Landroid/app/FragmentManager;
    invoke-static {v0}, Lcom/localytics/android/InAppManager;->access$100(Lcom/localytics/android/InAppManager;)Landroid/app/FragmentManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/localytics/android/InAppManager$11$2$1;->this$2:Lcom/localytics/android/InAppManager$11$2;

    iget-object v0, v0, Lcom/localytics/android/InAppManager$11$2;->this$1:Lcom/localytics/android/InAppManager$11;

    iget-object v0, v0, Lcom/localytics/android/InAppManager$11;->this$0:Lcom/localytics/android/InAppManager;

    # getter for: Lcom/localytics/android/InAppManager;->mFragmentManager:Landroid/app/FragmentManager;
    invoke-static {v0}, Lcom/localytics/android/InAppManager;->access$100(Lcom/localytics/android/InAppManager;)Landroid/app/FragmentManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "marketing_dialog"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/localytics/android/InAppManager$11$2$1;->this$2:Lcom/localytics/android/InAppManager$11$2;

    iget-object v2, v2, Lcom/localytics/android/InAppManager$11$2;->val$marketingMessage:Lcom/localytics/android/MarketingMessage;

    const-string v3, "campaign_id"

    invoke-virtual {v2, v3}, Lcom/localytics/android/MarketingMessage;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2276
    :cond_0
    :goto_0
    return-void

    .line 2261
    :cond_1
    iget-object v0, p0, Lcom/localytics/android/InAppManager$11$2$1;->this$2:Lcom/localytics/android/InAppManager$11$2;

    iget-object v0, v0, Lcom/localytics/android/InAppManager$11$2;->this$1:Lcom/localytics/android/InAppManager$11;

    iget-object v0, v0, Lcom/localytics/android/InAppManager$11;->this$0:Lcom/localytics/android/InAppManager;

    iget-object v1, p0, Lcom/localytics/android/InAppManager$11$2$1;->this$2:Lcom/localytics/android/InAppManager$11$2;

    iget-object v1, v1, Lcom/localytics/android/InAppManager$11$2;->val$marketingMessage:Lcom/localytics/android/MarketingMessage;

    const/4 v2, 0x0

    const/4 v3, 0x0

    # invokes: Lcom/localytics/android/InAppManager;->getInAppCampaignFromMarketingMessage(Lcom/localytics/android/MarketingMessage;Ljava/lang/String;Ljava/util/Map;)Lcom/localytics/android/InAppCampaign;
    invoke-static {v0, v1, v2, v3}, Lcom/localytics/android/InAppManager;->access$300(Lcom/localytics/android/InAppManager;Lcom/localytics/android/MarketingMessage;Ljava/lang/String;Ljava/util/Map;)Lcom/localytics/android/InAppCampaign;

    move-result-object v0

    .line 2262
    invoke-static {v0}, Lcom/localytics/android/InAppDialogFragment;->newInstance(Lcom/localytics/android/InAppCampaign;)Lcom/localytics/android/InAppDialogFragment;

    move-result-object v1

    .line 2263
    iget-object v0, p0, Lcom/localytics/android/InAppManager$11$2$1;->this$2:Lcom/localytics/android/InAppManager$11$2;

    iget-object v0, v0, Lcom/localytics/android/InAppManager$11$2;->this$1:Lcom/localytics/android/InAppManager$11;

    iget-object v0, v0, Lcom/localytics/android/InAppManager$11;->this$0:Lcom/localytics/android/InAppManager;

    # getter for: Lcom/localytics/android/InAppManager;->mMarketingHandler:Lcom/localytics/android/MarketingHandler;
    invoke-static {v0}, Lcom/localytics/android/InAppManager;->access$000(Lcom/localytics/android/InAppManager;)Lcom/localytics/android/MarketingHandler;

    move-result-object v0

    iget-object v0, v0, Lcom/localytics/android/MarketingHandler;->mListeners:Lcom/localytics/android/ListenersSet;

    invoke-virtual {v0}, Lcom/localytics/android/ListenersSet;->getProxy()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/localytics/android/MessagingListener;

    invoke-virtual {v1, v0}, Lcom/localytics/android/InAppDialogFragment;->setMessagingListener(Lcom/localytics/android/MessagingListener;)Lcom/localytics/android/InAppDialogFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/localytics/android/InAppManager$11$2$1;->this$2:Lcom/localytics/android/InAppManager$11$2;

    iget-object v1, v1, Lcom/localytics/android/InAppManager$11$2;->this$1:Lcom/localytics/android/InAppManager$11;

    iget-object v1, v1, Lcom/localytics/android/InAppManager$11;->this$0:Lcom/localytics/android/InAppManager;

    # getter for: Lcom/localytics/android/InAppManager;->mFragmentManager:Landroid/app/FragmentManager;
    invoke-static {v1}, Lcom/localytics/android/InAppManager;->access$100(Lcom/localytics/android/InAppManager;)Landroid/app/FragmentManager;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "marketing_dialog"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/localytics/android/InAppManager$11$2$1;->this$2:Lcom/localytics/android/InAppManager$11$2;

    iget-object v3, v3, Lcom/localytics/android/InAppManager$11$2;->val$marketingMessage:Lcom/localytics/android/MarketingMessage;

    const-string v4, "campaign_id"

    invoke-virtual {v3, v4}, Lcom/localytics/android/MarketingMessage;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/localytics/android/InAppDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 2270
    iget-object v0, p0, Lcom/localytics/android/InAppManager$11$2$1;->this$2:Lcom/localytics/android/InAppManager$11$2;

    iget-object v0, v0, Lcom/localytics/android/InAppManager$11$2;->this$1:Lcom/localytics/android/InAppManager$11;

    iget-object v0, v0, Lcom/localytics/android/InAppManager$11;->this$0:Lcom/localytics/android/InAppManager;

    # getter for: Lcom/localytics/android/InAppManager;->mFragmentManager:Landroid/app/FragmentManager;
    invoke-static {v0}, Lcom/localytics/android/InAppManager;->access$100(Lcom/localytics/android/InAppManager;)Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->executePendingTransactions()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2272
    :catch_0
    move-exception v0

    .line 2274
    const-string v1, "MarketingCallable ON_IN_APP_TEST_SHOW_CAMPAIGN exception"

    invoke-static {v1, v0}, Lcom/localytics/android/Localytics$Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
