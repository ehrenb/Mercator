.class public Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateAndReviewsWidget;
.super Lcm/aptoide/pt/v8engine/view/recycler/widget/Widget;
.source "AppViewRateAndReviewsWidget.java"


# annotations
.annotation runtime Lcm/aptoide/pt/v8engine/view/recycler/widget/Displayables;
    value = {
        Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewRateAndCommentsDisplayable;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateAndReviewsWidget$MiniTopReviewViewHolder;,
        Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateAndReviewsWidget$TopReviewsAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcm/aptoide/pt/v8engine/view/recycler/widget/Widget",
        "<",
        "Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewRateAndCommentsDisplayable;",
        ">;"
    }
.end annotation


# static fields
.field private static final MAX_COMMENTS:I = 0x3

.field private static final TAG:Ljava/lang/String;

.field public static final TIME_BETWEEN_SCROLL:J = 0x7d0L


# instance fields
.field private appName:Ljava/lang/String;

.field private final aptoideClientUUID:Lcm/aptoide/pt/interfaces/AptoideClientUUID;

.field private commentsLayout:Landroid/view/View;

.field private final dialogUtils:Lcm/aptoide/pt/v8engine/util/DialogUtils;

.field private emptyReviewTextView:Landroid/widget/TextView;

.field private emptyReviewsLayout:Landroid/view/View;

.field private packageName:Ljava/lang/String;

.field private rateThisButton:Landroid/widget/Button;

.field private rateThisButtonLarge:Landroid/widget/Button;

.field private ratingBar:Landroid/widget/RatingBar;

.field private ratingLayout:Landroid/view/View;

.field private ratingValue:Landroid/widget/TextView;

.field private readAllButton:Landroid/widget/Button;

.field private storeName:Ljava/lang/String;

.field private topReviewsList:Landroid/support/v7/widget/RecyclerView;

.field private topReviewsProgress:Landroid/support/v4/widget/ContentLoadingProgressBar;

.field private usersToVote:I

.field private usersVotedTextView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    const-class v0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateAndReviewsWidget;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateAndReviewsWidget;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/Widget;-><init>(Landroid/view/View;)V

    .line 87
    new-instance v0, Lcm/aptoide/pt/dataprovider/repository/IdsRepositoryImpl;

    invoke-static {}, Lcm/aptoide/pt/preferences/secure/SecurePreferencesImplementation;->getInstance()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 88
    invoke-static {}, Lcm/aptoide/pt/dataprovider/DataProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcm/aptoide/pt/dataprovider/repository/IdsRepositoryImpl;-><init>(Landroid/content/SharedPreferences;Landroid/content/Context;)V

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateAndReviewsWidget;->aptoideClientUUID:Lcm/aptoide/pt/interfaces/AptoideClientUUID;

    .line 89
    new-instance v0, Lcm/aptoide/pt/v8engine/util/DialogUtils;

    invoke-direct {v0}, Lcm/aptoide/pt/v8engine/util/DialogUtils;-><init>()V

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateAndReviewsWidget;->dialogUtils:Lcm/aptoide/pt/v8engine/util/DialogUtils;

    .line 90
    return-void
.end method

