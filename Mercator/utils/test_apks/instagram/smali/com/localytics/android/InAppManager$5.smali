.class Lcom/localytics/android/InAppManager$5;
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

.field final synthetic val$listView:Lcom/localytics/android/TestModeListView;


# direct methods
.method constructor <init>(Lcom/localytics/android/InAppManager;Lcom/localytics/android/InAppMessagesAdapter;Lcom/localytics/android/TestModeListView;)V
    .locals 0

    .prologue
    .line 2015
    iput-object p1, p0, Lcom/localytics/android/InAppManager$5;->this$0:Lcom/localytics/android/InAppManager;

    iput-object p2, p0, Lcom/localytics/android/InAppManager$5;->val$adapter:Lcom/localytics/android/InAppMessagesAdapter;

    iput-object p3, p0, Lcom/localytics/android/InAppManager$5;->val$listView:Lcom/localytics/android/TestModeListView;

    invoke-direct {p0}, Lcom/localytics/android/MarketingCallable;-><init>()V

    return-void
.end method


# virtual methods
.method call([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 2021
    :try_start_0
    iget-object v0, p0, Lcom/localytics/android/InAppManager$5;->val$adapter:Lcom/localytics/android/InAppMessagesAdapter;

    invoke-virtual {v0}, Lcom/localytics/android/InAppMessagesAdapter;->updateDataSet()Z

    .line 2022
    iget-object v0, p0, Lcom/localytics/android/InAppManager$5;->val$listView:Lcom/localytics/android/TestModeListView;

    iget-object v1, p0, Lcom/localytics/android/InAppManager$5;->this$0:Lcom/localytics/android/InAppManager;

    # getter for: Lcom/localytics/android/InAppManager;->mFragmentManager:Landroid/app/FragmentManager;
    invoke-static {v1}, Lcom/localytics/android/InAppManager;->access$100(Lcom/localytics/android/InAppManager;)Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "marketing_test_mode_list"

    invoke-virtual {v0, v1, v2}, Lcom/localytics/android/TestModeListView;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 2023
    iget-object v0, p0, Lcom/localytics/android/InAppManager$5;->this$0:Lcom/localytics/android/InAppManager;

    # getter for: Lcom/localytics/android/InAppManager;->mFragmentManager:Landroid/app/FragmentManager;
    invoke-static {v0}, Lcom/localytics/android/InAppManager;->access$100(Lcom/localytics/android/InAppManager;)Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->executePendingTransactions()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2029
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 2025
    :catch_0
    move-exception v0

    .line 2027
    const-string v1, "MarketingCallable ON_IN_APP_TEST_POPUP_CAMPAIGN_LIST exception"

    invoke-static {v1, v0}, Lcom/localytics/android/Localytics$Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
