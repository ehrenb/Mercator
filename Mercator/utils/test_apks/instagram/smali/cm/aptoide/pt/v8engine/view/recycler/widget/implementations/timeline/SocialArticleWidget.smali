.class public Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialArticleWidget;
.super Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialCardWidget;
.source "SocialArticleWidget.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialCardWidget",
        "<",
        "Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialArticleDisplayable;",
        ">;"
    }
.end annotation


# static fields
.field private static final CARD_TYPE_NAME:Ljava/lang/String; = "SOCIAL_ARTICLE"


# instance fields
.field private appName:Ljava/lang/String;

.field private articleHeader:Landroid/view/View;

.field private articleTitle:Landroid/widget/TextView;

.field private cardView:Landroid/support/v7/widget/CardView;

.field private getAppButton:Landroid/widget/Button;

.field private packageName:Ljava/lang/String;

.field private relatedTo:Landroid/widget/TextView;

.field private storeAvatar:Landroid/widget/ImageView;

.field private subtitle:Landroid/widget/TextView;

.field private thumbnail:Landroid/widget/ImageView;

.field private title:Landroid/widget/TextView;

.field private url:Landroid/view/View;

.field private userAvatar:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialCardWidget;-><init>(Landroid/view/View;)V

    .line 45
    return-void
.end method

.method private setAppNameToFirstLinkedApp(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialArticleDisplayable;)V
    .locals 2

    .prologue
    .line 163
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialArticleDisplayable;->getRelatedToAppsList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 164
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialArticleDisplayable;->getRelatedToAppsList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/model/v7/listapp/App;

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/listapp/App;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialArticleWidget;->appName:Ljava/lang/String;

    .line 166
    :cond_0
    return-void
.end method


