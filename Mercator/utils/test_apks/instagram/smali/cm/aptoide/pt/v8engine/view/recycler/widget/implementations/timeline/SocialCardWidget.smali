.class abstract Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialCardWidget;
.super Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/CardWidget;
.source "SocialCardWidget.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialCardDisplayable;",
        ">",
        "Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/CardWidget",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private comments:Landroid/widget/TextView;

.field private final inflater:Landroid/view/LayoutInflater;

.field private like:Landroid/widget/LinearLayout;

.field private likeButton:Lcm/aptoide/pt/v8engine/customviews/LikeButtonView;

.field private likePreviewContainer:Landroid/widget/RelativeLayout;

.field private marginOfTheNextLikePreview:I

.field private numberComments:Landroid/widget/TextView;

.field private numberLikes:Landroid/widget/TextView;

.field private sharedBy:Landroid/widget/TextView;

.field private time:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialCardWidget;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialCardWidget;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/CardWidget;-><init>(Landroid/view/View;)V

    .line 47
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialCardWidget;->inflater:Landroid/view/LayoutInflater;

    .line 48
    return-void
.end method

.method private addUserToPreview(ILcm/aptoide/pt/model/v7/timeline/UserTimeline;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 179
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialCardWidget;->inflater:Landroid/view/LayoutInflater;

    sget v1, Lcm/aptoide/pt/v8engine/R$layout;->social_timeline_like_user_preview:I

    iget-object v2, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialCardWidget;->likePreviewContainer:Landroid/widget/RelativeLayout;

    .line 180
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 181
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->social_timeline_like_user_preview:I

    .line 182
    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 184
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 185
    invoke-virtual {v1, p1, v3, v3, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 186
    invoke-virtual {v2}, Landroid/view/View;->requestLayout()V

    .line 188
    if-eqz p2, :cond_1

    .line 189
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialCardWidget;->getContext()Landroid/support/v4/app/u;

    move-result-object v1

    .line 190
    invoke-virtual {p2}, Lcm/aptoide/pt/model/v7/timeline/UserTimeline;->getAvatar()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 191
    invoke-static {v1}, Lcm/aptoide/pt/imageloader/ImageLoader;->with(Landroid/content/Context;)Lcm/aptoide/pt/imageloader/ImageLoader;

    move-result-object v1

    .line 192
    invoke-virtual {p2}, Lcm/aptoide/pt/model/v7/timeline/UserTimeline;->getAvatar()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Lcm/aptoide/pt/imageloader/ImageLoader;->loadWithShadowCircleTransform(Ljava/lang/String;Landroid/widget/ImageView;)Lcom/bumptech/glide/g/b/k;

    .line 197
    :cond_0
    :goto_0
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialCardWidget;->likePreviewContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 198
    iget v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialCardWidget;->marginOfTheNextLikePreview:I

    add-int/lit8 v0, v0, -0x14

    iput v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialCardWidget;->marginOfTheNextLikePreview:I

    .line 200
    :cond_1
    return-void

    .line 193
    :cond_2
    invoke-virtual {p2}, Lcm/aptoide/pt/model/v7/timeline/UserTimeline;->getStore()Lcm/aptoide/pt/model/v7/store/Store;

    move-result-object v3

    invoke-virtual {v3}, Lcm/aptoide/pt/model/v7/store/Store;->getAvatar()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 194
    invoke-static {v1}, Lcm/aptoide/pt/imageloader/ImageLoader;->with(Landroid/content/Context;)Lcm/aptoide/pt/imageloader/ImageLoader;

    move-result-object v1

    .line 195
    invoke-virtual {p2}, Lcm/aptoide/pt/model/v7/timeline/UserTimeline;->getStore()Lcm/aptoide/pt/model/v7/store/Store;

    move-result-object v3

    invoke-virtual {v3}, Lcm/aptoide/pt/model/v7/store/Store;->getAvatar()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Lcm/aptoide/pt/imageloader/ImageLoader;->loadWithShadowCircleTransform(Ljava/lang/String;Landroid/widget/ImageView;)Lcom/bumptech/glide/g/b/k;

    goto :goto_0
.end method

.method static synthetic lambda$bindView$1(Ljava/lang/Void;)V
    .locals 0

    .prologue
    .line 83
    return-void
.end method

.method static synthetic lambda$bindView$5(Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 146
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 147
    return-void
.end method

.method static synthetic lambda$likeCard$8(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 168
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcm/aptoide/accountmanager/AptoideAccountManager;->openAccountManager(Landroid/content/Context;)V

    .line 169
    return-void
.end method

.method static synthetic lambda$showError$7(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 161
    invoke-static {}, Lcm/aptoide/pt/crashreports/CrashReport;->getInstance()Lcm/aptoide/pt/crashreports/CrashReport;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcm/aptoide/pt/crashreports/CrashReport;->log(Ljava/lang/Throwable;)V

    return-void
.end method

.method private likeCard(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialCardDisplayable;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)Z"
        }
    .end annotation

    .prologue
    .line 165
    invoke-static {}, Lcm/aptoide/accountmanager/AptoideAccountManager;->isLoggedIn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 166
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialCardWidget;->getContext()Landroid/support/v4/app/u;

    move-result-object v0

    sget v1, Lcm/aptoide/pt/v8engine/R$string;->you_need_to_be_logged_in:I

    sget v2, Lcm/aptoide/pt/v8engine/R$string;->login:I

    invoke-static {}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialCardWidget$$Lambda$9;->lambdaFactory$()Landroid/view/View$OnClickListener;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcm/aptoide/pt/utils/design/ShowMessage;->asSnack(Landroid/app/Activity;IILandroid/view/View$OnClickListener;)V

    .line 170
    const/4 v0, 0x0

    .line 173
    :goto_0
    return v0

    .line 172
    :cond_0
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialCardWidget;->getContext()Landroid/support/v4/app/u;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialCardWidget;->getCardTypeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1, p2}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialCardDisplayable;->like(Landroid/content/Context;Ljava/lang/String;I)V

    .line 173
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private showComments(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialCardDisplayable;)Lrx/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lrx/d",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 151
    invoke-static {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialCardWidget$$Lambda$7;->lambdaFactory$(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialCardWidget;Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialCardDisplayable;)Ljava/util/concurrent/Callable;

    move-result-object v0

    invoke-static {v0}, Lrx/d;->a(Ljava/util/concurrent/Callable;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method private showError()Lrx/b/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/b/b",
            "<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 161
    invoke-static {}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialCardWidget$$Lambda$8;->lambdaFactory$()Lrx/b/b;

    move-result-object v0

    return-object v0
.end method

.method private showLikesPreview(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialCardDisplayable;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 203
    const/16 v0, 0x3c

    iput v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialCardWidget;->marginOfTheNextLikePreview:I

    .line 204
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    int-to-long v2, v1

    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialCardDisplayable;->getNumberOfLikes()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-gez v0, :cond_1

    .line 206
    const/4 v0, 0x0

    .line 207
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialCardDisplayable;->getUserLikes()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 208
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialCardDisplayable;->getUserLikes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/model/v7/timeline/UserTimeline;

    .line 210
    :cond_0
    iget v2, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialCardWidget;->marginOfTheNextLikePreview:I

    invoke-direct {p0, v2, v0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialCardWidget;->addUserToPreview(ILcm/aptoide/pt/model/v7/timeline/UserTimeline;)V

    .line 211
    iget v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialCardWidget;->marginOfTheNextLikePreview:I

    if-gez v0, :cond_2

    .line 215
    :cond_1
    return-void

    .line 204
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method


# virtual methods
.method protected assignViews(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 51
    invoke-super {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/CardWidget;->assignViews(Landroid/view/View;)V

    .line 52
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->card_date:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialCardWidget;->time:Landroid/widget/TextView;

    .line 53
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->social_comment:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialCardWidget;->comments:Landroid/widget/TextView;

    .line 54
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->social_like:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialCardWidget;->like:Landroid/widget/LinearLayout;

    .line 55
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->social_like_button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/v8engine/customviews/LikeButtonView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialCardWidget;->likeButton:Lcm/aptoide/pt/v8engine/customviews/LikeButtonView;

    .line 56
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->social_number_of_likes:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialCardWidget;->numberLikes:Landroid/widget/TextView;

    .line 57
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->social_number_of_comments:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialCardWidget;->numberComments:Landroid/widget/TextView;

    .line 58
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->social_shared_by:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialCardWidget;->sharedBy:Landroid/widget/TextView;

    .line 59
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->displayable_social_timeline_likes_preview_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialCardWidget;->likePreviewContainer:Landroid/widget/RelativeLayout;

    .line 61
    return-void
.end method

.method public bridge synthetic bindView(Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;)V
    .locals 0

    .prologue
    .line 31
    check-cast p1, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialCardDisplayable;

    invoke-virtual {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialCardWidget;->bindView(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialCardDisplayable;)V

    return-void
.end method

.method public bridge synthetic bindView(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/CardDisplayable;)V
    .locals 0

    .prologue
    .line 31
    check-cast p1, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialCardDisplayable;

    invoke-virtual {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialCardWidget;->bindView(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialCardDisplayable;)V

    return-void
.end method

.method public bindView(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialCardDisplayable;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0x0

    const/16 v2, 0x8

    const/4 v5, 0x4

    const/4 v4, 0x0

    .line 64
    invoke-super {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/CardWidget;->bindView(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/CardDisplayable;)V

    .line 66
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialCardDisplayable;->getUserSharer()Lcm/aptoide/pt/model/v7/Comment$User;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 67
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialCardDisplayable;->getUserSharer()Lcm/aptoide/pt/model/v7/Comment$User;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/Comment$User;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialCardDisplayable;->getUser()Lcm/aptoide/pt/model/v7/Comment$User;

    move-result-object v0

    .line 68
    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/Comment$User;->getName()Ljava/lang/String;

    move-result-object v0

    .line 69
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialCardDisplayable;->getUserSharer()Lcm/aptoide/pt/model/v7/Comment$User;

    move-result-object v1

    invoke-virtual {v1}, Lcm/aptoide/pt/model/v7/Comment$User;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 70
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialCardWidget;->sharedBy:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 71
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialCardWidget;->sharedBy:Landroid/widget/TextView;

    .line 72
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialCardWidget;->getContext()Landroid/support/v4/app/u;

    move-result-object v1

    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialCardDisplayable;->getUserSharer()Lcm/aptoide/pt/model/v7/Comment$User;

    move-result-object v2

    invoke-virtual {v2}, Lcm/aptoide/pt/model/v7/Comment$User;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialCardDisplayable;->getSharedBy(Landroid/content/Context;Ljava/lang/String;)Landroid/text/Spannable;

    move-result-object v1

    .line 71
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    :goto_0
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialCardWidget;->comments:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 81
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialCardWidget;->compositeSubscription:Lrx/j/b;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialCardWidget;->comments:Landroid/widget/TextView;

    .line 82
    invoke-static {v1}, Lcom/c/a/b/c;->a(Landroid/view/View;)Lrx/d;

    move-result-object v1

    invoke-static {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialCardWidget$$Lambda$1;->lambdaFactory$(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialCardWidget;Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialCardDisplayable;)Lrx/b/e;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/d;->e(Lrx/b/e;)Lrx/d;

    move-result-object v1

    invoke-static {}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialCardWidget$$Lambda$2;->lambdaFactory$()Lrx/b/b;

    move-result-object v2

    .line 83
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialCardWidget;->showError()Lrx/b/b;

    move-result-object v3

    .line 82
    invoke-virtual {v1, v2, v3}, Lrx/d;->a(Lrx/b/b;Lrx/b/b;)Lrx/k;

    move-result-object v1

    .line 81
    invoke-virtual {v0, v1}, Lrx/j/b;->a(Lrx/k;)V

    .line 85
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialCardWidget;->comments:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 90
    :goto_1
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialCardWidget;->time:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialCardWidget;->getContext()Landroid/support/v4/app/u;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialCardDisplayable;->getTimeSinceLastUpdate(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialCardWidget;->like:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_4

    .line 93
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialCardWidget;->like:Landroid/widget/LinearLayout;

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialCardWidget$$Lambda$3;->lambdaFactory$(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialCardWidget;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialCardDisplayable;->isLiked()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 96
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialCardWidget;->likeButton:Lcm/aptoide/pt/v8engine/customviews/LikeButtonView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcm/aptoide/pt/v8engine/customviews/LikeButtonView;->setHeartState(Z)V

    .line 101
    :goto_2
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialCardWidget;->likeButton:Lcm/aptoide/pt/v8engine/customviews/LikeButtonView;

    invoke-static {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialCardWidget$$Lambda$4;->lambdaFactory$(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialCardWidget;Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialCardDisplayable;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcm/aptoide/pt/v8engine/customviews/LikeButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialCardWidget;->like:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 124
    :goto_3
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialCardDisplayable;->getNumberOfLikes()J

    move-result-wide v0

    cmp-long v0, v0, v6

    if-lez v0, :cond_5

    .line 125
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialCardWidget;->numberLikes:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 126
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialCardWidget;->numberLikes:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialCardDisplayable;->getNumberOfLikes()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    :goto_4
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialCardDisplayable;->getNumberOfComments()J

    move-result-wide v0

    cmp-long v0, v0, v6

    if-lez v0, :cond_6

    .line 132
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialCardWidget;->numberComments:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 133
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialCardWidget;->numberComments:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialCardDisplayable;->getNumberOfComments()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    :goto_5
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialCardWidget;->shareButton:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 140
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialCardWidget;->likePreviewContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 141
    invoke-direct {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialCardWidget;->showLikesPreview(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialCardDisplayable;)V

    .line 143
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialCardWidget;->compositeSubscription:Lrx/j/b;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialCardWidget;->likePreviewContainer:Landroid/widget/RelativeLayout;

    invoke-static {v1}, Lcom/c/a/b/c;->a(Landroid/view/View;)Lrx/d;

    move-result-object v1

    invoke-static {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialCardWidget$$Lambda$5;->lambdaFactory$(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialCardWidget;Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialCardDisplayable;)Lrx/b/b;

    move-result-object v2

    invoke-static {}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialCardWidget$$Lambda$6;->lambdaFactory$()Lrx/b/b;

    move-result-object v3

    .line 144
    invoke-virtual {v1, v2, v3}, Lrx/d;->a(Lrx/b/b;Lrx/b/b;)Lrx/k;

    move-result-object v1

    .line 143
    invoke-virtual {v0, v1}, Lrx/j/b;->a(Lrx/k;)V

    .line 148
    return-void

    .line 74
    :cond_0
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialCardWidget;->sharedBy:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 77
    :cond_1
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialCardWidget;->sharedBy:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 87
    :cond_2
    sget-object v0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialCardWidget;->TAG:Ljava/lang/String;

    const-string v1, "comment button is null in this view"

    invoke-static {v0, v1}, Lcm/aptoide/pt/logger/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 98
    :cond_3
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialCardWidget;->likeButton:Lcm/aptoide/pt/v8engine/customviews/LikeButtonView;

    invoke-virtual {v0, v4}, Lcm/aptoide/pt/v8engine/customviews/LikeButtonView;->setHeartState(Z)V

    goto/16 :goto_2

    .line 121
    :cond_4
    sget-object v0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialCardWidget;->TAG:Ljava/lang/String;

    const-string v1, "like button is null in this view"

    invoke-static {v0, v1}, Lcm/aptoide/pt/logger/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 128
    :cond_5
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialCardWidget;->numberLikes:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    .line 135
    :cond_6
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialCardWidget;->numberComments:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_5
.end method

.method synthetic lambda$bindView$0(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialCardDisplayable;Ljava/lang/Void;)Lrx/d;
    .locals 1

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialCardWidget;->showComments(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialCardDisplayable;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$bindView$2(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialCardWidget;->likeButton:Lcm/aptoide/pt/v8engine/customviews/LikeButtonView;

    invoke-virtual {v0}, Lcm/aptoide/pt/v8engine/customviews/LikeButtonView;->performClick()Z

    return-void
.end method

.method synthetic lambda$bindView$3(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialCardDisplayable;Landroid/view/View;)V
    .locals 6

    .prologue
    .line 102
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialCardWidget;->likeCard(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialCardDisplayable;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialCardWidget;->numberLikes:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialCardDisplayable;->getNumberOfLikes()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialCardWidget;->numberLikes:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 105
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialCardWidget;->likePreviewContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 106
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialCardDisplayable;->isLiked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 107
    new-instance v0, Lcm/aptoide/pt/model/v7/timeline/UserTimeline;

    invoke-direct {v0}, Lcm/aptoide/pt/model/v7/timeline/UserTimeline;-><init>()V

    .line 108
    new-instance v1, Lcm/aptoide/pt/model/v7/store/Store;

    invoke-direct {v1}, Lcm/aptoide/pt/model/v7/store/Store;-><init>()V

    .line 109
    invoke-static {}, Lcm/aptoide/accountmanager/AptoideAccountManager;->getUserData()Lcm/aptoide/accountmanager/util/UserCompleteData;

    move-result-object v2

    invoke-virtual {v2}, Lcm/aptoide/accountmanager/util/UserCompleteData;->getUserAvatarRepo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcm/aptoide/pt/model/v7/store/Store;->setAvatar(Ljava/lang/String;)Lcm/aptoide/pt/model/v7/store/Store;

    .line 110
    invoke-static {}, Lcm/aptoide/accountmanager/AptoideAccountManager;->getUserData()Lcm/aptoide/accountmanager/util/UserCompleteData;

    move-result-object v2

    invoke-virtual {v2}, Lcm/aptoide/accountmanager/util/UserCompleteData;->getUserAvatar()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcm/aptoide/pt/model/v7/timeline/UserTimeline;->setAvatar(Ljava/lang/String;)V

    .line 111
    invoke-virtual {v0, v1}, Lcm/aptoide/pt/model/v7/timeline/UserTimeline;->setStore(Lcm/aptoide/pt/model/v7/store/Store;)V

    .line 112
    iget v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialCardWidget;->marginOfTheNextLikePreview:I

    invoke-direct {p0, v1, v0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialCardWidget;->addUserToPreview(ILcm/aptoide/pt/model/v7/timeline/UserTimeline;)V

    .line 113
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialCardWidget;->likePreviewContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->invalidate()V

    .line 117
    :cond_0
    return-void
.end method

.method synthetic lambda$bindView$4(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialCardDisplayable;Ljava/lang/Void;)V
    .locals 1

    .prologue
    .line 144
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialCardWidget;->getContext()Landroid/support/v4/app/u;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/v8engine/interfaces/FragmentShower;

    invoke-virtual {p1, v0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialCardDisplayable;->likesPreviewClick(Lcm/aptoide/pt/v8engine/interfaces/FragmentShower;)V

    return-void
.end method

.method synthetic lambda$showComments$6(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialCardDisplayable;)Ljava/lang/Void;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 152
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialCardDisplayable;->getTimelineCard()Lcm/aptoide/pt/model/v7/timeline/TimelineCard;

    move-result-object v0

    invoke-interface {v0}, Lcm/aptoide/pt/model/v7/timeline/TimelineCard;->getCardId()Ljava/lang/String;

    move-result-object v0

    .line 153
    invoke-static {}, Lcm/aptoide/pt/v8engine/V8Engine;->getFragmentProvider()Lcm/aptoide/pt/v8engine/configuration/FragmentProvider;

    move-result-object v1

    sget-object v2, Lcm/aptoide/pt/dataprovider/util/CommentType;->TIMELINE:Lcm/aptoide/pt/dataprovider/util/CommentType;

    .line 154
    invoke-interface {v1, v2, v0}, Lcm/aptoide/pt/v8engine/configuration/FragmentProvider;->newCommentGridRecyclerFragment(Lcm/aptoide/pt/dataprovider/util/CommentType;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 155
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialCardWidget;->getContext()Landroid/support/v4/app/u;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/v8engine/interfaces/FragmentShower;

    invoke-interface {v0, v1}, Lcm/aptoide/pt/v8engine/interfaces/FragmentShower;->pushFragmentV4(Landroid/support/v4/app/Fragment;)V

    .line 156
    const/4 v0, 0x0

    return-object v0
.end method
