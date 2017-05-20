.class Lcom/localytics/android/InboxListAdapter$1;
.super Landroid/os/AsyncTask;
.source "InboxListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/localytics/android/InboxListAdapter;->getData(Lcom/localytics/android/InboxListAdapter$Listener;)V
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
        "Ljava/util/List",
        "<",
        "Lcom/localytics/android/InboxCampaign;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/localytics/android/InboxListAdapter;

.field final synthetic val$listener:Lcom/localytics/android/InboxListAdapter$Listener;


# direct methods
.method constructor <init>(Lcom/localytics/android/InboxListAdapter;Lcom/localytics/android/InboxListAdapter$Listener;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/localytics/android/InboxListAdapter$1;->this$0:Lcom/localytics/android/InboxListAdapter;

    iput-object p2, p0, Lcom/localytics/android/InboxListAdapter$1;->val$listener:Lcom/localytics/android/InboxListAdapter$Listener;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 77
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/localytics/android/InboxListAdapter$1;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/localytics/android/InboxCampaign;",
            ">;"
        }
    .end annotation

    .prologue
    .line 81
    invoke-static {}, Lcom/localytics/android/Localytics;->getInboxCampaigns()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 77
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/localytics/android/InboxListAdapter$1;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/localytics/android/InboxCampaign;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 89
    :try_start_0
    iget-object v0, p0, Lcom/localytics/android/InboxListAdapter$1;->this$0:Lcom/localytics/android/InboxListAdapter;

    # invokes: Lcom/localytics/android/InboxListAdapter;->setCampaigns(Ljava/util/List;)V
    invoke-static {v0, p1}, Lcom/localytics/android/InboxListAdapter;->access$000(Lcom/localytics/android/InboxListAdapter;Ljava/util/List;)V

    .line 90
    iget-object v0, p0, Lcom/localytics/android/InboxListAdapter$1;->this$0:Lcom/localytics/android/InboxListAdapter;

    iget-object v1, p0, Lcom/localytics/android/InboxListAdapter$1;->val$listener:Lcom/localytics/android/InboxListAdapter$Listener;

    # invokes: Lcom/localytics/android/InboxListAdapter;->refreshData(Lcom/localytics/android/InboxListAdapter$Listener;)V
    invoke-static {v0, v1}, Lcom/localytics/android/InboxListAdapter;->access$100(Lcom/localytics/android/InboxListAdapter;Lcom/localytics/android/InboxListAdapter$Listener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    :goto_0
    return-void

    .line 92
    :catch_0
    move-exception v0

    .line 94
    const-string v1, "Exception while getting inbox data"

    invoke-static {v1, v0}, Lcom/localytics/android/Localytics$Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
