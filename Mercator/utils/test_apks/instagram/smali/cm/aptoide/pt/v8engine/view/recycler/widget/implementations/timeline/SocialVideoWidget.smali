.class public Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialVideoWidget;
.super Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialCardWidget;
.source "SocialVideoWidget.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialCardWidget",
        "<",
        "Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialVideoDisplayable;",
        ">;"
    }
.end annotation


# static fields
.field private static final CARD_TYPE_NAME:Ljava/lang/String; = "SOCIAL_VIDEO"


# instance fields
.field private appName:Ljava/lang/String;

.field private cardView:Landroid/support/v7/widget/CardView;

.field private getAppButton:Landroid/widget/Button;

.field private mediaLayout:Landroid/widget/FrameLayout;

.field private packageName:Ljava/lang/String;

.field private play_button:Landroid/widget/ImageView;

.field private relatedTo:Landroid/widget/TextView;

.field private storeAvatar:Landroid/widget/ImageView;

.field private subtitle:Landroid/widget/TextView;

.field private thumbnail:Landroid/widget/ImageView;

.field private title:Landroid/widget/TextView;

.field private url:Landroid/view/View;

.field private userAvatar:Landroid/widget/ImageView;

.field private videoHeader:Landroid/view/View;

.field private videoTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialCardWidget;-><init>(Landroid/view/View;)V

    .line 47
    return-void
.end method

.method private setAppNameToFirstLinkedApp(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialVideoDisplayable;)V
    .locals 2

    .prologue
    .line 172
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialVideoDisplayable;->getRelatedToAppsList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 173
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialVideoDisplayable;->getRelatedToAppsList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/model/v7/listapp/App;

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/listapp/App;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialVideoWidget;->appName:Ljava/lang/String;

    .line 175
    :cond_0
    return-void
.end method


