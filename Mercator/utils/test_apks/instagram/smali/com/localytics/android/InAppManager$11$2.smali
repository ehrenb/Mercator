.class Lcom/localytics/android/InAppManager$11$2;
.super Ljava/lang/Object;
.source "InAppManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/localytics/android/InAppManager$11;->call([Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/localytics/android/InAppManager$11;

.field final synthetic val$creativeExist:Z

.field final synthetic val$mainThreadHandler:Landroid/os/Handler;

.field final synthetic val$marketingMessage:Lcom/localytics/android/MarketingMessage;


# direct methods
.method constructor <init>(Lcom/localytics/android/InAppManager$11;Lcom/localytics/android/MarketingMessage;ZLandroid/os/Handler;)V
    .locals 0

    .prologue
    .line 2245
    iput-object p1, p0, Lcom/localytics/android/InAppManager$11$2;->this$1:Lcom/localytics/android/InAppManager$11;

    iput-object p2, p0, Lcom/localytics/android/InAppManager$11$2;->val$marketingMessage:Lcom/localytics/android/MarketingMessage;

    iput-boolean p3, p0, Lcom/localytics/android/InAppManager$11$2;->val$creativeExist:Z

    iput-object p4, p0, Lcom/localytics/android/InAppManager$11$2;->val$mainThreadHandler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 2249
    new-instance v0, Lcom/localytics/android/InAppManager$11$2$1;

    invoke-direct {v0, p0}, Lcom/localytics/android/InAppManager$11$2$1;-><init>(Lcom/localytics/android/InAppManager$11$2;)V

    .line 2281
    :try_start_0
    iget-boolean v1, p0, Lcom/localytics/android/InAppManager$11$2;->val$creativeExist:Z

    if-eqz v1, :cond_0

    .line 2283
    iget-object v1, p0, Lcom/localytics/android/InAppManager$11$2;->val$mainThreadHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2303
    :goto_0
    return-void

    .line 2287
    :cond_0
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 2288
    iget-object v2, p0, Lcom/localytics/android/InAppManager$11$2;->val$marketingMessage:Lcom/localytics/android/MarketingMessage;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2289
    iget-object v2, p0, Lcom/localytics/android/InAppManager$11$2;->this$1:Lcom/localytics/android/InAppManager$11;

    iget-object v2, v2, Lcom/localytics/android/InAppManager$11;->this$0:Lcom/localytics/android/InAppManager;

    iget-object v2, v2, Lcom/localytics/android/InAppManager;->mCreativeManager:Lcom/localytics/android/CreativeManager;

    new-instance v3, Lcom/localytics/android/InAppManager$11$2$2;

    invoke-direct {v3, p0, v0}, Lcom/localytics/android/InAppManager$11$2$2;-><init>(Lcom/localytics/android/InAppManager$11$2;Ljava/lang/Runnable;)V

    invoke-virtual {v2, v1, v3}, Lcom/localytics/android/CreativeManager;->priorityDownloadCreatives(Ljava/util/List;Lcom/localytics/android/CreativeManager$FirstDownloadedCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2299
    :catch_0
    move-exception v0

    .line 2301
    const-string v1, "MarketingCallable ON_IN_APP_TEST_SHOW_CAMPAIGN exception"

    invoke-static {v1, v0}, Lcom/localytics/android/Localytics$Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
