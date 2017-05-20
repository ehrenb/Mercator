.class public Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialStoreLatestAppsWidget;
.super Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialCardWidget;
.source "SocialStoreLatestAppsWidget.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialCardWidget",
        "<",
        "Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialStoreLatestAppsDisplayable;",
        ">;"
    }
.end annotation


# static fields
.field private static final CARD_TYPE_NAME:Ljava/lang/String; = "SOCIAL_LATEST_APPS"


# instance fields
.field private apps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private appsContaner:Landroid/widget/LinearLayout;

.field private appsPackages:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private cardView:Landroid/support/v7/widget/CardView;

.field private followStore:Landroid/widget/Button;

.field private final inflater:Landroid/view/LayoutInflater;

.field private sharedStoreAppsNumber:Landroid/widget/TextView;

.field private sharedStoreAvatar:Landroid/widget/ImageView;

.field private sharedStoreName:Landroid/widget/TextView;

.field private sharedStoreSubscribersNumber:Landroid/widget/TextView;

.field private store:Landroid/view/View;

.field private storeAvatar:Landroid/widget/ImageView;

.field private storeName:Landroid/widget/TextView;

.field private storeRepository:Lcm/aptoide/pt/v8engine/repository/StoreRepository;

.field private userAvatar:Landroid/widget/ImageView;

.field private userName:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialCardWidget;-><init>(Landroid/view/View;)V

    .line 61
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialStoreLatestAppsWidget;->inflater:Landroid/view/LayoutInflater;

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialStoreLatestAppsWidget;->apps:Ljava/util/Map;

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialStoreLatestAppsWidget;->appsPackages:Ljava/util/Map;

    .line 64
    invoke-static {}, Lcm/aptoide/pt/v8engine/repository/RepositoryFactory;->getStoreRepository()Lcm/aptoide/pt/v8engine/repository/StoreRepository;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialStoreLatestAppsWidget;->storeRepository:Lcm/aptoide/pt/v8engine/repository/StoreRepository;

    .line 65
    return-void
.end method

