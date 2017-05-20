.class Lcom/localytics/android/InAppManager$7;
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

.field final synthetic val$adapter:Lcom/localytics/android/InAppMessagesAdapter;


# direct methods
.method constructor <init>(Lcom/localytics/android/InAppManager;Lcom/localytics/android/InAppMessagesAdapter;)V
    .locals 0

    .prologue
    .line 2068
    iput-object p1, p0, Lcom/localytics/android/InAppManager$7;->this$0:Lcom/localytics/android/InAppManager;

    iput-object p2, p0, Lcom/localytics/android/InAppManager$7;->val$adapter:Lcom/localytics/android/InAppMessagesAdapter;

    invoke-direct {p0}, Lcom/localytics/android/MarketingCallable;-><init>()V

    return-void
.end method


# virtual methods
.method call([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 2074
    :try_start_0
    iget-object v0, p0, Lcom/localytics/android/InAppManager$7;->this$0:Lcom/localytics/android/InAppManager;

    iget-object v0, v0, Lcom/localytics/android/InAppManager;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    const-string v1, "Test Mode Update Data"

    invoke-interface {v0, v1}, Lcom/localytics/android/LocalyticsDao;->tagEvent(Ljava/lang/String;)V

    .line 2075
    iget-object v0, p0, Lcom/localytics/android/InAppManager$7;->this$0:Lcom/localytics/android/InAppManager;

    iget-object v1, p0, Lcom/localytics/android/InAppManager$7;->val$adapter:Lcom/localytics/android/InAppMessagesAdapter;

    # setter for: Lcom/localytics/android/InAppManager;->mTestCampaignsListAdapter:Lcom/localytics/android/InAppMessagesAdapter;
    invoke-static {v0, v1}, Lcom/localytics/android/InAppManager;->access$402(Lcom/localytics/android/InAppManager;Lcom/localytics/android/InAppMessagesAdapter;)Lcom/localytics/android/InAppMessagesAdapter;

    .line 2076
    iget-object v0, p0, Lcom/localytics/android/InAppManager$7;->this$0:Lcom/localytics/android/InAppManager;

    # getter for: Lcom/localytics/android/InAppManager;->mMarketingHandler:Lcom/localytics/android/MarketingHandler;
    invoke-static {v0}, Lcom/localytics/android/InAppManager;->access$000(Lcom/localytics/android/InAppManager;)Lcom/localytics/android/MarketingHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/localytics/android/MarketingHandler;->upload()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2082
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 2078
    :catch_0
    move-exception v0

    .line 2080
    const-string v1, "MarketingCallable ON_IN_APP_TEST_REFRESH_CAMPAIGN_LIST exception"

    invoke-static {v1, v0}, Lcom/localytics/android/Localytics$Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