# virtual methods
.method protected assignViews(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 52
    invoke-super {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialCardWidget;->assignViews(Landroid/view/View;)V

    .line 53
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->card_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialArticleWidget;->title:Landroid/widget/TextView;

    .line 54
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->card_subtitle:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialArticleWidget;->subtitle:Landroid/widget/TextView;

    .line 55
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->card_image:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialArticleWidget;->storeAvatar:Landroid/widget/ImageView;

    .line 56
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->card_user_avatar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialArticleWidget;->userAvatar:Landroid/widget/ImageView;

    .line 57
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->partial_social_timeline_thumbnail_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialArticleWidget;->articleTitle:Landroid/widget/TextView;

    .line 58
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->partial_social_timeline_thumbnail_image:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialArticleWidget;->thumbnail:Landroid/widget/ImageView;

    .line 59
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->partial_social_timeline_thumbnail:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialArticleWidget;->url:Landroid/view/View;

    .line 60
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->partial_social_timeline_thumbnail_get_app_button:I

    .line 61
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialArticleWidget;->getAppButton:Landroid/widget/Button;

    .line 62
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->card:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/CardView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialArticleWidget;->cardView:Landroid/support/v7/widget/CardView;

    .line 63
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->social_header:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialArticleWidget;->articleHeader:Landroid/view/View;

    .line 64
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->partial_social_timeline_thumbnail_related_to:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialArticleWidget;->relatedTo:Landroid/widget/TextView;

    .line 65
    return-void
.end method

.method public bridge synthetic bindView(Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;)V
    .locals 0

    .prologue
    .line 23
    check-cast p1, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialArticleDisplayable;

    invoke-virtual {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialArticleWidget;->bindView(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialArticleDisplayable;)V

    return-void
.end method

.method public bridge synthetic bindView(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/CardDisplayable;)V
    .locals 0

    .prologue
    .line 23
    check-cast p1, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialArticleDisplayable;

    invoke-virtual {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialArticleWidget;->bindView(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialArticleDisplayable;)V

    return-void
.end method

.method public bindView(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialArticleDisplayable;)V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 68
    invoke-super {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialCardWidget;->bindView(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialCardDisplayable;)V

    .line 70
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialArticleWidget;->getContext()Landroid/support/v4/app/u;

    move-result-object v0

    .line 71
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialArticleDisplayable;->getStore()Lcm/aptoide/pt/model/v7/store/Store;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 72
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialArticleWidget;->title:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 73
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialArticleWidget;->title:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialArticleDisplayable;->getStore()Lcm/aptoide/pt/model/v7/store/Store;

    move-result-object v2

    invoke-virtual {v2}, Lcm/aptoide/pt/model/v7/store/Store;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialArticleWidget;->storeAvatar:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 75
    invoke-static {v0}, Lcm/aptoide/pt/imageloader/ImageLoader;->with(Landroid/content/Context;)Lcm/aptoide/pt/imageloader/ImageLoader;

    move-result-object v1

    .line 76
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialArticleDisplayable;->getStore()Lcm/aptoide/pt/model/v7/store/Store;

    move-result-object v2

    invoke-virtual {v2}, Lcm/aptoide/pt/model/v7/store/Store;->getAvatar()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialArticleWidget;->storeAvatar:Landroid/widget/ImageView;

    invoke-virtual {v1, v2, v3}, Lcm/aptoide/pt/imageloader/ImageLoader;->loadWithShadowCircleTransform(Ljava/lang/String;Landroid/widget/ImageView;)Lcom/bumptech/glide/g/b/k;

    .line 77
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialArticleDisplayable;->getUser()Lcm/aptoide/pt/model/v7/Comment$User;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 78
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialArticleWidget;->subtitle:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 79
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialArticleWidget;->subtitle:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialArticleDisplayable;->getUser()Lcm/aptoide/pt/model/v7/Comment$User;

    move-result-object v2

    invoke-virtual {v2}, Lcm/aptoide/pt/model/v7/Comment$User;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialArticleWidget;->userAvatar:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 81
    invoke-static {v0}, Lcm/aptoide/pt/imageloader/ImageLoader;->with(Landroid/content/Context;)Lcm/aptoide/pt/imageloader/ImageLoader;

    move-result-object v1

    .line 82
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialArticleDisplayable;->getUser()Lcm/aptoide/pt/model/v7/Comment$User;

    move-result-object v2

    invoke-virtual {v2}, Lcm/aptoide/pt/model/v7/Comment$User;->getAvatar()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialArticleWidget;->userAvatar:Landroid/widget/ImageView;

    invoke-virtual {v1, v2, v3}, Lcm/aptoide/pt/imageloader/ImageLoader;->loadWithShadowCircleTransform(Ljava/lang/String;Landroid/widget/ImageView;)Lcom/bumptech/glide/g/b/k;

    .line 100
    :cond_0
    :goto_0
    invoke-virtual {v0}, Landroid/support/v4/app/u;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "fonts/DroidSerif-Regular.ttf"

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    .line 101
    iget-object v2, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialArticleWidget;->articleTitle:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 102
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialArticleWidget;->articleTitle:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialArticleDisplayable;->getArticleTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialArticleWidget;->cardView:Landroid/support/v7/widget/CardView;

    invoke-virtual {p0, p1, v1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialArticleWidget;->setCardViewMargin(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/CardDisplayable;Landroid/support/v7/widget/CardView;)V

    .line 107
    invoke-static {v0}, Lcm/aptoide/pt/imageloader/ImageLoader;->with(Landroid/content/Context;)Lcm/aptoide/pt/imageloader/ImageLoader;

    move-result-object v1

    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialArticleDisplayable;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialArticleWidget;->thumbnail:Landroid/widget/ImageView;

    invoke-virtual {v1, v2, v3}, Lcm/aptoide/pt/imageloader/ImageLoader;->load(Ljava/lang/String;Landroid/widget/ImageView;)Lcom/bumptech/glide/g/b/k;

    .line 109
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialArticleWidget;->url:Landroid/view/View;

    invoke-static {p0, p1, v0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialArticleWidget$$Lambda$1;->lambdaFactory$(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialArticleWidget;Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialArticleDisplayable;Landroid/support/v4/app/u;)Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialArticleWidget;->compositeSubscription:Lrx/j/b;

    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialArticleDisplayable;->getRelatedToApplication()Lrx/d;

    move-result-object v2

    .line 126
    invoke-static {}, Lrx/a/b/a;->a()Lrx/g;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/d;->a(Lrx/g;)Lrx/d;

    move-result-object v2

    invoke-static {p0, p1, v0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialArticleWidget$$Lambda$2;->lambdaFactory$(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialArticleWidget;Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialArticleDisplayable;Landroid/support/v4/app/u;)Lrx/b/b;

    move-result-object v3

    invoke-static {p0, p1, v0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialArticleWidget$$Lambda$3;->lambdaFactory$(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialArticleWidget;Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialArticleDisplayable;Landroid/support/v4/app/u;)Lrx/b/b;

    move-result-object v4

    .line 127
    invoke-virtual {v2, v3, v4}, Lrx/d;->a(Lrx/b/b;Lrx/b/b;)Lrx/k;

    move-result-object v2

    .line 125
    invoke-virtual {v1, v2}, Lrx/j/b;->a(Lrx/k;)V

    .line 145
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialArticleWidget;->compositeSubscription:Lrx/j/b;

    iget-object v2, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialArticleWidget;->articleHeader:Landroid/view/View;

    invoke-static {v2}, Lcom/c/a/b/c;->a(Landroid/view/View;)Lrx/d;

    move-result-object v2

    invoke-static {p0, p1, v0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialArticleWidget$$Lambda$4;->lambdaFactory$(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialArticleWidget;Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialArticleDisplayable;Landroid/support/v4/app/u;)Lrx/b/b;

    move-result-object v0

    invoke-virtual {v2, v0}, Lrx/d;->d(Lrx/b/b;)Lrx/k;

    move-result-object v0

    invoke-virtual {v1, v0}, Lrx/j/b;->a(Lrx/k;)V

    .line 160
    return-void

    .line 84
    :cond_1
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialArticleWidget;->subtitle:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 85
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialArticleWidget;->userAvatar:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 88
    :cond_2
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialArticleWidget;->subtitle:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 89
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialArticleWidget;->userAvatar:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 90
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialArticleDisplayable;->getUser()Lcm/aptoide/pt/model/v7/Comment$User;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 91
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialArticleWidget;->title:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 92
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialArticleWidget;->title:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialArticleDisplayable;->getUser()Lcm/aptoide/pt/model/v7/Comment$User;

    move-result-object v2

    invoke-virtual {v2}, Lcm/aptoide/pt/model/v7/Comment$User;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialArticleWidget;->storeAvatar:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 94
    invoke-static {v0}, Lcm/aptoide/pt/imageloader/ImageLoader;->with(Landroid/content/Context;)Lcm/aptoide/pt/imageloader/ImageLoader;

    move-result-object v1

    .line 95
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialArticleDisplayable;->getUser()Lcm/aptoide/pt/model/v7/Comment$User;

    move-result-object v2

    invoke-virtual {v2}, Lcm/aptoide/pt/model/v7/Comment$User;->getAvatar()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialArticleWidget;->storeAvatar:Landroid/widget/ImageView;

    invoke-virtual {v1, v2, v3}, Lcm/aptoide/pt/imageloader/ImageLoader;->loadWithShadowCircleTransform(Ljava/lang/String;Landroid/widget/ImageView;)Lcom/bumptech/glide/g/b/k;

    goto/16 :goto_0
.end method

.method public bridge synthetic bindView(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialCardDisplayable;)V
    .locals 0

    .prologue
    .line 23
    check-cast p1, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialArticleDisplayable;

    invoke-virtual {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialArticleWidget;->bindView(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialArticleDisplayable;)V

    return-void
.end method

.method getCardTypeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    const-string v0, "SOCIAL_ARTICLE"

    return-object v0
.end method

.method synthetic lambda$bindView$0(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialArticleDisplayable;Landroid/support/v4/app/u;Landroid/view/View;)V
    .locals 5

    .prologue
    .line 110
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialArticleDisplayable;->getAbUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialArticleWidget;->knockWithSixpackCredentials(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialArticleDisplayable;->getLink()Lcm/aptoide/pt/v8engine/link/Link;

    move-result-object v0

    invoke-interface {v0, p2}, Lcm/aptoide/pt/v8engine/link/Link;->launch(Landroid/content/Context;)V

    .line 112
    const-string v0, "SOCIAL_ARTICLE"

    const-string v1, "(blank)"

    .line 113
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialArticleDisplayable;->getArticleTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialArticleDisplayable;->getTitle()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Open Article"

    .line 112
    invoke-static {v0, v1, v2, v3, v4}, Lcm/aptoide/pt/v8engine/analytics/Analytics$AppsTimeline;->clickOnCard(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    invoke-static {}, Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Data;->builder()Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Data$DataBuilder;

    move-result-object v0

    const-string v1, "SOCIAL_ARTICLE"

    .line 116
    invoke-virtual {v0, v1}, Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Data$DataBuilder;->cardType(Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Data$DataBuilder;

    move-result-object v0

    .line 117
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialArticleDisplayable;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Data$DataBuilder;->source(Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Data$DataBuilder;

    move-result-object v0

    .line 118
    invoke-static {}, Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Specific;->builder()Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Specific$SpecificBuilder;

    move-result-object v1

    .line 119
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialArticleDisplayable;->getLink()Lcm/aptoide/pt/v8engine/link/Link;

    move-result-object v2

    invoke-interface {v2}, Lcm/aptoide/pt/v8engine/link/Link;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Specific$SpecificBuilder;->url(Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Specific$SpecificBuilder;

    move-result-object v1

    iget-object v2, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialArticleWidget;->packageName:Ljava/lang/String;

    .line 120
    invoke-virtual {v1, v2}, Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Specific$SpecificBuilder;->app(Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Specific$SpecificBuilder;

    move-result-object v1

    .line 121
    invoke-virtual {v1}, Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Specific$SpecificBuilder;->build()Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Specific;

    move-result-object v1

    .line 118
    invoke-virtual {v0, v1}, Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Data$DataBuilder;->specific(Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Specific;)Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Data$DataBuilder;

    move-result-object v0

    .line 122
    invoke-virtual {v0}, Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Data$DataBuilder;->build()Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Data;

    move-result-object v0

    const-string v1, "OPEN_ARTICLE"

    .line 115
    invoke-virtual {p1, v0, v1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialArticleDisplayable;->sendOpenArticleEvent(Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Data;Ljava/lang/String;)V

    .line 123
    return-void
.end method

.method synthetic lambda$bindView$1(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialArticleDisplayable;Landroid/support/v4/app/u;Ljava/util/List;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 128
    if-eqz p3, :cond_1

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 129
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/database/realm/Installed;

    invoke-virtual {v0}, Lcm/aptoide/pt/database/realm/Installed;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialArticleWidget;->appName:Ljava/lang/String;

    .line 130
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/database/realm/Installed;

    invoke-virtual {v0}, Lcm/aptoide/pt/database/realm/Installed;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialArticleWidget;->packageName:Ljava/lang/String;

    .line 134
    :goto_0
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialArticleWidget;->appName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialArticleWidget;->relatedTo:Landroid/widget/TextView;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialArticleWidget;->appName:Ljava/lang/String;

    invoke-virtual {p1, p2, v1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialArticleDisplayable;->getAppRelatedToText(Landroid/content/Context;Ljava/lang/String;)Landroid/text/Spannable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    :cond_0
    return-void

    .line 132
    :cond_1
    invoke-direct {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialArticleWidget;->setAppNameToFirstLinkedApp(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialArticleDisplayable;)V

    goto :goto_0
.end method

.method synthetic lambda$bindView$2(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialArticleDisplayable;Landroid/support/v4/app/u;Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 138
    invoke-direct {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialArticleWidget;->setAppNameToFirstLinkedApp(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialArticleDisplayable;)V

    .line 139
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialArticleWidget;->appName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialArticleWidget;->relatedTo:Landroid/widget/TextView;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialArticleWidget;->appName:Ljava/lang/String;

    invoke-virtual {p1, p2, v1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialArticleDisplayable;->getAppRelatedToText(Landroid/content/Context;Ljava/lang/String;)Landroid/text/Spannable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    :cond_0
    invoke-virtual {p3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 143
    return-void
.end method

.method synthetic lambda$bindView$3(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialArticleDisplayable;Landroid/support/v4/app/u;Ljava/lang/Void;)V
    .locals 5

    .prologue
    .line 146
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialArticleDisplayable;->getAbUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialArticleWidget;->knockWithSixpackCredentials(Ljava/lang/String;)V

    .line 147
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialArticleDisplayable;->getDeveloperLink()Lcm/aptoide/pt/v8engine/link/Link;

    move-result-object v0

    invoke-interface {v0, p2}, Lcm/aptoide/pt/v8engine/link/Link;->launch(Landroid/content/Context;)V

    .line 148
    const-string v0, "SOCIAL_ARTICLE"

    const-string v1, "(blank)"

    .line 149
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialArticleDisplayable;->getArticleTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialArticleDisplayable;->getTitle()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Open Article Header"

    .line 148
    invoke-static {v0, v1, v2, v3, v4}, Lcm/aptoide/pt/v8engine/analytics/Analytics$AppsTimeline;->clickOnCard(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    invoke-static {}, Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Data;->builder()Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Data$DataBuilder;

    move-result-object v0

    const-string v1, "SOCIAL_ARTICLE"

    .line 152
    invoke-virtual {v0, v1}, Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Data$DataBuilder;->cardType(Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Data$DataBuilder;

    move-result-object v0

    .line 153
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialArticleDisplayable;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Data$DataBuilder;->source(Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Data$DataBuilder;

    move-result-object v0

    .line 154
    invoke-static {}, Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Specific;->builder()Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Specific$SpecificBuilder;

    move-result-object v1

    .line 155
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialArticleDisplayable;->getDeveloperLink()Lcm/aptoide/pt/v8engine/link/Link;

    move-result-object v2

    invoke-interface {v2}, Lcm/aptoide/pt/v8engine/link/Link;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Specific$SpecificBuilder;->url(Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Specific$SpecificBuilder;

    move-result-object v1

    iget-object v2, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialArticleWidget;->packageName:Ljava/lang/String;

    .line 156
    invoke-virtual {v1, v2}, Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Specific$SpecificBuilder;->app(Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Specific$SpecificBuilder;

    move-result-object v1

    .line 157
    invoke-virtual {v1}, Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Specific$SpecificBuilder;->build()Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Specific;

    move-result-object v1

    .line 154
    invoke-virtual {v0, v1}, Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Data$DataBuilder;->specific(Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Specific;)Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Data$DataBuilder;

    move-result-object v0

    .line 158
    invoke-virtual {v0}, Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Data$DataBuilder;->build()Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Data;

    move-result-object v0

    const-string v1, "OPEN_BLOG"

    .line 151
    invoke-virtual {p1, v0, v1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialArticleDisplayable;->sendOpenArticleEvent(Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Data;Ljava/lang/String;)V

    .line 159
    return-void
.end method
