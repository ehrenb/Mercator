.class Lcom/localytics/android/MarketingHandler$5;
.super Ljava/lang/Object;
.source "MarketingHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/localytics/android/MarketingHandler;->handleMessageExtended(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/localytics/android/MarketingHandler;


# direct methods
.method constructor <init>(Lcom/localytics/android/MarketingHandler;)V
    .locals 0

    .prologue
    .line 528
    iput-object p1, p0, Lcom/localytics/android/MarketingHandler$5;->this$0:Lcom/localytics/android/MarketingHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 534
    :try_start_0
    iget-object v0, p0, Lcom/localytics/android/MarketingHandler$5;->this$0:Lcom/localytics/android/MarketingHandler;

    iget-object v0, v0, Lcom/localytics/android/MarketingHandler;->mInAppManager:Lcom/localytics/android/InAppManager;

    invoke-virtual {v0}, Lcom/localytics/android/InAppManager;->showInAppTest()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 540
    :goto_0
    return-void

    .line 536
    :catch_0
    move-exception v0

    .line 538
    const-string v1, "Exception handling MESSAGE_SHOW_IN_APP_MESSAGES_TEST"

    invoke-static {v1, v0}, Lcom/localytics/android/Localytics$Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
