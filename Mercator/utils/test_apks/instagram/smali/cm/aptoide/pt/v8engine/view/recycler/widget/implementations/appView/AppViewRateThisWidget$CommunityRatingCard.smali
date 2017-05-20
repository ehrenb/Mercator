.class final Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateThisWidget$CommunityRatingCard;
.super Ljava/lang/Object;
.source "AppViewRateThisWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateThisWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CommunityRatingCard"
.end annotation


# instance fields
.field private avgRating:Landroid/widget/TextView;

.field private avgRatingBar:Landroid/widget/RatingBar;

.field private nrRates:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 188
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->appview_avg_rating:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateThisWidget$CommunityRatingCard;->avgRating:Landroid/widget/TextView;

    .line 189
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->appview_rating_bar_avg:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RatingBar;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateThisWidget$CommunityRatingCard;->avgRatingBar:Landroid/widget/RatingBar;

    .line 190
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->tv_number_of_rates:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateThisWidget$CommunityRatingCard;->nrRates:Landroid/widget/TextView;

    .line 191
    return-void
.end method


# virtual methods
.method public bindView(Lcm/aptoide/pt/model/v7/GetApp;)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 194
    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/GetApp;->getNodes()Lcm/aptoide/pt/model/v7/GetApp$Nodes;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/GetApp$Nodes;->getMeta()Lcm/aptoide/pt/model/v7/GetAppMeta;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/GetAppMeta;->getData()Lcm/aptoide/pt/model/v7/GetAppMeta$App;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getStats()Lcm/aptoide/pt/model/v7/GetAppMeta$Stats;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/GetAppMeta$Stats;->getRating()Lcm/aptoide/pt/model/v7/GetAppMeta$Stats$Rating;

    move-result-object v0

    .line 196
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateThisWidget$CommunityRatingCard;->avgRating:Landroid/widget/TextView;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    const-string v3, "%.1f"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/GetAppMeta$Stats$Rating;->getAvg()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateThisWidget$CommunityRatingCard;->avgRatingBar:Landroid/widget/RatingBar;

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/GetAppMeta$Stats$Rating;->getAvg()F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/RatingBar;->setRating(F)V

    .line 198
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateThisWidget$CommunityRatingCard;->nrRates:Landroid/widget/TextView;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    const-string v3, "%d"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/GetAppMeta$Stats$Rating;->getTotal()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v6

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 199
    return-void
.end method
