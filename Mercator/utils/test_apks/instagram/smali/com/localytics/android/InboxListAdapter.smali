.class public Lcom/localytics/android/InboxListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "InboxListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/localytics/android/InboxListAdapter$Listener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/localytics/android/InboxCampaign;",
        ">;"
    }
.end annotation


# instance fields
.field private mDownloadsThumbnails:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 51
    const/4 v0, 0x0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/localytics/android/InboxListAdapter;->mDownloadsThumbnails:Z

    .line 52
    return-void
.end method

.method static synthetic access$000(Lcom/localytics/android/InboxListAdapter;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/localytics/android/InboxListAdapter;->setCampaigns(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$100(Lcom/localytics/android/InboxListAdapter;Lcom/localytics/android/InboxListAdapter$Listener;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/localytics/android/InboxListAdapter;->refreshData(Lcom/localytics/android/InboxListAdapter$Listener;)V

    return-void
.end method

.method static synthetic access$200(Lcom/localytics/android/InboxListAdapter;Ljava/util/List;Lcom/localytics/android/InboxListAdapter$Listener;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/localytics/android/InboxListAdapter;->inboxRefreshed(Ljava/util/List;Lcom/localytics/android/InboxListAdapter$Listener;)V

    return-void
.end method

.method private inboxRefreshed(Ljava/util/List;Lcom/localytics/android/InboxListAdapter$Listener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/localytics/android/InboxCampaign;",
            ">;",
            "Lcom/localytics/android/InboxListAdapter$Listener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 137
    invoke-direct {p0, p1}, Lcom/localytics/android/InboxListAdapter;->setCampaigns(Ljava/util/List;)V

    .line 139
    iget-boolean v0, p0, Lcom/localytics/android/InboxListAdapter;->mDownloadsThumbnails:Z

    if-eqz v0, :cond_0

    .line 141
    invoke-static {p1}, Lcom/localytics/android/Localytics;->downloadInboxThumbnails(Ljava/util/List;)V

    .line 144
    :cond_0
    if-eqz p2, :cond_1

    .line 146
    invoke-interface {p2}, Lcom/localytics/android/InboxListAdapter$Listener;->didFinishLoadingCampaigns()V

    .line 148
    :cond_1
    return-void
.end method

.method private refreshData(Lcom/localytics/android/InboxListAdapter$Listener;)V
    .locals 1

    .prologue
    .line 125
    new-instance v0, Lcom/localytics/android/InboxListAdapter$2;

    invoke-direct {v0, p0, p1}, Lcom/localytics/android/InboxListAdapter$2;-><init>(Lcom/localytics/android/InboxListAdapter;Lcom/localytics/android/InboxListAdapter$Listener;)V

    invoke-static {v0}, Lcom/localytics/android/Localytics;->refreshInboxCampaigns(Lcom/localytics/android/InboxRefreshListener;)V

    .line 133
    return-void
.end method

.method private setCampaigns(Ljava/util/List;)V
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
    .line 114
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/localytics/android/InboxListAdapter;->setNotifyOnChange(Z)V

    .line 115
    invoke-virtual {p0}, Lcom/localytics/android/InboxListAdapter;->clear()V

    .line 116
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/localytics/android/InboxCampaign;

    .line 118
    invoke-virtual {p0, v0}, Lcom/localytics/android/InboxListAdapter;->add(Ljava/lang/Object;)V

    goto :goto_0

    .line 120
    :cond_0
    invoke-virtual {p0}, Lcom/localytics/android/InboxListAdapter;->notifyDataSetChanged()V

    .line 121
    return-void
.end method


# virtual methods
.method public getData(Lcom/localytics/android/InboxListAdapter$Listener;)V
    .locals 2

    .prologue
    .line 76
    new-instance v0, Lcom/localytics/android/InboxListAdapter$1;

    invoke-direct {v0, p0, p1}, Lcom/localytics/android/InboxListAdapter$1;-><init>(Lcom/localytics/android/InboxListAdapter;Lcom/localytics/android/InboxListAdapter$Listener;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/localytics/android/InboxListAdapter$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 98
    return-void
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 57
    if-nez p2, :cond_0

    .line 59
    new-instance v0, Lcom/localytics/android/InboxListItem;

    invoke-virtual {p0}, Lcom/localytics/android/InboxListAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/localytics/android/InboxListItem;-><init>(Landroid/content/Context;)V

    .line 62
    :goto_0
    check-cast v0, Lcom/localytics/android/InboxListItem;

    .line 63
    invoke-virtual {p0, p1}, Lcom/localytics/android/InboxListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/localytics/android/InboxCampaign;

    iget-boolean v2, p0, Lcom/localytics/android/InboxListAdapter;->mDownloadsThumbnails:Z

    invoke-virtual {v0, v1, v2}, Lcom/localytics/android/InboxListItem;->populateViews(Lcom/localytics/android/InboxCampaign;Z)V

    .line 65
    return-object v0

    :cond_0
    move-object v0, p2

    goto :goto_0
.end method

.method public setDownloadsThumbnails(Z)V
    .locals 0

    .prologue
    .line 109
    iput-boolean p1, p0, Lcom/localytics/android/InboxListAdapter;->mDownloadsThumbnails:Z

    .line 110
    return-void
.end method
