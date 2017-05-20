.class public Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialRecommendationWidget;
.super Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialCardWidget;
.source "SocialRecommendationWidget.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialCardWidget",
        "<",
        "Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialRecommendationDisplayable;",
        ">;"
    }
.end annotation


# instance fields
.field private final CARD_TYPE_NAME:Ljava/lang/String;

.field private appIcon:Landroid/widget/ImageView;

.field private appName:Landroid/widget/TextView;

.field private cardContent:Landroid/widget/RelativeLayout;

.field private cardView:Landroid/support/v7/widget/CardView;

.field private getApp:Landroid/widget/TextView;

.field private storeAvatar:Landroid/widget/ImageView;

.field private storeName:Landroid/widget/TextView;

.field private userAvatar:Landroid/widget/ImageView;

.field private userName:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialCardWidget;-><init>(Landroid/view/View;)V

    .line 21
    const-string v0, "SOCIAL_RECOMMENDATION"

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialRecommendationWidget;->CARD_TYPE_NAME:Ljava/lang/String;

    .line 34
    return-void
.end method


# virtual methods
.method protected assignViews(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 37
    invoke-super {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialCardWidget;->assignViews(Landroid/view/View;)V

    .line 38
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->card_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialRecommendationWidget;->storeName:Landroid/widget/TextView;

    .line 39
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->card_subtitle:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialRecommendationWidget;->userName:Landroid/widget/TextView;

    .line 40
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->card_image:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialRecommendationWidget;->storeAvatar:Landroid/widget/ImageView;

    .line 41
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->card_user_avatar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialRecommendationWidget;->userAvatar:Landroid/widget/ImageView;

    .line 42
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->displayable_social_timeline_recommendation_similar_apps:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialRecommendationWidget;->appName:Landroid/widget/TextView;

    .line 44
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->displayable_social_timeline_recommendation_icon:I

    .line 45
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialRecommendationWidget;->appIcon:Landroid/widget/ImageView;

    .line 46
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->displayable_social_timeline_recommendation_get_app_button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialRecommendationWidget;->getApp:Landroid/widget/TextView;

    .line 48
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->card:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/CardView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialRecommendationWidget;->cardView:Landroid/support/v7/widget/CardView;

    .line 49
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->displayable_social_timeline_recommendation_card_content:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialRecommendationWidget;->cardContent:Landroid/widget/RelativeLayout;

    .line 51
    return-void
.end method

.method public bridge synthetic bindView(Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;)V
    .locals 0

    .prologue
    .line 19
    check-cast p1, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialRecommendationDisplayable;

    invoke-virtual {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialRecommendationWidget;->bindView(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialRecommendationDisplayable;)V

    return-void
.end method

.method public bridge synthetic bindView(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/CardDisplayable;)V
    .locals 0

    .prologue
    .line 19
    check-cast p1, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialRecommendationDisplayable;

    invoke-virtual {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialRecommendationWidget;->bindView(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialRecommendationDisplayable;)V

    return-void
.end method

.method public bridge synthetic bindView(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialCardDisplayable;)V
    .locals 0

    .prologue
    .line 19
    check-cast p1, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialRecommendationDisplayable;

    invoke-virtual {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialRecommendationWidget;->bindView(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialRecommendationDisplayable;)V

    return-void
.end method

.method public bindView(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialRecommendationDisplayable;)V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 54
    invoke-super {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialCardWidget;->bindView(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialCardDisplayable;)V

    .line 55
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialRecommendationWidget;->getContext()Landroid/support/v4/app/u;

    move-result-object v0

    .line 56
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialRecommendationDisplayable;->getStore()Lcm/aptoide/pt/model/v7/store/Store;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 57
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialRecommendationWidget;->storeName:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 58
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialRecommendationWidget;->storeName:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialRecommendationDisplayable;->getStore()Lcm/aptoide/pt/model/v7/store/Store;

    move-result-object v2

    invoke-virtual {v2}, Lcm/aptoide/pt/model/v7/store/Store;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialRecommendationWidget;->storeAvatar:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 60
    invoke-static {v0}, Lcm/aptoide/pt/imageloader/ImageLoader;->with(Landroid/content/Context;)Lcm/aptoide/pt/imageloader/ImageLoader;

    move-result-object v1

    .line 61
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialRecommendationDisplayable;->getStore()Lcm/aptoide/pt/model/v7/store/Store;

    move-result-object v2

    invoke-virtual {v2}, Lcm/aptoide/pt/model/v7/store/Store;->getAvatar()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialRecommendationWidget;->storeAvatar:Landroid/widget/ImageView;

    invoke-virtual {v1, v2, v3}, Lcm/aptoide/pt/imageloader/ImageLoader;->loadWithShadowCircleTransform(Ljava/lang/String;Landroid/widget/ImageView;)Lcom/bumptech/glide/g/b/k;

    .line 62
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialRecommendationDisplayable;->getUser()Lcm/aptoide/pt/model/v7/Comment$User;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 63
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialRecommendationWidget;->userName:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 64
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialRecommendationWidget;->userName:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialRecommendationDisplayable;->getUser()Lcm/aptoide/pt/model/v7/Comment$User;

    move-result-object v2

    invoke-virtual {v2}, Lcm/aptoide/pt/model/v7/Comment$User;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialRecommendationWidget;->userAvatar:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 66
    invoke-static {v0}, Lcm/aptoide/pt/imageloader/ImageLoader;->with(Landroid/content/Context;)Lcm/aptoide/pt/imageloader/ImageLoader;

    move-result-object v1

    .line 67
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialRecommendationDisplayable;->getUser()Lcm/aptoide/pt/model/v7/Comment$User;

    move-result-object v2

    invoke-virtual {v2}, Lcm/aptoide/pt/model/v7/Comment$User;->getAvatar()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialRecommendationWidget;->userAvatar:Landroid/widget/ImageView;

    invoke-virtual {v1, v2, v3}, Lcm/aptoide/pt/imageloader/ImageLoader;->loadWithShadowCircleTransform(Ljava/lang/String;Landroid/widget/ImageView;)Lcom/bumptech/glide/g/b/k;

    .line 85
    :cond_0
    :goto_0
    invoke-static {v0}, Lcm/aptoide/pt/imageloader/ImageLoader;->with(Landroid/content/Context;)Lcm/aptoide/pt/imageloader/ImageLoader;

    move-result-object v1

    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialRecommendationDisplayable;->getAppIcon()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialRecommendationWidget;->appIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v2, v3}, Lcm/aptoide/pt/imageloader/ImageLoader;->load(Ljava/lang/String;Landroid/widget/ImageView;)Lcom/bumptech/glide/g/b/k;

    .line 87
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialRecommendationWidget;->appName:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialRecommendationDisplayable;->getAppName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialRecommendationWidget;->getApp:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 90
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialRecommendationWidget;->getApp:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialRecommendationDisplayable;->getAppText(Landroid/content/Context;)Landroid/text/Spannable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialRecommendationWidget;->cardContent:Landroid/widget/RelativeLayout;

    invoke-static {p0, p1, v0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialRecommendationWidget$$Lambda$1;->lambdaFactory$(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialRecommendationWidget;Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialRecommendationDisplayable;Landroid/support/v4/app/u;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    return-void

    .line 69
    :cond_1
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialRecommendationWidget;->userName:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 70
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialRecommendationWidget;->userAvatar:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 73
    :cond_2
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialRecommendationWidget;->userName:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 74
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialRecommendationWidget;->userAvatar:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 75
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialRecommendationDisplayable;->getUser()Lcm/aptoide/pt/model/v7/Comment$User;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 76
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialRecommendationWidget;->storeName:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 77
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialRecommendationWidget;->storeName:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialRecommendationDisplayable;->getUser()Lcm/aptoide/pt/model/v7/Comment$User;

    move-result-object v2

    invoke-virtual {v2}, Lcm/aptoide/pt/model/v7/Comment$User;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialRecommendationWidget;->storeAvatar:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 79
    invoke-static {v0}, Lcm/aptoide/pt/imageloader/ImageLoader;->with(Landroid/content/Context;)Lcm/aptoide/pt/imageloader/ImageLoader;

    move-result-object v1

    .line 80
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialRecommendationDisplayable;->getUser()Lcm/aptoide/pt/model/v7/Comment$User;

    move-result-object v2

    invoke-virtual {v2}, Lcm/aptoide/pt/model/v7/Comment$User;->getAvatar()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialRecommendationWidget;->storeAvatar:Landroid/widget/ImageView;

    invoke-virtual {v1, v2, v3}, Lcm/aptoide/pt/imageloader/ImageLoader;->loadWithShadowCircleTransform(Ljava/lang/String;Landroid/widget/ImageView;)Lcom/bumptech/glide/g/b/k;

    goto :goto_0
.end method

.method getCardTypeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    const-string v0, "SOCIAL_RECOMMENDATION"

    return-object v0
.end method

.method synthetic lambda$bindView$0(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialRecommendationDisplayable;Landroid/support/v4/app/u;Landroid/view/View;)V
    .locals 5

    .prologue
    .line 92
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialRecommendationDisplayable;->getAbUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialRecommendationWidget;->knockWithSixpackCredentials(Ljava/lang/String;)V

    .line 94
    const-string v0, "SOCIAL_RECOMMENDATION"

    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialRecommendationDisplayable;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "(blank)"

    .line 95
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialRecommendationDisplayable;->getTitle()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Open App View"

    .line 94
    invoke-static {v0, v1, v2, v3, v4}, Lcm/aptoide/pt/v8engine/analytics/Analytics$AppsTimeline;->clickOnCard(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    check-cast p2, Lcm/aptoide/pt/v8engine/interfaces/FragmentShower;

    invoke-static {}, Lcm/aptoide/pt/v8engine/V8Engine;->getFragmentProvider()Lcm/aptoide/pt/v8engine/configuration/FragmentProvider;

    move-result-object v0

    .line 106
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialRecommendationDisplayable;->getAppId()J

    move-result-wide v2

    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialRecommendationDisplayable;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v3, v1}, Lcm/aptoide/pt/v8engine/configuration/FragmentProvider;->newAppViewFragment(JLjava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 105
    invoke-interface {p2, v0}, Lcm/aptoide/pt/v8engine/interfaces/FragmentShower;->pushFragmentV4(Landroid/support/v4/app/Fragment;)V

    .line 107
    return-void
.end method
