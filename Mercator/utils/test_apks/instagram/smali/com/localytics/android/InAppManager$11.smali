.class Lcom/localytics/android/InAppManager$11;
.super Lcom/localytics/android/MarketingCallable;
.source "InAppManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/localytics/android/InAppManager;->showInAppTest()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/localytics/android/InAppManager;

.field final synthetic val$appContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/localytics/android/InAppManager;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 2210
    iput-object p1, p0, Lcom/localytics/android/InAppManager$11;->this$0:Lcom/localytics/android/InAppManager;

    iput-object p2, p0, Lcom/localytics/android/InAppManager$11;->val$appContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/localytics/android/MarketingCallable;-><init>()V

    return-void
.end method


# virtual methods
.method call([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .prologue
    .line 2216
    const/4 v0, 0x0

    :try_start_0
    aget-object v0, p1, v0

    check-cast v0, Lcom/localytics/android/MarketingMessage;

    .line 2217
    iget-object v1, p0, Lcom/localytics/android/InAppManager$11;->this$0:Lcom/localytics/android/InAppManager;

    iget-object v1, v1, Lcom/localytics/android/InAppManager;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    const/4 v2, 0x1

    # invokes: Lcom/localytics/android/InAppManager;->updateMessageWithSpecialKeys(Lcom/localytics/android/MarketingMessage;Lcom/localytics/android/LocalyticsDao;Z)V
    invoke-static {v0, v1, v2}, Lcom/localytics/android/InAppManager;->access$600(Lcom/localytics/android/MarketingMessage;Lcom/localytics/android/LocalyticsDao;Z)V

    .line 2218
    const-string v1, "_id"

    invoke-virtual {v0, v1}, Lcom/localytics/android/MarketingMessage;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 2220
    iget-object v2, p0, Lcom/localytics/android/InAppManager$11;->this$0:Lcom/localytics/android/InAppManager;

    iget-object v2, v2, Lcom/localytics/android/InAppManager;->mCreativeManager:Lcom/localytics/android/CreativeManager;

    invoke-virtual {v2, v1}, Lcom/localytics/android/CreativeManager;->inAppCreativeExists(I)Z

    move-result v1

    .line 2221
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2224
    if-nez v1, :cond_0

    .line 2226
    new-instance v3, Lcom/localytics/android/InAppManager$11$1;

    invoke-direct {v3, p0}, Lcom/localytics/android/InAppManager$11$1;-><init>(Lcom/localytics/android/InAppManager$11;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2244
    :cond_0
    iget-object v3, p0, Lcom/localytics/android/InAppManager$11;->this$0:Lcom/localytics/android/InAppManager;

    # getter for: Lcom/localytics/android/InAppManager;->mMarketingHandler:Lcom/localytics/android/MarketingHandler;
    invoke-static {v3}, Lcom/localytics/android/InAppManager;->access$000(Lcom/localytics/android/InAppManager;)Lcom/localytics/android/MarketingHandler;

    move-result-object v3

    new-instance v4, Lcom/localytics/android/InAppManager$11$2;

    invoke-direct {v4, p0, v0, v1, v2}, Lcom/localytics/android/InAppManager$11$2;-><init>(Lcom/localytics/android/InAppManager$11;Lcom/localytics/android/MarketingMessage;ZLandroid/os/Handler;)V

    invoke-virtual {v3, v4}, Lcom/localytics/android/MarketingHandler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2311
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 2306
    :catch_0
    move-exception v0

    .line 2308
    const-string v1, "MarketingCallable ON_IN_APP_TEST_SHOW_CAMPAIGN exception"

    invoke-static {v1, v0}, Lcom/localytics/android/Localytics$Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