.method private handleIsSubscribed(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 212
    if-eqz p1, :cond_0

    .line 214
    invoke-static {p0, p2, p3}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialStoreLatestAppsWidget$$Lambda$6;->lambdaFactory$(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialStoreLatestAppsWidget;Ljava/lang/String;Ljava/lang/String;)Lrx/b/b;

    move-result-object v0

    .line 218
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialStoreLatestAppsWidget;->followStore:Landroid/widget/Button;

    sget v2, Lcm/aptoide/pt/v8engine/R$string;->followed:I

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 219
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialStoreLatestAppsWidget;->compositeSubscription:Lrx/j/b;

    iget-object v2, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialStoreLatestAppsWidget;->followStore:Landroid/widget/Button;

    invoke-static {v2}, Lcom/c/a/b/c;->a(Landroid/view/View;)Lrx/d;

    move-result-object v2

    invoke-virtual {v2, v0}, Lrx/d;->d(Lrx/b/b;)Lrx/k;

    move-result-object v0

    invoke-virtual {v1, v0}, Lrx/j/b;->a(Lrx/k;)V

    .line 233
    :goto_0
    return-void

    .line 222
    :cond_0
    invoke-static {p0, p2}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialStoreLatestAppsWidget$$Lambda$7;->lambdaFactory$(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialStoreLatestAppsWidget;Ljava/lang/String;)Lrx/b/b;

    move-result-object v0

    .line 230
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialStoreLatestAppsWidget;->followStore:Landroid/widget/Button;

    sget v2, Lcm/aptoide/pt/v8engine/R$string;->appview_follow_store_button_text:I

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 231
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialStoreLatestAppsWidget;->compositeSubscription:Lrx/j/b;

    iget-object v2, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialStoreLatestAppsWidget;->followStore:Landroid/widget/Button;

    invoke-static {v2}, Lcom/c/a/b/c;->a(Landroid/view/View;)Lrx/d;

    move-result-object v2

    invoke-virtual {v2, v0}, Lrx/d;->d(Lrx/b/b;)Lrx/k;

    move-result-object v0

    invoke-virtual {v1, v0}, Lrx/j/b;->a(Lrx/k;)V

    goto :goto_0
.end method

.method static synthetic lambda$bindView$4(Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 203
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 204
    return-void
.end method

.method static synthetic lambda$null$7(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 227
    invoke-static {}, Lcm/aptoide/pt/crashreports/CrashReport;->getInstance()Lcm/aptoide/pt/crashreports/CrashReport;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcm/aptoide/pt/crashreports/CrashReport;->log(Ljava/lang/Throwable;)V

    .line 228
    return-void
.end method


# virtual methods
.method protected assignViews(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 68
    invoke-super {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialCardWidget;->assignViews(Landroid/view/View;)V

    .line 69
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->social_header:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialStoreLatestAppsWidget;->store:Landroid/view/View;

    .line 70
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->card_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialStoreLatestAppsWidget;->storeName:Landroid/widget/TextView;

    .line 71
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->card_subtitle:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialStoreLatestAppsWidget;->userName:Landroid/widget/TextView;

    .line 72
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->card_image:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialStoreLatestAppsWidget;->storeAvatar:Landroid/widget/ImageView;

    .line 73
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->card_user_avatar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialStoreLatestAppsWidget;->userAvatar:Landroid/widget/ImageView;

    .line 74
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->store_name:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialStoreLatestAppsWidget;->sharedStoreName:Landroid/widget/TextView;

    .line 75
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->social_shared_store_avatar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialStoreLatestAppsWidget;->sharedStoreAvatar:Landroid/widget/ImageView;

    .line 76
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->displayable_social_timeline_store_latest_apps_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialStoreLatestAppsWidget;->appsContaner:Landroid/widget/LinearLayout;

    .line 78
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->card:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/CardView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialStoreLatestAppsWidget;->cardView:Landroid/support/v7/widget/CardView;

    .line 79
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->follow_btn:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialStoreLatestAppsWidget;->followStore:Landroid/widget/Button;

    .line 80
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->number_of_followers:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialStoreLatestAppsWidget;->sharedStoreSubscribersNumber:Landroid/widget/TextView;

    .line 81
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->number_of_apps:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialStoreLatestAppsWidget;->sharedStoreAppsNumber:Landroid/widget/TextView;

    .line 83
    return-void
.end method

.method public bridge synthetic bindView(Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;)V
    .locals 0

    .prologue
    .line 37
    check-cast p1, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialStoreLatestAppsDisplayable;

    invoke-virtual {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialStoreLatestAppsWidget;->bindView(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialStoreLatestAppsDisplayable;)V

    return-void
.end method

.method public bridge synthetic bindView(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/CardDisplayable;)V
    .locals 0

    .prologue
    .line 37
    check-cast p1, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialStoreLatestAppsDisplayable;

    invoke-virtual {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialStoreLatestAppsWidget;->bindView(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialStoreLatestAppsDisplayable;)V

    return-void
.end method

.method public bridge synthetic bindView(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialCardDisplayable;)V
    .locals 0

    .prologue
    .line 37
    check-cast p1, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialStoreLatestAppsDisplayable;

    invoke-virtual {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialStoreLatestAppsWidget;->bindView(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialStoreLatestAppsDisplayable;)V

    return-void
.end method

.method public bindView(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialStoreLatestAppsDisplayable;)V
    .locals 9

    .prologue
    const/16 v4, 0x8

    const/4 v8, 0x0

    .line 86
    invoke-super {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialCardWidget;->bindView(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialCardDisplayable;)V

    .line 87
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialStoreLatestAppsWidget;->storeName:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialStoreLatestAppsDisplayable;->getStoreName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialStoreLatestAppsWidget;->userName:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialStoreLatestAppsDisplayable;->getUser()Lcm/aptoide/pt/model/v7/Comment$User;

    move-result-object v1

    invoke-virtual {v1}, Lcm/aptoide/pt/model/v7/Comment$User;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialStoreLatestAppsWidget;->cardView:Landroid/support/v7/widget/CardView;

    invoke-virtual {p0, p1, v0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialStoreLatestAppsWidget;->setCardViewMargin(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/CardDisplayable;Landroid/support/v7/widget/CardView;)V

    .line 90
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialStoreLatestAppsWidget;->getContext()Landroid/support/v4/app/u;

    move-result-object v2

    .line 91
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialStoreLatestAppsDisplayable;->getStore()Lcm/aptoide/pt/model/v7/store/Store;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 92
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialStoreLatestAppsWidget;->storeName:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 93
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialStoreLatestAppsWidget;->storeName:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialStoreLatestAppsDisplayable;->getStore()Lcm/aptoide/pt/model/v7/store/Store;

    move-result-object v1

    invoke-virtual {v1}, Lcm/aptoide/pt/model/v7/store/Store;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialStoreLatestAppsWidget;->storeAvatar:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 95
    invoke-static {v2}, Lcm/aptoide/pt/imageloader/ImageLoader;->with(Landroid/content/Context;)Lcm/aptoide/pt/imageloader/ImageLoader;

    move-result-object v0

    .line 96
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialStoreLatestAppsDisplayable;->getStore()Lcm/aptoide/pt/model/v7/store/Store;

    move-result-object v1

    invoke-virtual {v1}, Lcm/aptoide/pt/model/v7/store/Store;->getAvatar()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialStoreLatestAppsWidget;->storeAvatar:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v3}, Lcm/aptoide/pt/imageloader/ImageLoader;->loadWithShadowCircleTransform(Ljava/lang/String;Landroid/widget/ImageView;)Lcom/bumptech/glide/g/b/k;

    .line 97
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialStoreLatestAppsDisplayable;->getUser()Lcm/aptoide/pt/model/v7/Comment$User;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 98
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialStoreLatestAppsWidget;->userName:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 99
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialStoreLatestAppsWidget;->userName:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialStoreLatestAppsDisplayable;->getUser()Lcm/aptoide/pt/model/v7/Comment$User;

    move-result-object v1

    invoke-virtual {v1}, Lcm/aptoide/pt/model/v7/Comment$User;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialStoreLatestAppsWidget;->userAvatar:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 101
    invoke-static {v2}, Lcm/aptoide/pt/imageloader/ImageLoader;->with(Landroid/content/Context;)Lcm/aptoide/pt/imageloader/ImageLoader;

    move-result-object v0

    .line 102
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialStoreLatestAppsDisplayable;->getUser()Lcm/aptoide/pt/model/v7/Comment$User;

    move-result-object v1

    invoke-virtual {v1}, Lcm/aptoide/pt/model/v7/Comment$User;->getAvatar()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialStoreLatestAppsWidget;->userAvatar:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v3}, Lcm/aptoide/pt/imageloader/ImageLoader;->loadWithShadowCircleTransform(Ljava/lang/String;Landroid/widget/ImageView;)Lcom/bumptech/glide/g/b/k;

    .line 119
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialStoreLatestAppsWidget;->getContext()Landroid/support/v4/app/u;

    move-result-object v0

    invoke-static {v0}, Lcm/aptoide/pt/imageloader/ImageLoader;->with(Landroid/content/Context;)Lcm/aptoide/pt/imageloader/ImageLoader;

    move-result-object v0

    .line 120
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialStoreLatestAppsDisplayable;->getSharedStore()Lcm/aptoide/pt/model/v7/store/Store;

    move-result-object v1

    invoke-virtual {v1}, Lcm/aptoide/pt/model/v7/store/Store;->getAvatar()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialStoreLatestAppsWidget;->sharedStoreAvatar:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v3}, Lcm/aptoide/pt/imageloader/ImageLoader;->loadWithShadowCircleTransform(Ljava/lang/String;Landroid/widget/ImageView;)Lcom/bumptech/glide/g/b/k;

    .line 121
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialStoreLatestAppsWidget;->sharedStoreName:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialStoreLatestAppsDisplayable;->getSharedStore()Lcm/aptoide/pt/model/v7/store/Store;

    move-result-object v1

    invoke-virtual {v1}, Lcm/aptoide/pt/model/v7/store/Store;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialStoreLatestAppsWidget;->appsContaner:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 124
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialStoreLatestAppsWidget;->apps:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 127
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialStoreLatestAppsDisplayable;->getLatestApps()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialStoreLatestAppsDisplayable$LatestApp;

    .line 128
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialStoreLatestAppsWidget;->inflater:Landroid/view/LayoutInflater;

    sget v4, Lcm/aptoide/pt/v8engine/R$layout;->social_timeline_latest_app:I

    iget-object v5, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialStoreLatestAppsWidget;->appsContaner:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4, v5, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 129
    sget v1, Lcm/aptoide/pt/v8engine/R$id;->social_timeline_latest_app:I

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 130
    invoke-static {v2}, Lcm/aptoide/pt/imageloader/ImageLoader;->with(Landroid/content/Context;)Lcm/aptoide/pt/imageloader/ImageLoader;

    move-result-object v5

    invoke-virtual {v0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialStoreLatestAppsDisplayable$LatestApp;->getIconUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v1}, Lcm/aptoide/pt/imageloader/ImageLoader;->load(Ljava/lang/String;Landroid/widget/ImageView;)Lcom/bumptech/glide/g/b/k;

    .line 131
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialStoreLatestAppsWidget;->appsContaner:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 132
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialStoreLatestAppsWidget;->apps:Ljava/util/Map;

    invoke-virtual {v0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialStoreLatestAppsDisplayable$LatestApp;->getAppId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialStoreLatestAppsWidget;->appsPackages:Ljava/util/Map;

    invoke-virtual {v0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialStoreLatestAppsDisplayable$LatestApp;->getAppId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialStoreLatestAppsDisplayable$LatestApp;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 104
    :cond_1
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialStoreLatestAppsWidget;->userName:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 105
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialStoreLatestAppsWidget;->userAvatar:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 108
    :cond_2
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialStoreLatestAppsWidget;->userName:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 109
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialStoreLatestAppsWidget;->userAvatar:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 110
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialStoreLatestAppsDisplayable;->getUser()Lcm/aptoide/pt/model/v7/Comment$User;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialStoreLatestAppsWidget;->storeName:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 112
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialStoreLatestAppsWidget;->storeName:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialStoreLatestAppsDisplayable;->getUser()Lcm/aptoide/pt/model/v7/Comment$User;

    move-result-object v1

    invoke-virtual {v1}, Lcm/aptoide/pt/model/v7/Comment$User;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialStoreLatestAppsWidget;->storeAvatar:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 114
    invoke-static {v2}, Lcm/aptoide/pt/imageloader/ImageLoader;->with(Landroid/content/Context;)Lcm/aptoide/pt/imageloader/ImageLoader;

    move-result-object v0

    .line 115
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialStoreLatestAppsDisplayable;->getUser()Lcm/aptoide/pt/model/v7/Comment$User;

    move-result-object v1

    invoke-virtual {v1}, Lcm/aptoide/pt/model/v7/Comment$User;->getAvatar()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialStoreLatestAppsWidget;->storeAvatar:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v3}, Lcm/aptoide/pt/imageloader/ImageLoader;->loadWithShadowCircleTransform(Ljava/lang/String;Landroid/widget/ImageView;)Lcom/bumptech/glide/g/b/k;

    goto/16 :goto_0

    .line 136
    :cond_3
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialStoreLatestAppsWidget;->apps:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 137
    iget-object v3, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialStoreLatestAppsWidget;->compositeSubscription:Lrx/j/b;

    invoke-static {v0}, Lcom/c/a/b/c;->a(Landroid/view/View;)Lrx/d;

    move-result-object v4

    invoke-static {p0, p1, v0, v2}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialStoreLatestAppsWidget$$Lambda$1;->lambdaFactory$(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialStoreLatestAppsWidget;Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialStoreLatestAppsDisplayable;Landroid/view/View;Landroid/support/v4/app/u;)Lrx/b/b;

    move-result-object v0

    invoke-virtual {v4, v0}, Lrx/d;->d(Lrx/b/b;)Lrx/k;

    move-result-object v0

    invoke-virtual {v3, v0}, Lrx/j/b;->a(Lrx/k;)V

    goto :goto_2

    .line 156
    :cond_4
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialStoreLatestAppsWidget;->compositeSubscription:Lrx/j/b;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialStoreLatestAppsWidget;->store:Landroid/view/View;

    invoke-static {v1}, Lcom/c/a/b/c;->a(Landroid/view/View;)Lrx/d;

    move-result-object v1

    invoke-static {p0, p1, v2}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialStoreLatestAppsWidget$$Lambda$2;->lambdaFactory$(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialStoreLatestAppsWidget;Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialStoreLatestAppsDisplayable;Landroid/support/v4/app/u;)Lrx/b/b;

    move-result-object v3

    invoke-virtual {v1, v3}, Lrx/d;->d(Lrx/b/b;)Lrx/k;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/j/b;->a(Lrx/k;)V

    .line 172
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialStoreLatestAppsWidget;->compositeSubscription:Lrx/j/b;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialStoreLatestAppsWidget;->sharedStoreAvatar:Landroid/widget/ImageView;

    invoke-static {v1}, Lcom/c/a/b/c;->a(Landroid/view/View;)Lrx/d;

    move-result-object v1

    invoke-static {p0, p1, v2}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialStoreLatestAppsWidget$$Lambda$3;->lambdaFactory$(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialStoreLatestAppsWidget;Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialStoreLatestAppsDisplayable;Landroid/support/v4/app/u;)Lrx/b/b;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/d;->d(Lrx/b/b;)Lrx/k;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/j/b;->a(Lrx/k;)V

    .line 189
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialStoreLatestAppsDisplayable;->getSharedStore()Lcm/aptoide/pt/model/v7/store/Store;

    move-result-object v0

    invoke-static {v0}, Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;->get(Lcm/aptoide/pt/model/v7/store/Store;)Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;

    move-result-object v0

    .line 191
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialStoreLatestAppsWidget;->followStore:Landroid/widget/Button;

    invoke-virtual {v0}, Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;->getButtonLayoutDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 192
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_5

    .line 193
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialStoreLatestAppsWidget;->followStore:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setElevation(F)V

    .line 195
    :cond_5
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialStoreLatestAppsWidget;->followStore:Landroid/widget/Button;

    invoke-virtual {v0}, Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;->getStoreHeaderInt()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 197
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialStoreLatestAppsDisplayable;->getSharedStore()Lcm/aptoide/pt/model/v7/store/Store;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/store/Store;->getName()Ljava/lang/String;

    move-result-object v0

    .line 198
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialStoreLatestAppsDisplayable;->getSharedStore()Lcm/aptoide/pt/model/v7/store/Store;

    move-result-object v1

    invoke-virtual {v1}, Lcm/aptoide/pt/model/v7/store/Store;->getName()Ljava/lang/String;

    move-result-object v1

    .line 199
    iget-object v2, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialStoreLatestAppsWidget;->compositeSubscription:Lrx/j/b;

    iget-object v3, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialStoreLatestAppsWidget;->storeRepository:Lcm/aptoide/pt/v8engine/repository/StoreRepository;

    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialStoreLatestAppsDisplayable;->getSharedStore()Lcm/aptoide/pt/model/v7/store/Store;

    move-result-object v4

    invoke-virtual {v4}, Lcm/aptoide/pt/model/v7/store/Store;->getId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcm/aptoide/pt/v8engine/repository/StoreRepository;->isSubscribed(J)Lrx/d;

    move-result-object v3

    .line 200
    invoke-static {}, Lrx/a/b/a;->a()Lrx/g;

    move-result-object v4

    invoke-virtual {v3, v4}, Lrx/d;->a(Lrx/g;)Lrx/d;

    move-result-object v3

    invoke-static {p0, v0, v1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialStoreLatestAppsWidget$$Lambda$4;->lambdaFactory$(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialStoreLatestAppsWidget;Ljava/lang/String;Ljava/lang/String;)Lrx/b/b;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialStoreLatestAppsWidget$$Lambda$5;->lambdaFactory$()Lrx/b/b;

    move-result-object v1

    .line 201
    invoke-virtual {v3, v0, v1}, Lrx/d;->a(Lrx/b/b;Lrx/b/b;)Lrx/k;

    move-result-object v0

    .line 199
    invoke-virtual {v2, v0}, Lrx/j/b;->a(Lrx/k;)V

    .line 205
    return-void
.end method

.method getCardTypeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 208
    const-string v0, "SOCIAL_LATEST_APPS"

    return-object v0
.end method

.method synthetic lambda$bindView$0(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialStoreLatestAppsDisplayable;Landroid/view/View;Landroid/support/v4/app/u;Ljava/lang/Void;)V
    .locals 6

    .prologue
    .line 138
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialStoreLatestAppsDisplayable;->getAbTestingUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialStoreLatestAppsWidget;->knockWithSixpackCredentials(Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialStoreLatestAppsWidget;->appsPackages:Ljava/util/Map;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialStoreLatestAppsWidget;->apps:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 140
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialStoreLatestAppsWidget;->getCardTypeName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "(blank)"

    .line 141
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialStoreLatestAppsDisplayable;->getStoreName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Open App View"

    .line 140
    invoke-static {v1, v0, v2, v3, v4}, Lcm/aptoide/pt/v8engine/analytics/Analytics$AppsTimeline;->clickOnCard(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    invoke-static {}, Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Data;->builder()Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Data$DataBuilder;

    move-result-object v1

    .line 144
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialStoreLatestAppsWidget;->getCardTypeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Data$DataBuilder;->cardType(Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Data$DataBuilder;

    move-result-object v1

    const-string v2, "APTOIDE"

    .line 145
    invoke-virtual {v1, v2}, Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Data$DataBuilder;->source(Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Data$DataBuilder;

    move-result-object v1

    .line 146
    invoke-static {}, Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Specific;->builder()Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Specific$SpecificBuilder;

    move-result-object v2

    .line 147
    invoke-virtual {v2, v0}, Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Specific$SpecificBuilder;->app(Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Specific$SpecificBuilder;

    move-result-object v2

    .line 148
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialStoreLatestAppsDisplayable;->getStoreName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Specific$SpecificBuilder;->store(Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Specific$SpecificBuilder;

    move-result-object v2

    .line 149
    invoke-virtual {v2}, Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Specific$SpecificBuilder;->build()Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Specific;

    move-result-object v2

    .line 146
    invoke-virtual {v1, v2}, Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Data$DataBuilder;->specific(Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Specific;)Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Data$DataBuilder;

    move-result-object v1

    .line 150
    invoke-virtual {v1}, Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Data$DataBuilder;->build()Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Data;

    move-result-object v1

    const-string v2, "OPEN_APP"

    .line 143
    invoke-virtual {p1, v1, v2}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialStoreLatestAppsDisplayable;->sendClickEvent(Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Data;Ljava/lang/String;)V

    .line 151
    check-cast p3, Lcm/aptoide/pt/v8engine/interfaces/FragmentShower;

    .line 152
    invoke-static {}, Lcm/aptoide/pt/v8engine/V8Engine;->getFragmentProvider()Lcm/aptoide/pt/v8engine/configuration/FragmentProvider;

    move-result-object v2

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialStoreLatestAppsWidget;->apps:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-interface {v2, v4, v5, v0}, Lcm/aptoide/pt/v8engine/configuration/FragmentProvider;->newAppViewFragment(JLjava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 151
    invoke-interface {p3, v0}, Lcm/aptoide/pt/v8engine/interfaces/FragmentShower;->pushFragmentV4(Landroid/support/v4/app/Fragment;)V

    .line 153
    return-void
.end method

.method synthetic lambda$bindView$1(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialStoreLatestAppsDisplayable;Landroid/support/v4/app/u;Ljava/lang/Void;)V
    .locals 5

    .prologue
    .line 157
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialStoreLatestAppsDisplayable;->getAbTestingUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialStoreLatestAppsWidget;->knockWithSixpackCredentials(Ljava/lang/String;)V

    .line 158
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialStoreLatestAppsWidget;->getCardTypeName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "(blank)"

    const-string v2, "(blank)"

    .line 159
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialStoreLatestAppsDisplayable;->getStoreName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Open Store"

    .line 158
    invoke-static {v0, v1, v2, v3, v4}, Lcm/aptoide/pt/v8engine/analytics/Analytics$AppsTimeline;->clickOnCard(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    invoke-static {}, Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Data;->builder()Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Data$DataBuilder;

    move-result-object v0

    .line 162
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialStoreLatestAppsWidget;->getCardTypeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Data$DataBuilder;->cardType(Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Data$DataBuilder;

    move-result-object v0

    const-string v1, "APTOIDE"

    .line 163
    invoke-virtual {v0, v1}, Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Data$DataBuilder;->source(Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Data$DataBuilder;

    move-result-object v0

    .line 165
    invoke-static {}, Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Specific;->builder()Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Specific$SpecificBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialStoreLatestAppsDisplayable;->getStoreName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Specific$SpecificBuilder;->store(Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Specific$SpecificBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Specific$SpecificBuilder;->build()Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Specific;

    move-result-object v1

    .line 164
    invoke-virtual {v0, v1}, Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Data$DataBuilder;->specific(Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Specific;)Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Data$DataBuilder;

    move-result-object v0

    .line 166
    invoke-virtual {v0}, Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Data$DataBuilder;->build()Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Data;

    move-result-object v0

    const-string v1, "OPEN_STORE"

    .line 161
    invoke-virtual {p1, v0, v1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialStoreLatestAppsDisplayable;->sendClickEvent(Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Data;Ljava/lang/String;)V

    .line 167
    check-cast p2, Lcm/aptoide/pt/v8engine/interfaces/FragmentShower;

    invoke-static {}, Lcm/aptoide/pt/v8engine/V8Engine;->getFragmentProvider()Lcm/aptoide/pt/v8engine/configuration/FragmentProvider;

    move-result-object v0

    .line 168
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialStoreLatestAppsDisplayable;->getStoreName()Ljava/lang/String;

    move-result-object v1

    .line 169
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialStoreLatestAppsDisplayable;->getSharedStore()Lcm/aptoide/pt/model/v7/store/Store;

    move-result-object v2

    invoke-virtual {v2}, Lcm/aptoide/pt/model/v7/store/Store;->getAppearance()Lcm/aptoide/pt/model/v7/store/Store$Appearance;

    move-result-object v2

    invoke-virtual {v2}, Lcm/aptoide/pt/model/v7/store/Store$Appearance;->getTheme()Ljava/lang/String;

    move-result-object v2

    .line 168
    invoke-interface {v0, v1, v2}, Lcm/aptoide/pt/v8engine/configuration/FragmentProvider;->newStoreFragment(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 167
    invoke-interface {p2, v0}, Lcm/aptoide/pt/v8engine/interfaces/FragmentShower;->pushFragmentV4(Landroid/support/v4/app/Fragment;)V

    .line 170
    return-void
.end method

.method synthetic lambda$bindView$2(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialStoreLatestAppsDisplayable;Landroid/support/v4/app/u;Ljava/lang/Void;)V
    .locals 5

    .prologue
    .line 173
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialStoreLatestAppsDisplayable;->getAbTestingUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialStoreLatestAppsWidget;->knockWithSixpackCredentials(Ljava/lang/String;)V

    .line 174
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialStoreLatestAppsWidget;->getCardTypeName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "(blank)"

    const-string v2, "(blank)"

    .line 175
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialStoreLatestAppsDisplayable;->getSharedStore()Lcm/aptoide/pt/model/v7/store/Store;

    move-result-object v3

    invoke-virtual {v3}, Lcm/aptoide/pt/model/v7/store/Store;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Open Store"

    .line 174
    invoke-static {v0, v1, v2, v3, v4}, Lcm/aptoide/pt/v8engine/analytics/Analytics$AppsTimeline;->clickOnCard(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    invoke-static {}, Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Data;->builder()Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Data$DataBuilder;

    move-result-object v0

    .line 178
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialStoreLatestAppsWidget;->getCardTypeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Data$DataBuilder;->cardType(Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Data$DataBuilder;

    move-result-object v0

    const-string v1, "APTOIDE"

    .line 179
    invoke-virtual {v0, v1}, Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Data$DataBuilder;->source(Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Data$DataBuilder;

    move-result-object v0

    .line 180
    invoke-static {}, Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Specific;->builder()Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Specific$SpecificBuilder;

    move-result-object v1

    .line 181
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialStoreLatestAppsDisplayable;->getSharedStore()Lcm/aptoide/pt/model/v7/store/Store;

    move-result-object v2

    invoke-virtual {v2}, Lcm/aptoide/pt/model/v7/store/Store;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Specific$SpecificBuilder;->store(Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Specific$SpecificBuilder;

    move-result-object v1

    .line 182
    invoke-virtual {v1}, Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Specific$SpecificBuilder;->build()Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Specific;

    move-result-object v1

    .line 180
    invoke-virtual {v0, v1}, Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Data$DataBuilder;->specific(Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Specific;)Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Data$DataBuilder;

    move-result-object v0

    .line 183
    invoke-virtual {v0}, Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Data$DataBuilder;->build()Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Data;

    move-result-object v0

    const-string v1, "OPEN_STORE"

    .line 177
    invoke-virtual {p1, v0, v1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialStoreLatestAppsDisplayable;->sendClickEvent(Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Data;Ljava/lang/String;)V

    .line 184
    check-cast p2, Lcm/aptoide/pt/v8engine/interfaces/FragmentShower;

    invoke-static {}, Lcm/aptoide/pt/v8engine/V8Engine;->getFragmentProvider()Lcm/aptoide/pt/v8engine/configuration/FragmentProvider;

    move-result-object v0

    .line 185
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialStoreLatestAppsDisplayable;->getSharedStore()Lcm/aptoide/pt/model/v7/store/Store;

    move-result-object v1

    invoke-virtual {v1}, Lcm/aptoide/pt/model/v7/store/Store;->getName()Ljava/lang/String;

    move-result-object v1

    .line 186
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialStoreLatestAppsDisplayable;->getSharedStore()Lcm/aptoide/pt/model/v7/store/Store;

    move-result-object v2

    invoke-virtual {v2}, Lcm/aptoide/pt/model/v7/store/Store;->getAppearance()Lcm/aptoide/pt/model/v7/store/Store$Appearance;

    move-result-object v2

    invoke-virtual {v2}, Lcm/aptoide/pt/model/v7/store/Store$Appearance;->getTheme()Ljava/lang/String;

    move-result-object v2

    .line 185
    invoke-interface {v0, v1, v2}, Lcm/aptoide/pt/v8engine/configuration/FragmentProvider;->newStoreFragment(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 184
    invoke-interface {p2, v0}, Lcm/aptoide/pt/v8engine/interfaces/FragmentShower;->pushFragmentV4(Landroid/support/v4/app/Fragment;)V

    .line 187
    return-void
.end method

.method synthetic lambda$bindView$3(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 1

    .prologue
    .line 201
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0, p1, p2}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialStoreLatestAppsWidget;->handleIsSubscribed(ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$handleIsSubscribed$5(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Void;)V
    .locals 2

    .prologue
    .line 215
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialStoreLatestAppsWidget;->getNavigationManager()Lcm/aptoide/pt/navigation/NavigationManagerV4;

    move-result-object v0

    .line 216
    invoke-static {}, Lcm/aptoide/pt/v8engine/V8Engine;->getFragmentProvider()Lcm/aptoide/pt/v8engine/configuration/FragmentProvider;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcm/aptoide/pt/v8engine/configuration/FragmentProvider;->newStoreFragment(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 215
    invoke-interface {v0, v1}, Lcm/aptoide/pt/navigation/NavigationManagerV4;->navigateTo(Landroid/support/v4/app/Fragment;)V

    .line 217
    return-void
.end method

.method synthetic lambda$handleIsSubscribed$8(Ljava/lang/String;Ljava/lang/Void;)V
    .locals 2

    .prologue
    .line 223
    invoke-static {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialStoreLatestAppsWidget$$Lambda$8;->lambdaFactory$(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialStoreLatestAppsWidget;Ljava/lang/String;)Lcm/aptoide/pt/networkclient/interfaces/SuccessRequestListener;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialStoreLatestAppsWidget$$Lambda$9;->lambdaFactory$()Lcm/aptoide/pt/networkclient/interfaces/ErrorRequestListener;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcm/aptoide/pt/v8engine/util/StoreUtilsProxy;->subscribeStore(Ljava/lang/String;Lcm/aptoide/pt/networkclient/interfaces/SuccessRequestListener;Lcm/aptoide/pt/networkclient/interfaces/ErrorRequestListener;)V

    .line 229
    return-void
.end method

.method synthetic lambda$null$6(Ljava/lang/String;Lcm/aptoide/pt/model/v7/store/GetStoreMeta;)V
    .locals 4

    .prologue
    .line 224
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialStoreLatestAppsWidget;->itemView:Landroid/view/View;

    sget v1, Lcm/aptoide/pt/v8engine/R$string;->store_followed:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    .line 225
    invoke-static {v1, v2}, Lcm/aptoide/pt/utils/AptoideUtils$StringU;->getFormattedString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 224
    invoke-static {v0, v1}, Lcm/aptoide/pt/utils/design/ShowMessage;->asSnack(Landroid/view/View;Ljava/lang/String;)V

    .line 226
    return-void
.end method
