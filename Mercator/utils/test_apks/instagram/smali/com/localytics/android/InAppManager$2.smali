.class Lcom/localytics/android/InAppManager$2;
.super Ljava/lang/Object;
.source "InAppManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/localytics/android/InAppManager;->_handleTestCampaigns()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/localytics/android/InAppManager;

.field final synthetic val$adapter:Lcom/localytics/android/InAppMessagesAdapter;


# direct methods
.method constructor <init>(Lcom/localytics/android/InAppManager;Lcom/localytics/android/InAppMessagesAdapter;)V
    .locals 0

    .prologue
    .line 207
    iput-object p1, p0, Lcom/localytics/android/InAppManager$2;->this$0:Lcom/localytics/android/InAppManager;

    iput-object p2, p0, Lcom/localytics/android/InAppManager$2;->val$adapter:Lcom/localytics/android/InAppMessagesAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 212
    :try_start_0
    iget-object v0, p0, Lcom/localytics/android/InAppManager$2;->val$adapter:Lcom/localytics/android/InAppMessagesAdapter;

    invoke-virtual {v0}, Lcom/localytics/android/InAppMessagesAdapter;->updateDataSet()Z

    .line 213
    iget-object v0, p0, Lcom/localytics/android/InAppManager$2;->val$adapter:Lcom/localytics/android/InAppMessagesAdapter;

    invoke-virtual {v0}, Lcom/localytics/android/InAppMessagesAdapter;->notifyDataSetChanged()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    :goto_0
    return-void

    .line 215
    :catch_0
    move-exception v0

    .line 217
    const-string v1, "Exception while handling test mode in-apps"

    invoke-static {v1, v0}, Lcom/localytics/android/Localytics$Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
