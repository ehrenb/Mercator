.class public Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/FollowUserWidget;
.super Lcm/aptoide/pt/v8engine/view/recycler/widget/Widget;
.source "FollowUserWidget.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcm/aptoide/pt/v8engine/view/recycler/widget/Widget",
        "<",
        "Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/FollowUserDisplayable;",
        ">;"
    }
.end annotation


# instance fields
.field private follow:Landroid/widget/Button;

.field private followLayout:Landroid/widget/LinearLayout;

.field private followNumbers:Landroid/widget/LinearLayout;

.field private followedTv:Landroid/widget/TextView;

.field private followersNumber:Landroid/widget/TextView;

.field private followingNumber:Landroid/widget/TextView;

.field private followingTv:Landroid/widget/TextView;

.field private mainIcon:Landroid/widget/ImageView;

.field private secondaryIcon:Landroid/widget/ImageView;

.field private separatorView:Landroid/view/View;

.field private storeNameTv:Landroid/widget/TextView;

.field private userNameTv:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/Widget;-><init>(Landroid/view/View;)V

    .line 50
    return-void
.end method

.method static synthetic lambda$bindView$5(Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 112
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 113
    return-void
.end method

.method static synthetic lambda$bindView$6(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/FollowUserDisplayable;Lcm/aptoide/pt/v8engine/interfaces/FragmentShower;Ljava/lang/Void;)V
    .locals 0

    .prologue
    .line 152
    invoke-virtual {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/FollowUserDisplayable;->viewClicked(Lcm/aptoide/pt/v8engine/interfaces/FragmentShower;)V

    return-void
.end method

.method static synthetic lambda$bindView$7(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 153
    invoke-static {}, Lcm/aptoide/pt/crashreports/CrashReport;->getInstance()Lcm/aptoide/pt/crashreports/CrashReport;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcm/aptoide/pt/crashreports/CrashReport;->log(Ljava/lang/Throwable;)V

    .line 154
    return-void
.end method

.method static synthetic lambda$null$2(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 96
    invoke-static {}, Lcm/aptoide/pt/crashreports/CrashReport;->getInstance()Lcm/aptoide/pt/crashreports/CrashReport;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcm/aptoide/pt/crashreports/CrashReport;->log(Ljava/lang/Throwable;)V

    .line 97
    return-void
.end method

.method private setFollowColor(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/FollowUserDisplayable;)V
    .locals 2

    .prologue
    .line 159
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 160
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/FollowUserWidget;->follow:Landroid/widget/Button;

    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/FollowUserDisplayable;->getButtonBackgroundStoreThemeColor()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 164
    :goto_0
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/FollowUserWidget;->follow:Landroid/widget/Button;

    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/FollowUserDisplayable;->getStoreColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 165
    return-void

    .line 162
    :cond_0
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/FollowUserWidget;->follow:Landroid/widget/Button;

    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/FollowUserDisplayable;->getButtonBackgroundStoreThemeColor()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private setupStoreNameTv(ILjava/lang/String;)V
    .locals 5

    .prologue
    const/16 v4, 0x1e

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 168
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/FollowUserWidget;->storeNameTv:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/FollowUserWidget;->storeNameTv:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 170
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/FollowUserWidget;->storeNameTv:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 172
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 173
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/FollowUserWidget;->getContext()Landroid/support/v4/app/u;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/u;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcm/aptoide/pt/v8engine/R$drawable;->ic_store:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 177
    :goto_0
    invoke-virtual {v0, v2, v2, v4, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 178
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 180
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 181
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/FollowUserWidget;->storeNameTv:Landroid/widget/TextView;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 182
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/FollowUserWidget;->storeNameTv:Landroid/widget/TextView;

    invoke-virtual {v1, v0, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 183
    return-void

    .line 175
    :cond_0
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/FollowUserWidget;->getContext()Landroid/support/v4/app/u;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/u;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcm/aptoide/pt/v8engine/R$drawable;->ic_store:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method protected assignViews(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 53
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->user_name:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/FollowUserWidget;->userNameTv:Landroid/widget/TextView;

    .line 54
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->store_name:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/FollowUserWidget;->storeNameTv:Landroid/widget/TextView;

    .line 55
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->following_number:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/FollowUserWidget;->followingNumber:Landroid/widget/TextView;

    .line 56
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->followers_number:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/FollowUserWidget;->followersNumber:Landroid/widget/TextView;

    .line 57
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->following_tv:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/FollowUserWidget;->followingTv:Landroid/widget/TextView;

    .line 58
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->followers_tv:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/FollowUserWidget;->followedTv:Landroid/widget/TextView;

    .line 59
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->main_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/FollowUserWidget;->mainIcon:Landroid/widget/ImageView;

    .line 60
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->secondary_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/FollowUserWidget;->secondaryIcon:Landroid/widget/ImageView;

    .line 61
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->follow_btn:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/FollowUserWidget;->follow:Landroid/widget/Button;

    .line 62
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->followers_following_numbers:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/FollowUserWidget;->followNumbers:Landroid/widget/LinearLayout;

    .line 63
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->follow_store_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/FollowUserWidget;->followLayout:Landroid/widget/LinearLayout;

    .line 64
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->separator_vertical:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/FollowUserWidget;->separatorView:Landroid/view/View;

    .line 65
    return-void
.end method

.method public bridge synthetic bindView(Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;)V
    .locals 0

    .prologue
    .line 33
    check-cast p1, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/FollowUserDisplayable;

    invoke-virtual {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/FollowUserWidget;->bindView(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/FollowUserDisplayable;)V

    return-void
.end method

.method public bindView(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/FollowUserDisplayable;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x8

    .line 68
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/FollowUserDisplayable;->getOpenMode()Lcm/aptoide/pt/v8engine/fragment/implementations/TimeLineFollowFragment$FollowFragmentOpenMode;

    move-result-object v0

    sget-object v1, Lcm/aptoide/pt/v8engine/fragment/implementations/TimeLineFollowFragment$FollowFragmentOpenMode;->LIKE_PREVIEW:Lcm/aptoide/pt/v8engine/fragment/implementations/TimeLineFollowFragment$FollowFragmentOpenMode;

    .line 69
    invoke-virtual {v0, v1}, Lcm/aptoide/pt/v8engine/fragment/implementations/TimeLineFollowFragment$FollowFragmentOpenMode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 70
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/FollowUserWidget;->followLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 71
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/FollowUserWidget;->followNumbers:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 72
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/FollowUserWidget;->separatorView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 73
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/FollowUserWidget;->followingNumber:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/FollowUserDisplayable;->getFollowing()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/FollowUserWidget;->followersNumber:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/FollowUserDisplayable;->getFollowers()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    :goto_0
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/FollowUserWidget;->getContext()Landroid/support/v4/app/u;

    move-result-object v0

    .line 117
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/FollowUserDisplayable;->hasStoreAndUser()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 118
    invoke-static {v0}, Lcm/aptoide/pt/imageloader/ImageLoader;->with(Landroid/content/Context;)Lcm/aptoide/pt/imageloader/ImageLoader;

    move-result-object v1

    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/FollowUserDisplayable;->getStoreAvatar()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/FollowUserWidget;->mainIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v2, v3}, Lcm/aptoide/pt/imageloader/ImageLoader;->loadUsingCircleTransform(Ljava/lang/String;Landroid/widget/ImageView;)Lcom/bumptech/glide/g/b/k;

    .line 119
    invoke-static {v0}, Lcm/aptoide/pt/imageloader/ImageLoader;->with(Landroid/content/Context;)Lcm/aptoide/pt/imageloader/ImageLoader;

    move-result-object v0

    .line 120
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/FollowUserDisplayable;->getUserAvatar()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/FollowUserWidget;->secondaryIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v2}, Lcm/aptoide/pt/imageloader/ImageLoader;->loadUsingCircleTransform(Ljava/lang/String;Landroid/widget/ImageView;)Lcom/bumptech/glide/g/b/k;

    .line 121
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/FollowUserWidget;->mainIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 122
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/FollowUserWidget;->secondaryIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 134
    :goto_1
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/FollowUserDisplayable;->hasUser()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 135
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/FollowUserWidget;->userNameTv:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/FollowUserDisplayable;->getUserName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/FollowUserWidget;->userNameTv:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 141
    :goto_2
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/FollowUserDisplayable;->hasStore()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 142
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/FollowUserDisplayable;->getStoreColor()I

    move-result v0

    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/FollowUserDisplayable;->storeName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/FollowUserWidget;->setupStoreNameTv(ILjava/lang/String;)V

    .line 146
    :goto_3
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/FollowUserWidget;->followedTv:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/FollowUserDisplayable;->getStoreColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 147
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/FollowUserWidget;->followingTv:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/FollowUserDisplayable;->getStoreColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 149
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/FollowUserWidget;->getContext()Landroid/support/v4/app/u;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/v8engine/interfaces/FragmentShower;

    .line 150
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/FollowUserDisplayable;->hasStore()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 151
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/FollowUserWidget;->compositeSubscription:Lrx/j/b;

    iget-object v2, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/FollowUserWidget;->itemView:Landroid/view/View;

    invoke-static {v2}, Lcom/c/a/b/c;->a(Landroid/view/View;)Lrx/d;

    move-result-object v2

    invoke-static {p1, v0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/FollowUserWidget$$Lambda$5;->lambdaFactory$(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/FollowUserDisplayable;Lcm/aptoide/pt/v8engine/interfaces/FragmentShower;)Lrx/b/b;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/FollowUserWidget$$Lambda$6;->lambdaFactory$()Lrx/b/b;

    move-result-object v3

    .line 152
    invoke-virtual {v2, v0, v3}, Lrx/d;->a(Lrx/b/b;Lrx/b/b;)Lrx/k;

    move-result-object v0

    .line 151
    invoke-virtual {v1, v0}, Lrx/j/b;->a(Lrx/k;)V

    .line 156
    :cond_0
    return-void

    .line 76
    :cond_1
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/FollowUserWidget;->followNumbers:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 77
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/FollowUserWidget;->separatorView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 78
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/FollowUserDisplayable;->hasStore()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 79
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/FollowUserWidget;->followLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 80
    invoke-direct {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/FollowUserWidget;->setFollowColor(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/FollowUserDisplayable;)V

    .line 83
    :cond_2
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/FollowUserDisplayable;->getStoreName()Ljava/lang/String;

    move-result-object v0

    .line 84
    invoke-static {}, Lcm/aptoide/pt/v8engine/V8Engine;->getConfiguration()Lcm/aptoide/pt/preferences/AptoidePreferencesConfiguration;

    move-result-object v1

    invoke-interface {v1}, Lcm/aptoide/pt/preferences/AptoidePreferencesConfiguration;->getDefaultTheme()Ljava/lang/String;

    move-result-object v1

    .line 86
    invoke-static {p0, v0, v1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/FollowUserWidget$$Lambda$1;->lambdaFactory$(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/FollowUserWidget;Ljava/lang/String;Ljava/lang/String;)Lrx/b/b;

    move-result-object v1

    .line 91
    invoke-static {p0, v0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/FollowUserWidget$$Lambda$2;->lambdaFactory$(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/FollowUserWidget;Ljava/lang/String;)Lrx/b/b;

    move-result-object v0

    .line 100
    invoke-static {}, Lcm/aptoide/pt/v8engine/repository/RepositoryFactory;->getStoreRepository()Lcm/aptoide/pt/v8engine/repository/StoreRepository;

    move-result-object v2

    .line 101
    iget-object v3, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/FollowUserWidget;->compositeSubscription:Lrx/j/b;

    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/FollowUserDisplayable;->getStoreName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcm/aptoide/pt/v8engine/repository/StoreRepository;->isSubscribed(Ljava/lang/String;)Lrx/d;

    move-result-object v2

    .line 102
    invoke-static {}, Lrx/a/b/a;->a()Lrx/g;

    move-result-object v4

    invoke-virtual {v2, v4}, Lrx/d;->a(Lrx/g;)Lrx/d;

    move-result-object v2

    invoke-static {p0, v1, v0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/FollowUserWidget$$Lambda$3;->lambdaFactory$(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/FollowUserWidget;Lrx/b/b;Lrx/b/b;)Lrx/b/b;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/FollowUserWidget$$Lambda$4;->lambdaFactory$()Lrx/b/b;

    move-result-object v1

    .line 103
    invoke-virtual {v2, v0, v1}, Lrx/d;->a(Lrx/b/b;Lrx/b/b;)Lrx/k;

    move-result-object v0

    .line 101
    invoke-virtual {v3, v0}, Lrx/j/b;->a(Lrx/k;)V

    goto/16 :goto_0

    .line 123
    :cond_3
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/FollowUserDisplayable;->hasUser()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 124
    invoke-static {v0}, Lcm/aptoide/pt/imageloader/ImageLoader;->with(Landroid/content/Context;)Lcm/aptoide/pt/imageloader/ImageLoader;

    move-result-object v0

    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/FollowUserDisplayable;->getUserAvatar()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/FollowUserWidget;->mainIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v2}, Lcm/aptoide/pt/imageloader/ImageLoader;->loadUsingCircleTransform(Ljava/lang/String;Landroid/widget/ImageView;)Lcom/bumptech/glide/g/b/k;

    .line 125
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/FollowUserWidget;->secondaryIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1

    .line 126
    :cond_4
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/FollowUserDisplayable;->hasStore()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 127
    invoke-static {v0}, Lcm/aptoide/pt/imageloader/ImageLoader;->with(Landroid/content/Context;)Lcm/aptoide/pt/imageloader/ImageLoader;

    move-result-object v0

    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/FollowUserDisplayable;->getStoreAvatar()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/FollowUserWidget;->mainIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v2}, Lcm/aptoide/pt/imageloader/ImageLoader;->loadUsingCircleTransform(Ljava/lang/String;Landroid/widget/ImageView;)Lcom/bumptech/glide/g/b/k;

    .line 128
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/FollowUserWidget;->secondaryIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1

    .line 130
    :cond_5
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/FollowUserWidget;->mainIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 131
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/FollowUserWidget;->secondaryIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1

    .line 138
    :cond_6
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/FollowUserWidget;->userNameTv:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 144
    :cond_7
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/FollowUserWidget;->storeNameTv:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3
.end method

.method synthetic lambda$bindView$0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Void;)V
    .locals 2

    .prologue
    .line 87
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/FollowUserWidget;->getNavigationManager()Lcm/aptoide/pt/navigation/NavigationManagerV4;

    move-result-object v0

    .line 88
    invoke-static {}, Lcm/aptoide/pt/v8engine/V8Engine;->getFragmentProvider()Lcm/aptoide/pt/v8engine/configuration/FragmentProvider;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcm/aptoide/pt/v8engine/configuration/FragmentProvider;->newStoreFragment(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 87
    invoke-interface {v0, v1}, Lcm/aptoide/pt/navigation/NavigationManagerV4;->navigateTo(Landroid/support/v4/app/Fragment;)V

    .line 89
    return-void
.end method

.method synthetic lambda$bindView$3(Ljava/lang/String;Ljava/lang/Void;)V
    .locals 2

    .prologue
    .line 92
    invoke-static {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/FollowUserWidget$$Lambda$7;->lambdaFactory$(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/FollowUserWidget;Ljava/lang/String;)Lcm/aptoide/pt/networkclient/interfaces/SuccessRequestListener;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/FollowUserWidget$$Lambda$8;->lambdaFactory$()Lcm/aptoide/pt/networkclient/interfaces/ErrorRequestListener;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcm/aptoide/pt/v8engine/util/StoreUtilsProxy;->subscribeStore(Ljava/lang/String;Lcm/aptoide/pt/networkclient/interfaces/SuccessRequestListener;Lcm/aptoide/pt/networkclient/interfaces/ErrorRequestListener;)V

    .line 98
    return-void
.end method

.method synthetic lambda$bindView$4(Lrx/b/b;Lrx/b/b;Ljava/lang/Boolean;)V
    .locals 2

    .prologue
    .line 104
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/FollowUserWidget;->follow:Landroid/widget/Button;

    sget v1, Lcm/aptoide/pt/v8engine/R$string;->followed:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 106
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/FollowUserWidget;->compositeSubscription:Lrx/j/b;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/FollowUserWidget;->follow:Landroid/widget/Button;

    invoke-static {v1}, Lcom/c/a/b/c;->a(Landroid/view/View;)Lrx/d;

    move-result-object v1

    invoke-virtual {v1, p1}, Lrx/d;->d(Lrx/b/b;)Lrx/k;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/j/b;->a(Lrx/k;)V

    .line 111
    :goto_0
    return-void

    .line 108
    :cond_0
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/FollowUserWidget;->follow:Landroid/widget/Button;

    sget v1, Lcm/aptoide/pt/v8engine/R$string;->appview_follow_store_button_text:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 109
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/FollowUserWidget;->compositeSubscription:Lrx/j/b;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/FollowUserWidget;->follow:Landroid/widget/Button;

    invoke-static {v1}, Lcom/c/a/b/c;->a(Landroid/view/View;)Lrx/d;

    move-result-object v1

    invoke-virtual {v1, p2}, Lrx/d;->d(Lrx/b/b;)Lrx/k;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/j/b;->a(Lrx/k;)V

    goto :goto_0
.end method

.method synthetic lambda$null$1(Ljava/lang/String;Lcm/aptoide/pt/model/v7/store/GetStoreMeta;)V
    .locals 4

    .prologue
    .line 93
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/FollowUserWidget;->itemView:Landroid/view/View;

    sget v1, Lcm/aptoide/pt/v8engine/R$string;->store_followed:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    .line 94
    invoke-static {v1, v2}, Lcm/aptoide/pt/utils/AptoideUtils$StringU;->getFormattedString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 93
    invoke-static {v0, v1}, Lcm/aptoide/pt/utils/design/ShowMessage;->asSnack(Landroid/view/View;Ljava/lang/String;)V

    .line 95
    return-void
.end method
