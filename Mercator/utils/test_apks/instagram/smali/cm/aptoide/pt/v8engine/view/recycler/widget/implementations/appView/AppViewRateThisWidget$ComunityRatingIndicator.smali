.class final Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateThisWidget$ComunityRatingIndicator;
.super Ljava/lang/Object;
.source "AppViewRateThisWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateThisWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ComunityRatingIndicator"
.end annotation


# instance fields
.field private ratingBar:Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateThisWidget$ComunityRatingBar;

.field private ratingCard:Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateThisWidget$CommunityRatingCard;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->ratingCard:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 165
    if-eqz v0, :cond_0

    .line 166
    new-instance v1, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateThisWidget$CommunityRatingCard;

    invoke-direct {v1, v0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateThisWidget$CommunityRatingCard;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateThisWidget$ComunityRatingIndicator;->ratingCard:Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateThisWidget$CommunityRatingCard;

    .line 168
    :cond_0
    new-instance v0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateThisWidget$ComunityRatingBar;

    invoke-direct {v0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateThisWidget$ComunityRatingBar;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateThisWidget$ComunityRatingIndicator;->ratingBar:Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateThisWidget$ComunityRatingBar;

    .line 169
    return-void
.end method


# virtual methods
.method public bindView(Lcm/aptoide/pt/model/v7/GetApp;)V
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateThisWidget$ComunityRatingIndicator;->ratingCard:Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateThisWidget$CommunityRatingCard;

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateThisWidget$ComunityRatingIndicator;->ratingCard:Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateThisWidget$CommunityRatingCard;

    invoke-virtual {v0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateThisWidget$CommunityRatingCard;->bindView(Lcm/aptoide/pt/model/v7/GetApp;)V

    .line 175
    :cond_0
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateThisWidget$ComunityRatingIndicator;->ratingBar:Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateThisWidget$ComunityRatingBar;

    if-eqz v0, :cond_1

    .line 176
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateThisWidget$ComunityRatingIndicator;->ratingBar:Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateThisWidget$ComunityRatingBar;

    invoke-virtual {v0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateThisWidget$ComunityRatingBar;->bindView(Lcm/aptoide/pt/model/v7/GetApp;)V

    .line 178
    :cond_1
    return-void
.end method