# virtual methods
.method protected assignViews(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 50
    invoke-super {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialCardWidget;->assignViews(Landroid/view/View;)V

    .line 51
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->card_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialVideoWidget;->title:Landroid/widget/TextView;

    .line 52
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->card_subtitle:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialVideoWidget;->subtitle:Landroid/widget/TextView;

    .line 53
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->card_image:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialVideoWidget;->storeAvatar:Landroid/widget/ImageView;

    .line 54
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->card_user_avatar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialVideoWidget;->userAvatar:Landroid/widget/ImageView;

    .line 55
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->play_button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialVideoWidget;->play_button:Landroid/widget/ImageView;

    .line 56
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->media_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialVideoWidget;->mediaLayout:Landroid/widget/FrameLayout;

    .line 57
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->partial_social_timeline_thumbnail_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialVideoWidget;->videoTitle:Landroid/widget/TextView;

    .line 58
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->partial_social_timeline_thumbnail_image:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialVideoWidget;->thumbnail:Landroid/widget/ImageView;

    .line 59
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->partial_social_timeline_thumbnail:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialVideoWidget;->url:Landroid/view/View;

    .line 60
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->partial_social_timeline_thumbnail_get_app_button:I

    .line 61
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialVideoWidget;->getAppButton:Landroid/widget/Button;

    .line 62
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->card:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/CardView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialVideoWidget;->cardView:Landroid/support/v7/widget/CardView;

    .line 63
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->social_header:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialVideoWidget;->videoHeader:Landroid/view/View;

    .line 64
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->partial_social_timeline_thumbnail_related_to:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialVideoWidget;->relatedTo:Landroid/widget/TextView;

    .line 66
    return-void
.end method

.method public bridge synthetic bindView(Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;)V
    .locals 0

    .prologue
    .line 24
    check-cast p1, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialVideoDisplayable;

    invoke-virtual {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialVideoWidget;->bindView(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialVideoDisplayable;)V

    return-void
.end method

.method public bridge synthetic bindView(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/CardDisplayable;)V
    .locals 0

    .prologue
    .line 24
    check-cast p1, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialVideoDisplayable;

    invoke-virtual {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialVideoWidget;->bindView(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialVideoDisplayable;)V

    return-void
.end method

.method public bridge synthetic bindView(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialCardDisplayable;)V
    .locals 0

    .prologue
    .line 24
    check-cast p1, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialVideoDisplayable;

    invoke-virtual {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialVideoWidget;->bindView(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialVideoDisplayable;)V

    return-void
.end method

.method public bindView(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialVideoDisplayable;)V
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 69
    invoke-super {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialCardWidget;->bindView(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialCardDisplayable;)V

    .line 70
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialVideoWidget;->getContext()Landroid/support/v4/app/u;

    move-result-object v0

    .line 72
    invoke-virtual {v0}, Landroid/support/v4/app/u;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "fonts/DroidSerif-Regular.ttf"

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    .line 75
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialVideoDisplayable;->getStore()Lcm/aptoide/pt/model/v7/store/Store;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 76
    iget-object v2, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialVideoWidget;->title:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 77
    iget-object v2, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialVideoWidget;->title:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialVideoDisplayable;->getStore()Lcm/aptoide/pt/model/v7/store/Store;

    move-result-object v3

    invoke-virtual {v3}, Lcm/aptoide/pt/model/v7/store/Store;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    iget-object v2, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialVideoWidget;->storeAvatar:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 79
    invoke-static {v0}, Lcm/aptoide/pt/imageloader/ImageLoader;->with(Landroid/content/Context;)Lcm/aptoide/pt/imageloader/ImageLoader;

    move-result-object v2

    .line 80
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialVideoDisplayable;->getStore()Lcm/aptoide/pt/model/v7/store/Store;

    move-result-object v3

    invoke-virtual {v3}, Lcm/aptoide/pt/model/v7/store/Store;->getAvatar()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialVideoWidget;->storeAvatar:Landroid/widget/ImageView;

    invoke-virtual {v2, v3, v4}, Lcm/aptoide/pt/imageloader/ImageLoader;->loadWithShadowCircleTransform(Ljava/lang/String;Landroid/widget/ImageView;)Lcom/bumptech/glide/g/b/k;

    .line 81
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialVideoDisplayable;->getUser()Lcm/aptoide/pt/model/v7/Comment$User;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 82
    iget-object v2, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialVideoWidget;->subtitle:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 83
    iget-object v2, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialVideoWidget;->subtitle:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialVideoDisplayable;->getUser()Lcm/aptoide/pt/model/v7/Comment$User;

    move-result-object v3

    invoke-virtual {v3}, Lcm/aptoide/pt/model/v7/Comment$User;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    iget-object v2, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialVideoWidget;->userAvatar:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 85
    invoke-static {v0}, Lcm/aptoide/pt/imageloader/ImageLoader;->with(Landroid/content/Context;)Lcm/aptoide/pt/imageloader/ImageLoader;

    move-result-object v2

    .line 86
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialVideoDisplayable;->getUser()Lcm/aptoide/pt/model/v7/Comment$User;

    move-result-object v3

    invoke-virtual {v3}, Lcm/aptoide/pt/model/v7/Comment$User;->getAvatar()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialVideoWidget;->userAvatar:Landroid/widget/ImageView;

    invoke-virtual {v2, v3, v4}, Lcm/aptoide/pt/imageloader/ImageLoader;->loadWithShadowCircleTransform(Ljava/lang/String;Landroid/widget/ImageView;)Lcom/bumptech/glide/g/b/k;

    .line 102
    :cond_0
    :goto_0
    iget-object v2, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialVideoWidget;->videoTitle:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 103
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialVideoWidget;->videoTitle:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialVideoDisplayable;->getVideoTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialVideoWidget;->cardView:Landroid/support/v7/widget/CardView;

    invoke-virtual {p0, p1, v1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialVideoWidget;->setCardViewMargin(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/CardDisplayable;Landroid/support/v7/widget/CardView;)V

    .line 105
    invoke-static {v0}, Lcm/aptoide/pt/imageloader/ImageLoader;->with(Landroid/content/Context;)Lcm/aptoide/pt/imageloader/ImageLoader;

    move-result-object v1

    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialVideoDisplayable;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialVideoWidget;->thumbnail:Landroid/widget/ImageView;

    invoke-virtual {v1, v2, v3}, Lcm/aptoide/pt/imageloader/ImageLoader;->load(Ljava/lang/String;Landroid/widget/ImageView;)Lcom/bumptech/glide/g/b/k;

    .line 106
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialVideoWidget;->play_button:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 108
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_3

    .line 109
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialVideoWidget;->mediaLayout:Landroid/widget/FrameLayout;

    .line 110
    invoke-virtual {v0}, Landroid/support/v4/app/u;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcm/aptoide/pt/v8engine/R$color;->overlay_black:I

    invoke-virtual {v0}, Landroid/support/v4/app/u;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 109
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 115
    :goto_1
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialVideoWidget;->compositeSubscription:Lrx/j/b;

    iget-object v2, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialVideoWidget;->mediaLayout:Landroid/widget/FrameLayout;

    invoke-static {v2}, Lcom/c/a/b/c;->a(Landroid/view/View;)Lrx/d;

    move-result-object v2

    invoke-static {p0, p1, v0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialVideoWidget$$Lambda$1;->lambdaFactory$(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialVideoWidget;Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialVideoDisplayable;Landroid/support/v4/app/u;)Lrx/b/b;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/d;->d(Lrx/b/b;)Lrx/k;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/j/b;->a(Lrx/k;)V

    .line 130
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialVideoWidget;->compositeSubscription:Lrx/j/b;

    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialVideoDisplayable;->getRelatedToApplication()Lrx/d;

    move-result-object v2

    .line 131
    invoke-static {}, Lrx/a/b/a;->a()Lrx/g;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/d;->a(Lrx/g;)Lrx/d;

    move-result-object v2

    invoke-static {p0, p1, v0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialVideoWidget$$Lambda$2;->lambdaFactory$(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialVideoWidget;Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialVideoDisplayable;Landroid/support/v4/app/u;)Lrx/b/b;

    move-result-object v3

    invoke-static {p0, p1, v0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialVideoWidget$$Lambda$3;->lambdaFactory$(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialVideoWidget;Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialVideoDisplayable;Landroid/support/v4/app/u;)Lrx/b/b;

    move-result-object v4

    .line 132
    invoke-virtual {v2, v3, v4}, Lrx/d;->a(Lrx/b/b;Lrx/b/b;)Lrx/k;

    move-result-object v2

    .line 130
    invoke-virtual {v1, v2}, Lrx/j/b;->a(Lrx/k;)V

    .line 150
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialVideoWidget;->compositeSubscription:Lrx/j/b;

    iget-object v2, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialVideoWidget;->videoHeader:Landroid/view/View;

    invoke-static {v2}, Lcom/c/a/b/c;->a(Landroid/view/View;)Lrx/d;

    move-result-object v2

    invoke-static {p0, p1, v0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialVideoWidget$$Lambda$4;->lambdaFactory$(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialVideoWidget;Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialVideoDisplayable;Landroid/support/v4/app/u;)Lrx/b/b;

    move-result-object v0

    invoke-virtual {v2, v0}, Lrx/d;->d(Lrx/b/b;)Lrx/k;

    move-result-object v0

    invoke-virtual {v1, v0}, Lrx/j/b;->a(Lrx/k;)V

    .line 165
    return-void

    .line 88
    :cond_1
    iget-object v2, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialVideoWidget;->subtitle:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 89
    iget-object v2, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialVideoWidget;->userAvatar:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 92
    :cond_2
    iget-object v2, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialVideoWidget;->subtitle:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 93
    iget-object v2, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialVideoWidget;->userAvatar:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 94
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialVideoDisplayable;->getUser()Lcm/aptoide/pt/model/v7/Comment$User;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 95
    iget-object v2, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialVideoWidget;->title:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 96
    iget-object v2, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialVideoWidget;->title:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialVideoDisplayable;->getUser()Lcm/aptoide/pt/model/v7/Comment$User;

    move-result-object v3

    invoke-virtual {v3}, Lcm/aptoide/pt/model/v7/Comment$User;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    iget-object v2, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialVideoWidget;->storeAvatar:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 98
    invoke-static {v0}, Lcm/aptoide/pt/imageloader/ImageLoader;->with(Landroid/content/Context;)Lcm/aptoide/pt/imageloader/ImageLoader;

    move-result-object v2

    .line 99
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialVideoDisplayable;->getUser()Lcm/aptoide/pt/model/v7/Comment$User;

    move-result-object v3

    invoke-virtual {v3}, Lcm/aptoide/pt/model/v7/Comment$User;->getAvatar()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialVideoWidget;->storeAvatar:Landroid/widget/ImageView;

    invoke-virtual {v2, v3, v4}, Lcm/aptoide/pt/imageloader/ImageLoader;->loadWithShadowCircleTransform(Ljava/lang/String;Landroid/widget/ImageView;)Lcom/bumptech/glide/g/b/k;

    goto/16 :goto_0

    .line 112
    :cond_3
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialVideoWidget;->mediaLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/support/v4/app/u;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcm/aptoide/pt/v8engine/R$color;->overlay_black:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1
.end method

.method getCardTypeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    const-string v0, "SOCIAL_VIDEO"

    return-object v0
.end method

.method synthetic lambda$bindView$0(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialVideoDisplayable;Landroid/support/v4/app/u;Ljava/lang/Void;)V
    .locals 5

    .prologue
    .line 116
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialVideoDisplayable;->getAbUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialVideoWidget;->knockWithSixpackCredentials(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialVideoWidget;->getCardTypeName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "(blank)"

    .line 118
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialVideoDisplayable;->getVideoTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialVideoDisplayable;->getTitle()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Open Video"

    .line 117
    invoke-static {v0, v1, v2, v3, v4}, Lcm/aptoide/pt/v8engine/analytics/Analytics$AppsTimeline;->clickOnCard(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialVideoDisplayable;->getLink()Lcm/aptoide/pt/v8engine/link/Link;

    move-result-object v0

    invoke-interface {v0, p2}, Lcm/aptoide/pt/v8engine/link/Link;->launch(Landroid/content/Context;)V

    .line 120
    invoke-static {}, Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Data;->builder()Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Data$DataBuilder;

    move-result-object v0

    .line 121
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialVideoWidget;->getCardTypeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Data$DataBuilder;->cardType(Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Data$DataBuilder;

    move-result-object v0

    .line 122
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialVideoDisplayable;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Data$DataBuilder;->source(Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Data$DataBuilder;

    move-result-object v0

    .line 123
    invoke-static {}, Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Specific;->builder()Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Specific$SpecificBuilder;

    move-result-object v1

    .line 124
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialVideoDisplayable;->getLink()Lcm/aptoide/pt/v8engine/link/Link;

    move-result-object v2

    invoke-interface {v2}, Lcm/aptoide/pt/v8engine/link/Link;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Specific$SpecificBuilder;->url(Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Specific$SpecificBuilder;

    move-result-object v1

    iget-object v2, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialVideoWidget;->packageName:Ljava/lang/String;

    .line 125
    invoke-virtual {v1, v2}, Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Specific$SpecificBuilder;->app(Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Specific$SpecificBuilder;

    move-result-object v1

    .line 126
    invoke-virtual {v1}, Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Specific$SpecificBuilder;->build()Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Specific;

    move-result-object v1

    .line 123
    invoke-virtual {v0, v1}, Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Data$DataBuilder;->specific(Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Specific;)Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Data$DataBuilder;

    move-result-object v0

    .line 127
    invoke-virtual {v0}, Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Data$DataBuilder;->build()Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Data;

    move-result-object v0

    const-string v1, "OPEN_VIDEO"

    .line 120
    invoke-virtual {p1, v0, v1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialVideoDisplayable;->sendOpenVideoEvent(Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Data;Ljava/lang/String;)V

    .line 128
    return-void
.end method

.method synthetic lambda$bindView$1(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialVideoDisplayable;Landroid/support/v4/app/u;Ljava/util/List;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 133
    if-eqz p3, :cond_1

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 134
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/database/realm/Installed;

    invoke-virtual {v0}, Lcm/aptoide/pt/database/realm/Installed;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialVideoWidget;->appName:Ljava/lang/String;

    .line 135
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/database/realm/Installed;

    invoke-virtual {v0}, Lcm/aptoide/pt/database/realm/Installed;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialVideoWidget;->packageName:Ljava/lang/String;

    .line 139
    :goto_0
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialVideoWidget;->appName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialVideoWidget;->relatedTo:Landroid/widget/TextView;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialVideoWidget;->appName:Ljava/lang/String;

    invoke-virtual {p1, p2, v1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialVideoDisplayable;->getAppRelatedText(Landroid/content/Context;Ljava/lang/String;)Landroid/text/Spannable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    :cond_0
    return-void

    .line 137
    :cond_1
    invoke-direct {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialVideoWidget;->setAppNameToFirstLinkedApp(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialVideoDisplayable;)V

    goto :goto_0
.end method

.method synthetic lambda$bindView$2(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialVideoDisplayable;Landroid/support/v4/app/u;Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 143
    invoke-direct {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialVideoWidget;->setAppNameToFirstLinkedApp(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialVideoDisplayable;)V

    .line 144
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialVideoWidget;->appName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialVideoWidget;->relatedTo:Landroid/widget/TextView;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialVideoWidget;->appName:Ljava/lang/String;

    invoke-virtual {p1, p2, v1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialVideoDisplayable;->getAppRelatedText(Landroid/content/Context;Ljava/lang/String;)Landroid/text/Spannable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    :cond_0
    invoke-virtual {p3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 148
    return-void
.end method

.method synthetic lambda$bindView$3(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialVideoDisplayable;Landroid/support/v4/app/u;Ljava/lang/Void;)V
    .locals 5

    .prologue
    .line 151
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialVideoDisplayable;->getAbUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialVideoWidget;->knockWithSixpackCredentials(Ljava/lang/String;)V

    .line 152
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialVideoDisplayable;->getBaseLink()Lcm/aptoide/pt/v8engine/link/Link;

    move-result-object v0

    invoke-interface {v0, p2}, Lcm/aptoide/pt/v8engine/link/Link;->launch(Landroid/content/Context;)V

    .line 153
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialVideoWidget;->getCardTypeName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "(blank)"

    .line 154
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialVideoDisplayable;->getVideoTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialVideoDisplayable;->getTitle()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Open Video Header"

    .line 153
    invoke-static {v0, v1, v2, v3, v4}, Lcm/aptoide/pt/v8engine/analytics/Analytics$AppsTimeline;->clickOnCard(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    invoke-static {}, Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Data;->builder()Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Data$DataBuilder;

    move-result-object v0

    .line 157
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialVideoWidget;->getCardTypeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Data$DataBuilder;->cardType(Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Data$DataBuilder;

    move-result-object v0

    .line 158
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialVideoDisplayable;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Data$DataBuilder;->source(Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Data$DataBuilder;

    move-result-object v0

    .line 159
    invoke-static {}, Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Specific;->builder()Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Specific$SpecificBuilder;

    move-result-object v1

    .line 160
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialVideoDisplayable;->getBaseLink()Lcm/aptoide/pt/v8engine/link/Link;

    move-result-object v2

    invoke-interface {v2}, Lcm/aptoide/pt/v8engine/link/Link;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Specific$SpecificBuilder;->url(Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Specific$SpecificBuilder;

    move-result-object v1

    iget-object v2, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialVideoWidget;->packageName:Ljava/lang/String;

    .line 161
    invoke-virtual {v1, v2}, Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Specific$SpecificBuilder;->app(Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Specific$SpecificBuilder;

    move-result-object v1

    .line 162
    invoke-virtual {v1}, Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Specific$SpecificBuilder;->build()Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Specific;

    move-result-object v1

    .line 159
    invoke-virtual {v0, v1}, Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Data$DataBuilder;->specific(Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Specific;)Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Data$DataBuilder;

    move-result-object v0

    .line 163
    invoke-virtual {v0}, Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Data$DataBuilder;->build()Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Data;

    move-result-object v0

    const-string v1, "OPEN_CHANNEL"

    .line 156
    invoke-virtual {p1, v0, v1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialVideoDisplayable;->sendOpenVideoEvent(Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Data;Ljava/lang/String;)V

    .line 164
    return-void
.end method
