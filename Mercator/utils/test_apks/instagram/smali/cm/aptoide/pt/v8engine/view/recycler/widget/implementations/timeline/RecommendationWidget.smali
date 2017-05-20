.class public Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/RecommendationWidget;
.super Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/CardWidget;
.source "RecommendationWidget.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/CardWidget",
        "<",
        "Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/RecommendationDisplayable;",
        ">;"
    }
.end annotation


# static fields
.field private static final CARD_TYPE_NAME:Ljava/lang/String; = "RECOMMENDATION"


# instance fields
.field private appIcon:Landroid/widget/ImageView;

.field private appName:Landroid/widget/TextView;

.field private cardContent:Landroid/widget/RelativeLayout;

.field private cardView:Landroid/support/v7/widget/CardView;

.field private getApp:Landroid/widget/TextView;

.field private image:Landroid/widget/ImageView;

.field private similarApps:Landroid/widget/TextView;

.field private subtitle:Landroid/widget/TextView;

.field private title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/CardWidget;-><init>(Landroid/view/View;)V

    .line 42
    return-void
.end method


# virtual methods
.method protected assignViews(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 45
    invoke-super {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/CardWidget;->assignViews(Landroid/view/View;)V

    .line 46
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->displayable_social_timeline_recommendation_card_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/RecommendationWidget;->title:Landroid/widget/TextView;

    .line 48
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->displayable_social_timeline_recommendation_card_subtitle:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/RecommendationWidget;->subtitle:Landroid/widget/TextView;

    .line 50
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->displayable_social_timeline_recommendation_card_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/RecommendationWidget;->image:Landroid/widget/ImageView;

    .line 52
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->displayable_social_timeline_recommendation_icon:I

    .line 53
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/RecommendationWidget;->appIcon:Landroid/widget/ImageView;

    .line 54
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->displayable_social_timeline_recommendation_name:I

    .line 55
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/RecommendationWidget;->appName:Landroid/widget/TextView;

    .line 56
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->displayable_social_timeline_recommendation_similar_apps:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/RecommendationWidget;->similarApps:Landroid/widget/TextView;

    .line 58
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->displayable_social_timeline_recommendation_get_app_button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/RecommendationWidget;->getApp:Landroid/widget/TextView;

    .line 60
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->card:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/CardView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/RecommendationWidget;->cardView:Landroid/support/v7/widget/CardView;

    .line 61
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->displayable_social_timeline_recommendation_card_content:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/RecommendationWidget;->cardContent:Landroid/widget/RelativeLayout;

    .line 63
    return-void
.end method

.method public bridge synthetic bindView(Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;)V
    .locals 0

    .prologue
    .line 27
    check-cast p1, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/RecommendationDisplayable;

    invoke-virtual {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/RecommendationWidget;->bindView(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/RecommendationDisplayable;)V

    return-void
.end method

.method public bridge synthetic bindView(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/CardDisplayable;)V
    .locals 0

    .prologue
    .line 27
    check-cast p1, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/RecommendationDisplayable;

    invoke-virtual {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/RecommendationWidget;->bindView(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/RecommendationDisplayable;)V

    return-void
.end method

.method public bindView(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/RecommendationDisplayable;)V
    .locals 4

    .prologue
    .line 66
    invoke-super {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/CardWidget;->bindView(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/CardDisplayable;)V

    .line 67
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/RecommendationWidget;->getContext()Landroid/support/v4/app/u;

    move-result-object v0

    .line 68
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/RecommendationWidget;->title:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/RecommendationDisplayable;->getStyledTitle(Landroid/content/Context;)Landroid/text/Spannable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/RecommendationWidget;->subtitle:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/RecommendationDisplayable;->getTimeSinceRecommendation(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/RecommendationWidget;->cardView:Landroid/support/v7/widget/CardView;

    invoke-virtual {p0, p1, v1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/RecommendationWidget;->setCardViewMargin(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/CardDisplayable;Landroid/support/v7/widget/CardView;)V

    .line 73
    invoke-static {v0}, Lcm/aptoide/pt/imageloader/ImageLoader;->with(Landroid/content/Context;)Lcm/aptoide/pt/imageloader/ImageLoader;

    move-result-object v1

    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/RecommendationDisplayable;->getAvatarResource()I

    move-result v2

    iget-object v3, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/RecommendationWidget;->image:Landroid/widget/ImageView;

    invoke-virtual {v1, v2, v3}, Lcm/aptoide/pt/imageloader/ImageLoader;->loadWithShadowCircleTransform(ILandroid/widget/ImageView;)Lcom/bumptech/glide/g/b/k;

    .line 75
    invoke-static {v0}, Lcm/aptoide/pt/imageloader/ImageLoader;->with(Landroid/content/Context;)Lcm/aptoide/pt/imageloader/ImageLoader;

    move-result-object v1

    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/RecommendationDisplayable;->getAppIcon()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/RecommendationWidget;->appIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v2, v3}, Lcm/aptoide/pt/imageloader/ImageLoader;->load(Ljava/lang/String;Landroid/widget/ImageView;)Lcom/bumptech/glide/g/b/k;

    .line 77
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/RecommendationWidget;->appName:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/RecommendationDisplayable;->getAppName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/RecommendationWidget;->similarApps:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/RecommendationDisplayable;->getSimilarAppsText(Landroid/content/Context;)Landroid/text/Spannable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/RecommendationWidget;->getApp:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 82
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/RecommendationWidget;->getApp:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/RecommendationDisplayable;->getAppText(Landroid/content/Context;)Landroid/text/Spannable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/RecommendationWidget;->compositeSubscription:Lrx/j/b;

    iget-object v2, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/RecommendationWidget;->cardContent:Landroid/widget/RelativeLayout;

    invoke-static {v2}, Lcom/c/a/b/c;->a(Landroid/view/View;)Lrx/d;

    move-result-object v2

    invoke-static {p0, p1, v0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/RecommendationWidget$$Lambda$1;->lambdaFactory$(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/RecommendationWidget;Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/RecommendationDisplayable;Landroid/support/v4/app/u;)Lrx/b/b;

    move-result-object v0

    invoke-virtual {v2, v0}, Lrx/d;->d(Lrx/b/b;)Lrx/k;

    move-result-object v0

    invoke-virtual {v1, v0}, Lrx/j/b;->a(Lrx/k;)V

    .line 101
    return-void
.end method

.method getCardTypeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    const-string v0, "RECOMMENDATION"

    return-object v0
.end method

.method synthetic lambda$bindView$0(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/RecommendationDisplayable;Landroid/support/v4/app/u;Ljava/lang/Void;)V
    .locals 5

    .prologue
    .line 85
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/RecommendationDisplayable;->getAbUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/RecommendationWidget;->knockWithSixpackCredentials(Ljava/lang/String;)V

    .line 87
    const-string v0, "RECOMMENDATION"

    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/RecommendationDisplayable;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "(blank)"

    .line 88
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/RecommendationDisplayable;->getTitle()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Open App View"

    .line 87
    invoke-static {v0, v1, v2, v3, v4}, Lcm/aptoide/pt/v8engine/analytics/Analytics$AppsTimeline;->clickOnCard(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    invoke-static {}, Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Data;->builder()Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Data$DataBuilder;

    move-result-object v0

    const-string v1, "RECOMMENDATION"

    .line 91
    invoke-virtual {v0, v1}, Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Data$DataBuilder;->cardType(Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Data$DataBuilder;

    move-result-object v0

    const-string v1, "APTOIDE"

    .line 92
    invoke-virtual {v0, v1}, Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Data$DataBuilder;->source(Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Data$DataBuilder;

    move-result-object v0

    .line 93
    invoke-static {}, Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Specific;->builder()Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Specific$SpecificBuilder;

    move-result-object v1

    .line 94
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/RecommendationDisplayable;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Specific$SpecificBuilder;->app(Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Specific$SpecificBuilder;

    move-result-object v1

    .line 95
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/RecommendationDisplayable;->getSimilarAppPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Specific$SpecificBuilder;->based_on(Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Specific$SpecificBuilder;

    move-result-object v1

    .line 96
    invoke-virtual {v1}, Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Specific$SpecificBuilder;->build()Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Specific;

    move-result-object v1

    .line 93
    invoke-virtual {v0, v1}, Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Data$DataBuilder;->specific(Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Specific;)Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Data$DataBuilder;

    move-result-object v0

    .line 97
    invoke-virtual {v0}, Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Data$DataBuilder;->build()Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Data;

    move-result-object v0

    const-string v1, "OPEN_APP"

    .line 90
    invoke-virtual {p1, v0, v1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/RecommendationDisplayable;->sendClickEvent(Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Data;Ljava/lang/String;)V

    .line 98
    check-cast p2, Lcm/aptoide/pt/v8engine/interfaces/FragmentShower;

    invoke-static {}, Lcm/aptoide/pt/v8engine/V8Engine;->getFragmentProvider()Lcm/aptoide/pt/v8engine/configuration/FragmentProvider;

    move-result-object v0

    .line 99
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/RecommendationDisplayable;->getAppId()J

    move-result-wide v2

    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/RecommendationDisplayable;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v3, v1}, Lcm/aptoide/pt/v8engine/configuration/FragmentProvider;->newAppViewFragment(JLjava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 98
    invoke-interface {p2, v0}, Lcm/aptoide/pt/v8engine/interfaces/FragmentShower;->pushFragmentV4(Landroid/support/v4/app/Fragment;)V

    .line 100
    return-void
.end method