.method static synthetic lambda$bindView$0(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 126
    invoke-static {}, Lcm/aptoide/pt/crashreports/CrashReport;->getInstance()Lcm/aptoide/pt/crashreports/CrashReport;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcm/aptoide/pt/crashreports/CrashReport;->log(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic lambda$bindView$3(Lcm/aptoide/pt/v8engine/interfaces/FragmentShower;Lcm/aptoide/pt/model/v7/GetAppMeta$App;Ljava/lang/Void;)V
    .locals 8

    .prologue
    .line 141
    invoke-static {}, Lcm/aptoide/pt/v8engine/V8Engine;->getFragmentProvider()Lcm/aptoide/pt/v8engine/configuration/FragmentProvider;

    move-result-object v1

    .line 142
    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getId()J

    move-result-wide v2

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getStore()Lcm/aptoide/pt/model/v7/store/Store;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/store/Store;->getName()Ljava/lang/String;

    move-result-object v5

    .line 143
    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getStore()Lcm/aptoide/pt/model/v7/store/Store;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/store/Store;->getAppearance()Lcm/aptoide/pt/model/v7/store/Store$Appearance;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/store/Store$Appearance;->getTheme()Ljava/lang/String;

    move-result-object v7

    .line 142
    invoke-interface/range {v1 .. v7}, Lcm/aptoide/pt/v8engine/configuration/FragmentProvider;->newRateAndReviewsFragment(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 141
    invoke-interface {p0, v0}, Lcm/aptoide/pt/v8engine/interfaces/FragmentShower;->pushFragmentV4(Landroid/support/v4/app/Fragment;)V

    .line 144
    return-void
.end method

.method static synthetic lambda$loadTopReviews$7(Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 184
    return-void
.end method

.method private loadReviews()V
    .locals 2

    .prologue
    .line 160
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateAndReviewsWidget;->storeName:Ljava/lang/String;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateAndReviewsWidget;->packageName:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateAndReviewsWidget;->loadTopReviews(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    return-void
.end method

.method private loadTopReviews(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 164
    const/4 v0, 0x3

    .line 166
    invoke-static {}, Lcm/aptoide/accountmanager/AptoideAccountManager;->getAccessToken()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateAndReviewsWidget;->aptoideClientUUID:Lcm/aptoide/pt/interfaces/AptoideClientUUID;

    invoke-interface {v2}, Lcm/aptoide/pt/interfaces/AptoideClientUUID;->getUniqueIdentifier()Ljava/lang/String;

    move-result-object v2

    .line 165
    invoke-static {p1, p2, v0, v1, v2}, Lcm/aptoide/pt/dataprovider/ws/v7/ListReviewsRequest;->ofTopReviews(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/ListReviewsRequest;

    move-result-object v0

    const/4 v1, 0x1

    .line 167
    invoke-virtual {v0, v1}, Lcm/aptoide/pt/dataprovider/ws/v7/ListReviewsRequest;->observe(Z)Lrx/d;

    move-result-object v0

    .line 168
    invoke-static {}, Lrx/a/b/a;->a()Lrx/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->a(Lrx/g;)Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateAndReviewsWidget$$Lambda$4;->lambdaFactory$(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateAndReviewsWidget;)Lrx/b/e;

    move-result-object v1

    .line 169
    invoke-virtual {v0, v1}, Lrx/d;->g(Lrx/b/e;)Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateAndReviewsWidget$$Lambda$5;->lambdaFactory$(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateAndReviewsWidget;)Lrx/b/b;

    move-result-object v1

    .line 180
    invoke-virtual {v0, v1}, Lrx/d;->b(Lrx/b/b;)Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateAndReviewsWidget$$Lambda$6;->lambdaFactory$(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateAndReviewsWidget;)Lrx/b/e;

    move-result-object v1

    .line 181
    invoke-virtual {v0, v1}, Lrx/d;->e(Lrx/b/e;)Lrx/d;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateAndReviewsWidget$$Lambda$7;->lambdaFactory$()Lrx/b/b;

    move-result-object v1

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateAndReviewsWidget$$Lambda$8;->lambdaFactory$(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateAndReviewsWidget;)Lrx/b/b;

    move-result-object v2

    .line 182
    invoke-virtual {v0, v1, v2}, Lrx/d;->a(Lrx/b/b;Lrx/b/b;)Lrx/k;

    move-result-object v0

    .line 189
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateAndReviewsWidget;->compositeSubscription:Lrx/j/b;

    invoke-virtual {v1, v0}, Lrx/j/b;->a(Lrx/k;)V

    .line 190
    return-void
.end method

.method private loadedData(Z)V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 194
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateAndReviewsWidget;->topReviewsProgress:Landroid/support/v4/widget/ContentLoadingProgressBar;

    invoke-virtual {v0, v2}, Landroid/support/v4/widget/ContentLoadingProgressBar;->setVisibility(I)V

    .line 196
    if-eqz p1, :cond_1

    .line 197
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateAndReviewsWidget;->ratingLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 198
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateAndReviewsWidget;->emptyReviewsLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 199
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateAndReviewsWidget;->commentsLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 200
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateAndReviewsWidget;->rateThisButtonLarge:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 201
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateAndReviewsWidget;->rateThisButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 213
    :cond_0
    :goto_0
    return-void

    .line 203
    :cond_1
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateAndReviewsWidget;->ratingLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 204
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateAndReviewsWidget;->emptyReviewsLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 205
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateAndReviewsWidget;->commentsLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 206
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateAndReviewsWidget;->rateThisButtonLarge:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 207
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateAndReviewsWidget;->rateThisButton:Landroid/widget/Button;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 209
    iget v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateAndReviewsWidget;->usersToVote:I

    if-nez v0, :cond_0

    .line 210
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateAndReviewsWidget;->emptyReviewTextView:Landroid/widget/TextView;

    sget v1, Lcm/aptoide/pt/v8engine/R$string;->be_the_first_to_rate_this_app:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method private scheduleAnimations(I)Lrx/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lrx/d",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 216
    const/4 v0, 0x1

    if-gt p1, v0, :cond_0

    .line 218
    sget-object v0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateAndReviewsWidget;->TAG:Ljava/lang/String;

    const-string v1, "Not enough top reviews to do paging animation."

    invoke-static {v0, v1}, Lcm/aptoide/pt/logger/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    invoke-static {}, Lrx/d;->d()Lrx/d;

    move-result-object v0

    .line 223
    :goto_0
    return-object v0

    .line 222
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0, p1}, Lrx/d;->a(II)Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateAndReviewsWidget$$Lambda$9;->lambdaFactory$(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateAndReviewsWidget;)Lrx/b/e;

    move-result-object v1

    .line 223
    invoke-virtual {v0, v1}, Lrx/d;->a(Lrx/b/e;)Lrx/d;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method protected assignViews(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 93
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->empty_reviews_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateAndReviewsWidget;->emptyReviewsLayout:Landroid/view/View;

    .line 94
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->rating_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateAndReviewsWidget;->ratingLayout:Landroid/view/View;

    .line 95
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->comments_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateAndReviewsWidget;->commentsLayout:Landroid/view/View;

    .line 97
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->users_voted:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateAndReviewsWidget;->usersVotedTextView:Landroid/widget/TextView;

    .line 98
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->empty_review_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateAndReviewsWidget;->emptyReviewTextView:Landroid/widget/TextView;

    .line 99
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->rating_value:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateAndReviewsWidget;->ratingValue:Landroid/widget/TextView;

    .line 100
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->rating_bar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RatingBar;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateAndReviewsWidget;->ratingBar:Landroid/widget/RatingBar;

    .line 101
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->rate_this_button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateAndReviewsWidget;->rateThisButton:Landroid/widget/Button;

    .line 102
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->rate_this_button2:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateAndReviewsWidget;->rateThisButtonLarge:Landroid/widget/Button;

    .line 103
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->read_all_button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateAndReviewsWidget;->readAllButton:Landroid/widget/Button;

    .line 105
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->top_comments_list:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateAndReviewsWidget;->topReviewsList:Landroid/support/v7/widget/RecyclerView;

    .line 106
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->top_comments_progress:I

    .line 107
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/ContentLoadingProgressBar;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateAndReviewsWidget;->topReviewsProgress:Landroid/support/v4/widget/ContentLoadingProgressBar;

    .line 108
    return-void
.end method

.method public bridge synthetic bindView(Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;)V
    .locals 0

    .prologue
    .line 55
    check-cast p1, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewRateAndCommentsDisplayable;

    invoke-virtual {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateAndReviewsWidget;->bindView(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewRateAndCommentsDisplayable;)V

    return-void
.end method

.method public bindView(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewRateAndCommentsDisplayable;)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 111
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewRateAndCommentsDisplayable;->getPojo()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/model/v7/GetApp;

    .line 112
    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/GetApp;->getNodes()Lcm/aptoide/pt/model/v7/GetApp$Nodes;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/GetApp$Nodes;->getMeta()Lcm/aptoide/pt/model/v7/GetAppMeta;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/GetAppMeta;->getData()Lcm/aptoide/pt/model/v7/GetAppMeta$App;

    move-result-object v2

    .line 113
    invoke-virtual {v2}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getStats()Lcm/aptoide/pt/model/v7/GetAppMeta$Stats;

    move-result-object v0

    .line 115
    invoke-virtual {v2}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateAndReviewsWidget;->appName:Ljava/lang/String;

    .line 116
    invoke-virtual {v2}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateAndReviewsWidget;->packageName:Ljava/lang/String;

    .line 117
    invoke-virtual {v2}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getStore()Lcm/aptoide/pt/model/v7/store/Store;

    move-result-object v1

    invoke-virtual {v1}, Lcm/aptoide/pt/model/v7/store/Store;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateAndReviewsWidget;->storeName:Ljava/lang/String;

    .line 119
    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/GetAppMeta$Stats;->getRating()Lcm/aptoide/pt/model/v7/GetAppMeta$Stats$Rating;

    move-result-object v1

    invoke-virtual {v1}, Lcm/aptoide/pt/model/v7/GetAppMeta$Stats$Rating;->getTotal()I

    move-result v1

    iput v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateAndReviewsWidget;->usersToVote:I

    .line 120
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateAndReviewsWidget;->usersVotedTextView:Landroid/widget/TextView;

    iget v3, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateAndReviewsWidget;->usersToVote:I

    int-to-long v4, v3

    invoke-static {v4, v5}, Lcm/aptoide/pt/utils/AptoideUtils$StringU;->withSuffix(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/GetAppMeta$Stats;->getRating()Lcm/aptoide/pt/model/v7/GetAppMeta$Stats$Rating;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/GetAppMeta$Stats$Rating;->getAvg()F

    move-result v0

    .line 123
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateAndReviewsWidget;->ratingValue:Landroid/widget/TextView;

    sget-object v3, Lcm/aptoide/pt/utils/AptoideUtils$LocaleU;->DEFAULT:Ljava/util/Locale;

    const-string v4, "%.1f"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateAndReviewsWidget;->ratingBar:Landroid/widget/RatingBar;

    invoke-virtual {v1, v0}, Landroid/widget/RatingBar;->setRating(F)V

    .line 126
    invoke-static {}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateAndReviewsWidget$$Lambda$1;->lambdaFactory$()Lrx/b/b;

    move-result-object v3

    .line 128
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateAndReviewsWidget;->getContext()Landroid/support/v4/app/u;

    move-result-object v1

    .line 129
    invoke-static {p0, v1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateAndReviewsWidget$$Lambda$2;->lambdaFactory$(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateAndReviewsWidget;Landroid/support/v4/app/u;)Lrx/b/b;

    move-result-object v0

    .line 132
    iget-object v4, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateAndReviewsWidget;->compositeSubscription:Lrx/j/b;

    iget-object v5, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateAndReviewsWidget;->rateThisButton:Landroid/widget/Button;

    .line 133
    invoke-static {v5}, Lcom/c/a/b/c;->a(Landroid/view/View;)Lrx/d;

    move-result-object v5

    invoke-virtual {v5, v0, v3}, Lrx/d;->a(Lrx/b/b;Lrx/b/b;)Lrx/k;

    move-result-object v5

    .line 132
    invoke-virtual {v4, v5}, Lrx/j/b;->a(Lrx/k;)V

    .line 134
    iget-object v4, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateAndReviewsWidget;->compositeSubscription:Lrx/j/b;

    iget-object v5, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateAndReviewsWidget;->rateThisButtonLarge:Landroid/widget/Button;

    .line 135
    invoke-static {v5}, Lcom/c/a/b/c;->a(Landroid/view/View;)Lrx/d;

    move-result-object v5

    invoke-virtual {v5, v0, v3}, Lrx/d;->a(Lrx/b/b;Lrx/b/b;)Lrx/k;

    move-result-object v5

    .line 134
    invoke-virtual {v4, v5}, Lrx/j/b;->a(Lrx/k;)V

    .line 136
    iget-object v4, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateAndReviewsWidget;->compositeSubscription:Lrx/j/b;

    iget-object v5, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateAndReviewsWidget;->ratingLayout:Landroid/view/View;

    .line 137
    invoke-static {v5}, Lcom/c/a/b/c;->a(Landroid/view/View;)Lrx/d;

    move-result-object v5

    invoke-virtual {v5, v0, v3}, Lrx/d;->a(Lrx/b/b;Lrx/b/b;)Lrx/k;

    move-result-object v0

    .line 136
    invoke-virtual {v4, v0}, Lrx/j/b;->a(Lrx/k;)V

    move-object v0, v1

    .line 139
    check-cast v0, Lcm/aptoide/pt/v8engine/interfaces/FragmentShower;

    .line 140
    invoke-static {v0, v2}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateAndReviewsWidget$$Lambda$3;->lambdaFactory$(Lcm/aptoide/pt/v8engine/interfaces/FragmentShower;Lcm/aptoide/pt/model/v7/GetAppMeta$App;)Lrx/b/b;

    move-result-object v0

    .line 145
    iget-object v2, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateAndReviewsWidget;->compositeSubscription:Lrx/j/b;

    iget-object v4, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateAndReviewsWidget;->readAllButton:Landroid/widget/Button;

    .line 146
    invoke-static {v4}, Lcom/c/a/b/c;->a(Landroid/view/View;)Lrx/d;

    move-result-object v4

    invoke-virtual {v4, v0, v3}, Lrx/d;->a(Lrx/b/b;Lrx/b/b;)Lrx/k;

    move-result-object v4

    .line 145
    invoke-virtual {v2, v4}, Lrx/j/b;->a(Lrx/k;)V

    .line 147
    iget-object v2, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateAndReviewsWidget;->compositeSubscription:Lrx/j/b;

    iget-object v4, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateAndReviewsWidget;->commentsLayout:Landroid/view/View;

    .line 148
    invoke-static {v4}, Lcom/c/a/b/c;->a(Landroid/view/View;)Lrx/d;

    move-result-object v4

    invoke-virtual {v4, v0, v3}, Lrx/d;->a(Lrx/b/b;Lrx/b/b;)Lrx/k;

    move-result-object v0

    .line 147
    invoke-virtual {v2, v0}, Lrx/j/b;->a(Lrx/k;)V

    .line 150
    new-instance v0, Lcm/aptoide/pt/v8engine/util/LinearLayoutManagerWithSmoothScroller;

    invoke-direct {v0, v1, v7, v7}, Lcm/aptoide/pt/v8engine/util/LinearLayoutManagerWithSmoothScroller;-><init>(Landroid/content/Context;IZ)V

    .line 152
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateAndReviewsWidget;->topReviewsList:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$h;)V

    .line 154
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateAndReviewsWidget;->topReviewsList:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v7}, Landroid/support/v7/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 156
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateAndReviewsWidget;->loadReviews()V

    .line 157
    return-void
.end method

.method synthetic lambda$bindView$2(Landroid/support/v4/app/u;Ljava/lang/Void;)V
    .locals 6

    .prologue
    .line 130
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateAndReviewsWidget;->dialogUtils:Lcm/aptoide/pt/v8engine/util/DialogUtils;

    iget-object v2, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateAndReviewsWidget;->appName:Ljava/lang/String;

    iget-object v3, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateAndReviewsWidget;->packageName:Ljava/lang/String;

    iget-object v4, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateAndReviewsWidget;->storeName:Ljava/lang/String;

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateAndReviewsWidget$$Lambda$11;->lambdaFactory$(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateAndReviewsWidget;)Lrx/b/a;

    move-result-object v5

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcm/aptoide/pt/v8engine/util/DialogUtils;->showRateDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lrx/b/a;)V

    return-void
.end method

.method synthetic lambda$loadTopReviews$4(Lcm/aptoide/pt/model/v7/ListReviews;)Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateAndReviewsWidget$TopReviewsAdapter;
    .locals 3

    .prologue
    .line 170
    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/ListReviews;->getDatalist()Lcm/aptoide/pt/model/v7/Datalist;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/Datalist;->getList()Ljava/util/List;

    move-result-object v0

    .line 171
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 172
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateAndReviewsWidget;->loadedData(Z)V

    .line 173
    new-instance v0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateAndReviewsWidget$TopReviewsAdapter;

    invoke-direct {v0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateAndReviewsWidget$TopReviewsAdapter;-><init>()V

    .line 178
    :goto_0
    return-object v0

    .line 176
    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateAndReviewsWidget;->loadedData(Z)V

    .line 177
    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/ListReviews;->getDatalist()Lcm/aptoide/pt/model/v7/Datalist;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/Datalist;->getList()Ljava/util/List;

    move-result-object v0

    .line 178
    new-instance v1, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateAndReviewsWidget$TopReviewsAdapter;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lcm/aptoide/pt/model/v7/Review;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcm/aptoide/pt/model/v7/Review;

    invoke-direct {v1, v0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateAndReviewsWidget$TopReviewsAdapter;-><init>([Lcm/aptoide/pt/model/v7/Review;)V

    move-object v0, v1

    goto :goto_0
.end method

.method synthetic lambda$loadTopReviews$5(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateAndReviewsWidget$TopReviewsAdapter;)V
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateAndReviewsWidget;->topReviewsList:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    return-void
.end method

.method synthetic lambda$loadTopReviews$6(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateAndReviewsWidget$TopReviewsAdapter;)Lrx/d;
    .locals 1

    .prologue
    .line 181
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateAndReviewsWidget$TopReviewsAdapter;->getItemCount()I

    move-result v0

    invoke-direct {p0, v0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateAndReviewsWidget;->scheduleAnimations(I)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$loadTopReviews$8(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 185
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateAndReviewsWidget;->loadedData(Z)V

    .line 186
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateAndReviewsWidget;->topReviewsList:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateAndReviewsWidget$TopReviewsAdapter;

    invoke-direct {v1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateAndReviewsWidget$TopReviewsAdapter;-><init>()V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    .line 187
    invoke-static {}, Lcm/aptoide/pt/crashreports/CrashReport;->getInstance()Lcm/aptoide/pt/crashreports/CrashReport;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcm/aptoide/pt/crashreports/CrashReport;->log(Ljava/lang/Throwable;)V

    .line 188
    return-void
.end method

.method synthetic lambda$null$1()V
    .locals 0

    .prologue
    .line 131
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateAndReviewsWidget;->loadReviews()V

    return-void
.end method

.method synthetic lambda$null$9(Ljava/lang/Integer;)V
    .locals 2

    .prologue
    .line 226
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateAndReviewsWidget;->topReviewsList:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->c(I)V

    return-void
.end method

.method synthetic lambda$scheduleAnimations$10(Ljava/lang/Integer;)Lrx/d;
    .locals 4

    .prologue
    .line 223
    invoke-static {p1}, Lrx/d;->a(Ljava/lang/Object;)Lrx/d;

    move-result-object v0

    const-wide/16 v2, 0x7d0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 224
    invoke-virtual {v0, v2, v3, v1}, Lrx/d;->a(JLjava/util/concurrent/TimeUnit;)Lrx/d;

    move-result-object v0

    .line 225
    invoke-static {}, Lrx/a/b/a;->a()Lrx/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->a(Lrx/g;)Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateAndReviewsWidget$$Lambda$10;->lambdaFactory$(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateAndReviewsWidget;)Lrx/b/b;

    move-result-object v1

    .line 226
    invoke-virtual {v0, v1}, Lrx/d;->b(Lrx/b/b;)Lrx/d;

    move-result-object v0

    return-object v0
.end method
