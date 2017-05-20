.class final Lcom/localytics/android/InAppMessagesAdapter;
.super Landroid/widget/BaseAdapter;
.source "InAppMessagesAdapter.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mInAppManager:Lcom/localytics/android/InAppManager;

.field private final mInAppMessages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/localytics/android/MarketingMessage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/localytics/android/InAppManager;)V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/localytics/android/InAppMessagesAdapter;->mContext:Landroid/content/Context;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/localytics/android/InAppMessagesAdapter;->mInAppMessages:Ljava/util/List;

    .line 34
    iput-object p2, p0, Lcom/localytics/android/InAppMessagesAdapter;->mInAppManager:Lcom/localytics/android/InAppManager;

    .line 35
    return-void
.end method

.method static synthetic access$000(Lcom/localytics/android/InAppMessagesAdapter;)Lcom/localytics/android/InAppManager;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/localytics/android/InAppMessagesAdapter;->mInAppManager:Lcom/localytics/android/InAppManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/localytics/android/InAppMessagesAdapter;)Ljava/util/List;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/localytics/android/InAppMessagesAdapter;->mInAppMessages:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/localytics/android/InAppMessagesAdapter;->mInAppMessages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 24
    invoke-virtual {p0, p1}, Lcom/localytics/android/InAppMessagesAdapter;->getItem(I)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 93
    iget-object v0, p0, Lcom/localytics/android/InAppMessagesAdapter;->mInAppMessages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 99
    iget-object v0, p0, Lcom/localytics/android/InAppMessagesAdapter;->mInAppMessages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/localytics/android/MarketingMessage;

    const-string v1, "campaign_id"

    invoke-virtual {v0, v1}, Lcom/localytics/android/MarketingMessage;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 100
    int-to-long v0, v0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v3, -0x1

    const/4 v2, -0x2

    const/high16 v5, -0x1000000

    const/4 v4, 0x1

    .line 106
    .line 108
    if-nez p2, :cond_0

    .line 111
    new-instance p2, Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/localytics/android/InAppMessagesAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 112
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {v0, v3, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 113
    invoke-virtual {p2, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 116
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/localytics/android/InAppMessagesAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 117
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 118
    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 119
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 120
    iget-object v1, p0, Lcom/localytics/android/InAppMessagesAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x41000000    # 8.0f

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    .line 121
    shl-int/lit8 v2, v1, 0x1

    shl-int/lit8 v3, v1, 0x1

    invoke-virtual {v0, v2, v1, v3, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 122
    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 125
    new-instance v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/localytics/android/InAppMessagesAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 126
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setId(I)V

    .line 127
    const/high16 v2, 0x41800000    # 16.0f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 128
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 129
    new-instance v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/localytics/android/InAppMessagesAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 130
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setId(I)V

    .line 131
    const/high16 v3, 0x41c00000    # 24.0f

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 132
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 135
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 136
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 143
    :cond_0
    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 144
    const/4 v1, 0x2

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 146
    const-string v2, "Campaign ID: %d"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/localytics/android/InAppMessagesAdapter;->getItemId(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    invoke-virtual {p0, p1}, Lcom/localytics/android/InAppMessagesAdapter;->getItem(I)Ljava/util/Map;

    move-result-object v0

    const-string v2, "rule_name_non_unique"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    return-object p2
.end method

.method updateDataSet()Z
    .locals 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/localytics/android/InAppMessagesAdapter;->mInAppMessages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 41
    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v1, Lcom/localytics/android/InAppMessagesAdapter$1;

    invoke-direct {v1, p0}, Lcom/localytics/android/InAppMessagesAdapter$1;-><init>(Lcom/localytics/android/InAppMessagesAdapter;)V

    invoke-direct {v0, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 59
    new-instance v1, Lcom/localytics/android/InAppMessagesAdapter$2;

    invoke-direct {v1, p0, v0}, Lcom/localytics/android/InAppMessagesAdapter$2;-><init>(Lcom/localytics/android/InAppMessagesAdapter;Ljava/util/concurrent/FutureTask;)V

    invoke-virtual {v1}, Lcom/localytics/android/InAppMessagesAdapter$2;->start()V

    .line 76
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 80
    :goto_0
    return v0

    .line 78
    :catch_0
    move-exception v0

    .line 80
    const/4 v0, 0x0

    goto :goto_0
.end method
