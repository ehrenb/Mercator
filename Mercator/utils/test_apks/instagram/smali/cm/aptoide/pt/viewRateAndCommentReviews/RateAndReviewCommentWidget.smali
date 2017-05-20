.class public Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewCommentWidget;
.super Lcm/aptoide/pt/v8engine/view/recycler/widget/Widget;
.source "RateAndReviewCommentWidget.java"


# annotations
.annotation runtime Lcm/aptoide/pt/v8engine/view/recycler/widget/Displayables;
    value = {
        Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewCommentDisplayable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcm/aptoide/pt/v8engine/view/recycler/widget/Widget",
        "<",
        "Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewCommentDisplayable;",
        ">;"
    }
.end annotation


# static fields
.field private static final DATE_TIME_U:Lcm/aptoide/pt/utils/AptoideUtils$DateTimeU;

.field private static final DEFAULT_LIMIT:I = 0x3

.field public static final FULL_COMMENTS_LIMIT:I = 0x3

.field private static final LOCALE:Ljava/util/Locale;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final aptoideClientUUID:Lcm/aptoide/pt/interfaces/AptoideClientUUID;

.field private flagHelfull:Landroid/widget/TextView;

.field private flagNotHelfull:Landroid/widget/TextView;

.field private helpfullButtonLayout:Landroid/view/View;

.field private isCommentsCollapsed:Z

.field private notHelpfullButtonLayout:Landroid/view/View;

.field private ratingBar:Landroid/support/v7/widget/AppCompatRatingBar;

.field private reply:Landroid/widget/TextView;

.field private reviewDate:Landroid/widget/TextView;

.field private reviewText:Landroid/widget/TextView;

.field private reviewTitle:Landroid/widget/TextView;

.field private showHideReplies:Landroid/widget/TextView;

.field private userImage:Landroid/widget/ImageView;

.field private username:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-class v0, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewCommentWidget;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewCommentWidget;->TAG:Ljava/lang/String;

    .line 47
    invoke-static {}, Lcm/aptoide/pt/utils/AptoideUtils$DateTimeU;->getInstance()Lcm/aptoide/pt/utils/AptoideUtils$DateTimeU;

    move-result-object v0

    sput-object v0, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewCommentWidget;->DATE_TIME_U:Lcm/aptoide/pt/utils/AptoideUtils$DateTimeU;

    .line 48
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    sput-object v0, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewCommentWidget;->LOCALE:Ljava/util/Locale;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/Widget;-><init>(Landroid/view/View;)V

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewCommentWidget;->isCommentsCollapsed:Z

    .line 71
    new-instance v0, Lcm/aptoide/pt/dataprovider/repository/IdsRepositoryImpl;

    invoke-static {}, Lcm/aptoide/pt/preferences/secure/SecurePreferencesImplementation;->getInstance()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 72
    invoke-static {}, Lcm/aptoide/pt/dataprovider/DataProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcm/aptoide/pt/dataprovider/repository/IdsRepositoryImpl;-><init>(Landroid/content/SharedPreferences;Landroid/content/Context;)V

    iput-object v0, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewCommentWidget;->aptoideClientUUID:Lcm/aptoide/pt/interfaces/AptoideClientUUID;

    .line 73
    return-void
.end method

.method static synthetic lambda$bindView$5(Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 136
    return-void
.end method

.method static synthetic lambda$bindView$6(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 137
    invoke-static {}, Lcm/aptoide/pt/crashreports/CrashReport;->getInstance()Lcm/aptoide/pt/crashreports/CrashReport;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcm/aptoide/pt/crashreports/CrashReport;->log(Ljava/lang/Throwable;)V

    .line 138
    return-void
.end method

.method static synthetic lambda$null$0(Lcom/trello/rxlifecycle/a/b;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 123
    sget-object v0, Lcom/trello/rxlifecycle/a/b;->h:Lcom/trello/rxlifecycle/a/b;

    invoke-virtual {p0, v0}, Lcom/trello/rxlifecycle/a/b;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$null$2(Lcom/trello/rxlifecycle/a/b;)Lrx/d;
    .locals 1

    .prologue
    .line 129
    invoke-static {}, Lrx/d;->d()Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$null$3(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 133
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcm/aptoide/accountmanager/AptoideAccountManager;->openAccountManager(Landroid/content/Context;)V

    .line 134
    return-void
.end method

.method static synthetic lambda$setReviewRating$14(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 234
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcm/aptoide/accountmanager/AptoideAccountManager;->openAccountManager(Landroid/content/Context;)V

    .line 235
    return-void
.end method

.method private loadCommentsForThisReview(JILcm/aptoide/pt/viewRateAndCommentReviews/CommentAdder;)V
    .locals 7

    .prologue
    const/4 v5, 0x1

    .line 182
    invoke-static {}, Lcm/aptoide/accountmanager/AptoideAccountManager;->getAccessToken()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewCommentWidget;->aptoideClientUUID:Lcm/aptoide/pt/interfaces/AptoideClientUUID;

    .line 183
    invoke-interface {v0}, Lcm/aptoide/pt/interfaces/AptoideClientUUID;->getUniqueIdentifier()Ljava/lang/String;

    move-result-object v4

    move-wide v0, p1

    move v2, p3

    .line 182
    invoke-static/range {v0 .. v5}, Lcm/aptoide/pt/dataprovider/ws/v7/ListCommentsRequest;->of(JILjava/lang/String;Ljava/lang/String;Z)Lcm/aptoide/pt/dataprovider/ws/v7/ListCommentsRequest;

    move-result-object v0

    invoke-static {p0, p4}, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewCommentWidget$$Lambda$7;->lambdaFactory$(Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewCommentWidget;Lcm/aptoide/pt/viewRateAndCommentReviews/CommentAdder;)Lcm/aptoide/pt/networkclient/interfaces/SuccessRequestListener;

    move-result-object v1

    invoke-static {p0}, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewCommentWidget$$Lambda$8;->lambdaFactory$(Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewCommentWidget;)Lcm/aptoide/pt/networkclient/interfaces/ErrorRequestListener;

    move-result-object v2

    .line 183
    invoke-virtual {v0, v1, v2, v5}, Lcm/aptoide/pt/dataprovider/ws/v7/ListCommentsRequest;->execute(Lcm/aptoide/pt/networkclient/interfaces/SuccessRequestListener;Lcm/aptoide/pt/networkclient/interfaces/ErrorRequestListener;Z)V

    .line 195
    return-void
.end method

.method private setHelpButtonsClickable(Z)V
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewCommentWidget;->flagHelfull:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 242
    iget-object v0, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewCommentWidget;->flagNotHelfull:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 243
    iget-object v0, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewCommentWidget;->notHelpfullButtonLayout:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setClickable(Z)V

    .line 244
    iget-object v0, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewCommentWidget;->helpfullButtonLayout:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setClickable(Z)V

    .line 245
    return-void
.end method

.method private setReviewRating(JZ)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 198
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewCommentWidget;->setHelpButtonsClickable(Z)V

    .line 200
    invoke-static {}, Lcm/aptoide/accountmanager/AptoideAccountManager;->isLoggedIn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    invoke-static {}, Lcm/aptoide/accountmanager/AptoideAccountManager;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewCommentWidget;->aptoideClientUUID:Lcm/aptoide/pt/interfaces/AptoideClientUUID;

    .line 202
    invoke-interface {v1}, Lcm/aptoide/pt/interfaces/AptoideClientUUID;->getUniqueIdentifier()Ljava/lang/String;

    move-result-object v1

    .line 201
    invoke-static {p1, p2, p3, v0, v1}, Lcm/aptoide/pt/dataprovider/ws/v7/SetReviewRatingRequest;->of(JZLjava/lang/String;Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/SetReviewRatingRequest;

    move-result-object v0

    invoke-static {p0, p1, p2, p3}, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewCommentWidget$$Lambda$9;->lambdaFactory$(Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewCommentWidget;JZ)Lcm/aptoide/pt/networkclient/interfaces/SuccessRequestListener;

    move-result-object v1

    invoke-static {p0}, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewCommentWidget$$Lambda$10;->lambdaFactory$(Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewCommentWidget;)Lcm/aptoide/pt/networkclient/interfaces/ErrorRequestListener;

    move-result-object v2

    .line 202
    invoke-virtual {v0, v1, v2, v4}, Lcm/aptoide/pt/dataprovider/ws/v7/SetReviewRatingRequest;->execute(Lcm/aptoide/pt/networkclient/interfaces/SuccessRequestListener;Lcm/aptoide/pt/networkclient/interfaces/ErrorRequestListener;Z)V

    .line 238
    :goto_0
    return-void

    .line 232
    :cond_0
    invoke-virtual {p0}, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewCommentWidget;->getContext()Landroid/support/v4/app/u;

    move-result-object v0

    sget v1, Lcm/aptoide/pt/v8engine/R$string;->you_need_to_be_logged_in:I

    sget v2, Lcm/aptoide/pt/v8engine/R$string;->login:I

    invoke-static {}, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewCommentWidget$$Lambda$11;->lambdaFactory$()Landroid/view/View$OnClickListener;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcm/aptoide/pt/utils/design/ShowMessage;->asSnack(Landroid/app/Activity;IILandroid/view/View$OnClickListener;)V

    .line 236
    invoke-direct {p0, v4}, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewCommentWidget;->setHelpButtonsClickable(Z)V

    goto :goto_0
.end method


# virtual methods
.method protected assignViews(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 76
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->write_reply_btn:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewCommentWidget;->reply:Landroid/widget/TextView;

    .line 77
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->show_replies_btn:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewCommentWidget;->showHideReplies:Landroid/widget/TextView;

    .line 78
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->helpful_btn:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewCommentWidget;->flagHelfull:Landroid/widget/TextView;

    .line 79
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->not_helpful_btn:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewCommentWidget;->flagNotHelfull:Landroid/widget/TextView;

    .line 81
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->rating_bar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/AppCompatRatingBar;

    iput-object v0, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewCommentWidget;->ratingBar:Landroid/support/v7/widget/AppCompatRatingBar;

    .line 82
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->comment_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewCommentWidget;->reviewTitle:Landroid/widget/TextView;

    .line 83
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->added_date:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewCommentWidget;->reviewDate:Landroid/widget/TextView;

    .line 84
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->comment:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewCommentWidget;->reviewText:Landroid/widget/TextView;

    .line 86
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->user_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewCommentWidget;->userImage:Landroid/widget/ImageView;

    .line 87
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->user_name:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewCommentWidget;->username:Landroid/widget/TextView;

    .line 89
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->helpful_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewCommentWidget;->helpfullButtonLayout:Landroid/view/View;

    .line 90
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->not_helpful_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewCommentWidget;->notHelpfullButtonLayout:Landroid/view/View;

    .line 91
    return-void
.end method

.method public bridge synthetic bindView(Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;)V
    .locals 0

    .prologue
    .line 42
    check-cast p1, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewCommentDisplayable;

    invoke-virtual {p0, p1}, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewCommentWidget;->bindView(Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewCommentDisplayable;)V

    return-void
.end method

.method public bindView(Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewCommentDisplayable;)V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 94
    invoke-virtual {p1}, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewCommentDisplayable;->getPojo()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/viewRateAndCommentReviews/ReviewWithAppName;

    invoke-virtual {v0}, Lcm/aptoide/pt/viewRateAndCommentReviews/ReviewWithAppName;->getReview()Lcm/aptoide/pt/model/v7/Review;

    move-result-object v3

    .line 95
    invoke-virtual {p1}, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewCommentDisplayable;->getPojo()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/viewRateAndCommentReviews/ReviewWithAppName;

    invoke-virtual {v0}, Lcm/aptoide/pt/viewRateAndCommentReviews/ReviewWithAppName;->getAppName()Ljava/lang/String;

    move-result-object v4

    .line 97
    invoke-virtual {p0}, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewCommentWidget;->getContext()Landroid/support/v4/app/u;

    move-result-object v2

    .line 98
    invoke-static {v2}, Lcm/aptoide/pt/imageloader/ImageLoader;->with(Landroid/content/Context;)Lcm/aptoide/pt/imageloader/ImageLoader;

    move-result-object v0

    .line 99
    invoke-virtual {v3}, Lcm/aptoide/pt/model/v7/Review;->getUser()Lcm/aptoide/pt/model/v7/Review$User;

    move-result-object v1

    invoke-virtual {v1}, Lcm/aptoide/pt/model/v7/Review$User;->getAvatar()Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewCommentWidget;->userImage:Landroid/widget/ImageView;

    sget v6, Lcm/aptoide/pt/v8engine/R$drawable;->layer_1:I

    invoke-virtual {v0, v1, v5, v6}, Lcm/aptoide/pt/imageloader/ImageLoader;->loadWithCircleTransformAndPlaceHolderAvatarSize(Ljava/lang/String;Landroid/widget/ImageView;I)Lcom/bumptech/glide/g/b/k;

    .line 101
    iget-object v0, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewCommentWidget;->username:Landroid/widget/TextView;

    invoke-virtual {v3}, Lcm/aptoide/pt/model/v7/Review;->getUser()Lcm/aptoide/pt/model/v7/Review$User;

    move-result-object v1

    invoke-virtual {v1}, Lcm/aptoide/pt/model/v7/Review$User;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    iget-object v0, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewCommentWidget;->ratingBar:Landroid/support/v7/widget/AppCompatRatingBar;

    invoke-virtual {v3}, Lcm/aptoide/pt/model/v7/Review;->getStats()Lcm/aptoide/pt/model/v7/Review$Stats;

    move-result-object v1

    invoke-virtual {v1}, Lcm/aptoide/pt/model/v7/Review$Stats;->getRating()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/AppCompatRatingBar;->setRating(F)V

    .line 103
    iget-object v0, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewCommentWidget;->reviewTitle:Landroid/widget/TextView;

    invoke-virtual {v3}, Lcm/aptoide/pt/model/v7/Review;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    iget-object v0, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewCommentWidget;->reviewText:Landroid/widget/TextView;

    invoke-virtual {v3}, Lcm/aptoide/pt/model/v7/Review;->getBody()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    iget-object v0, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewCommentWidget;->reviewDate:Landroid/widget/TextView;

    sget-object v1, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewCommentWidget;->DATE_TIME_U:Lcm/aptoide/pt/utils/AptoideUtils$DateTimeU;

    invoke-virtual {v3}, Lcm/aptoide/pt/model/v7/Review;->getAdded()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-virtual {v1, v2, v6, v7}, Lcm/aptoide/pt/utils/AptoideUtils$DateTimeU;->getTimeDiffString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    const/16 v0, 0x12c

    invoke-virtual {v2}, Landroid/support/v4/app/u;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    if-le v0, v1, :cond_0

    .line 108
    iget-object v0, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewCommentWidget;->flagHelfull:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    iget-object v0, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewCommentWidget;->flagNotHelfull:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    :cond_0
    invoke-virtual {p1}, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewCommentDisplayable;->getCommentAdder()Lcm/aptoide/pt/viewRateAndCommentReviews/CommentAdder;

    move-result-object v5

    .line 113
    invoke-virtual {v3}, Lcm/aptoide/pt/model/v7/Review;->getId()J

    move-result-wide v6

    .line 115
    iget-object v0, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewCommentWidget;->compositeSubscription:Lrx/j/b;

    iget-object v1, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewCommentWidget;->reply:Landroid/widget/TextView;

    invoke-static {v1}, Lcom/c/a/b/c;->a(Landroid/view/View;)Lrx/d;

    move-result-object v8

    move-object v1, p0

    invoke-static/range {v1 .. v7}, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewCommentWidget$$Lambda$1;->lambdaFactory$(Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewCommentWidget;Landroid/support/v4/app/u;Lcm/aptoide/pt/model/v7/Review;Ljava/lang/String;Lcm/aptoide/pt/viewRateAndCommentReviews/CommentAdder;J)Lrx/b/e;

    move-result-object v1

    invoke-virtual {v8, v1}, Lrx/d;->e(Lrx/b/e;)Lrx/d;

    move-result-object v1

    invoke-static {}, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewCommentWidget$$Lambda$2;->lambdaFactory$()Lrx/b/b;

    move-result-object v4

    invoke-static {}, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewCommentWidget$$Lambda$3;->lambdaFactory$()Lrx/b/b;

    move-result-object v5

    .line 136
    invoke-virtual {v1, v4, v5}, Lrx/d;->a(Lrx/b/b;Lrx/b/b;)Lrx/k;

    move-result-object v1

    .line 115
    invoke-virtual {v0, v1}, Lrx/j/b;->a(Lrx/k;)V

    .line 140
    iget-object v0, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewCommentWidget;->compositeSubscription:Lrx/j/b;

    iget-object v1, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewCommentWidget;->helpfullButtonLayout:Landroid/view/View;

    invoke-static {v1}, Lcom/c/a/b/c;->a(Landroid/view/View;)Lrx/d;

    move-result-object v1

    invoke-static {p0, v3}, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewCommentWidget$$Lambda$4;->lambdaFactory$(Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewCommentWidget;Lcm/aptoide/pt/model/v7/Review;)Lrx/b/b;

    move-result-object v4

    invoke-virtual {v1, v4}, Lrx/d;->d(Lrx/b/b;)Lrx/k;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/j/b;->a(Lrx/k;)V

    .line 144
    iget-object v0, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewCommentWidget;->compositeSubscription:Lrx/j/b;

    iget-object v1, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewCommentWidget;->notHelpfullButtonLayout:Landroid/view/View;

    invoke-static {v1}, Lcom/c/a/b/c;->a(Landroid/view/View;)Lrx/d;

    move-result-object v1

    invoke-static {p0, v3}, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewCommentWidget$$Lambda$5;->lambdaFactory$(Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewCommentWidget;Lcm/aptoide/pt/model/v7/Review;)Lrx/b/b;

    move-result-object v4

    invoke-virtual {v1, v4}, Lrx/d;->d(Lrx/b/b;)Lrx/k;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/j/b;->a(Lrx/k;)V

    .line 148
    iget-object v0, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewCommentWidget;->compositeSubscription:Lrx/j/b;

    iget-object v1, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewCommentWidget;->showHideReplies:Landroid/widget/TextView;

    invoke-static {v1}, Lcom/c/a/b/c;->a(Landroid/view/View;)Lrx/d;

    move-result-object v1

    invoke-static {p0, v3, p1}, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewCommentWidget$$Lambda$6;->lambdaFactory$(Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewCommentWidget;Lcm/aptoide/pt/model/v7/Review;Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewCommentDisplayable;)Lrx/b/b;

    move-result-object v3

    invoke-virtual {v1, v3}, Lrx/d;->d(Lrx/b/b;)Lrx/k;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/j/b;->a(Lrx/k;)V

    .line 161
    invoke-virtual {v2}, Landroid/support/v4/app/u;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    .line 162
    invoke-virtual {v2}, Landroid/support/v4/app/u;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 164
    invoke-virtual {p0}, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewCommentWidget;->getItemId()J

    move-result-wide v4

    const-wide/16 v6, 0x2

    rem-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-nez v0, :cond_1

    sget v0, Lcm/aptoide/pt/v8engine/R$color;->white:I

    .line 166
    :goto_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-lt v3, v4, :cond_2

    .line 167
    iget-object v3, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewCommentWidget;->itemView:Landroid/view/View;

    invoke-virtual {v2, v0, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 171
    :goto_1
    invoke-virtual {p1}, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewCommentDisplayable;->getNumberComments()I

    move-result v0

    .line 172
    if-lez v0, :cond_3

    .line 173
    iget-object v1, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewCommentWidget;->showHideReplies:Landroid/widget/TextView;

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 174
    iget-object v1, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewCommentWidget;->showHideReplies:Landroid/widget/TextView;

    sget v2, Lcm/aptoide/pt/v8engine/R$string;->reviews_expand_button:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 175
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v9

    invoke-static {v2, v3}, Lcm/aptoide/pt/utils/AptoideUtils$StringU;->getFormattedString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 174
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 179
    :goto_2
    return-void

    .line 164
    :cond_1
    sget v0, Lcm/aptoide/pt/v8engine/R$color;->displayable_rate_and_review_background:I

    goto :goto_0

    .line 169
    :cond_2
    iget-object v1, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewCommentWidget;->itemView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_1

    .line 177
    :cond_3
    iget-object v0, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewCommentWidget;->showHideReplies:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2
.end method

.method synthetic lambda$bindView$4(Landroid/support/v4/app/u;Lcm/aptoide/pt/model/v7/Review;Ljava/lang/String;Lcm/aptoide/pt/viewRateAndCommentReviews/CommentAdder;JLjava/lang/Void;)Lrx/d;
    .locals 5

    .prologue
    .line 116
    invoke-static {}, Lcm/aptoide/accountmanager/AptoideAccountManager;->isLoggedIn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    invoke-virtual {p1}, Landroid/support/v4/app/u;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 119
    invoke-virtual {p2}, Lcm/aptoide/pt/model/v7/Review;->getId()J

    move-result-wide v2

    invoke-static {v2, v3, p3}, Lcm/aptoide/pt/viewRateAndCommentReviews/CommentDialogFragment;->newInstanceReview(JLjava/lang/String;)Lcm/aptoide/pt/viewRateAndCommentReviews/CommentDialogFragment;

    move-result-object v1

    .line 120
    const-string v2, "fragment_comment_dialog"

    invoke-virtual {v1, v0, v2}, Lcm/aptoide/pt/viewRateAndCommentReviews/CommentDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 122
    invoke-virtual {v1}, Lcm/aptoide/pt/viewRateAndCommentReviews/CommentDialogFragment;->lifecycle()Lrx/d;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewCommentWidget$$Lambda$12;->lambdaFactory$()Lrx/b/e;

    move-result-object v1

    .line 123
    invoke-virtual {v0, v1}, Lrx/d;->c(Lrx/b/e;)Lrx/d;

    move-result-object v0

    invoke-static {p0, p4, p5, p6}, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewCommentWidget$$Lambda$13;->lambdaFactory$(Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewCommentWidget;Lcm/aptoide/pt/viewRateAndCommentReviews/CommentAdder;J)Lrx/b/b;

    move-result-object v1

    .line 124
    invoke-virtual {v0, v1}, Lrx/d;->b(Lrx/b/b;)Lrx/d;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewCommentWidget$$Lambda$14;->lambdaFactory$()Lrx/b/e;

    move-result-object v1

    .line 129
    invoke-virtual {v0, v1}, Lrx/d;->e(Lrx/b/e;)Lrx/d;

    move-result-object v0

    .line 131
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewCommentWidget;->ratingBar:Landroid/support/v7/widget/AppCompatRatingBar;

    sget v1, Lcm/aptoide/pt/v8engine/R$string;->you_need_to_be_logged_in:I

    sget v2, Lcm/aptoide/pt/v8engine/R$string;->login:I

    invoke-static {}, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewCommentWidget$$Lambda$15;->lambdaFactory$()Landroid/view/View$OnClickListener;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcm/aptoide/pt/utils/design/ShowMessage;->asObservableSnack(Landroid/view/View;IILandroid/view/View$OnClickListener;)Lrx/d;

    move-result-object v0

    goto :goto_0
.end method

.method synthetic lambda$bindView$7(Lcm/aptoide/pt/model/v7/Review;Ljava/lang/Void;)V
    .locals 3

    .prologue
    .line 141
    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/Review;->getId()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewCommentWidget;->setReviewRating(JZ)V

    .line 142
    return-void
.end method

.method synthetic lambda$bindView$8(Lcm/aptoide/pt/model/v7/Review;Ljava/lang/Void;)V
    .locals 3

    .prologue
    .line 145
    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/Review;->getId()J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewCommentWidget;->setReviewRating(JZ)V

    .line 146
    return-void
.end method

.method synthetic lambda$bindView$9(Lcm/aptoide/pt/model/v7/Review;Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewCommentDisplayable;Ljava/lang/Void;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 149
    iget-boolean v0, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewCommentWidget;->isCommentsCollapsed:Z

    if-eqz v0, :cond_0

    .line 150
    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/Review;->getId()J

    move-result-wide v0

    const/4 v2, 0x3

    .line 151
    invoke-virtual {p2}, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewCommentDisplayable;->getCommentAdder()Lcm/aptoide/pt/viewRateAndCommentReviews/CommentAdder;

    move-result-object v3

    .line 150
    invoke-direct {p0, v0, v1, v2, v3}, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewCommentWidget;->loadCommentsForThisReview(JILcm/aptoide/pt/viewRateAndCommentReviews/CommentAdder;)V

    .line 152
    iget-object v0, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewCommentWidget;->showHideReplies:Landroid/widget/TextView;

    sget v1, Lcm/aptoide/pt/v8engine/R$drawable;->ic_up_arrow:I

    invoke-virtual {v0, v4, v4, v1, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 153
    iput-boolean v4, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewCommentWidget;->isCommentsCollapsed:Z

    .line 159
    :goto_0
    return-void

    .line 155
    :cond_0
    invoke-virtual {p2}, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewCommentDisplayable;->getCommentAdder()Lcm/aptoide/pt/viewRateAndCommentReviews/CommentAdder;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/viewRateAndCommentReviews/CommentAdder;->collapseComments()V

    .line 156
    iget-object v0, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewCommentWidget;->showHideReplies:Landroid/widget/TextView;

    sget v1, Lcm/aptoide/pt/v8engine/R$drawable;->ic_down_arrow:I

    invoke-virtual {v0, v4, v4, v1, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 157
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewCommentWidget;->isCommentsCollapsed:Z

    goto :goto_0
.end method

.method synthetic lambda$loadCommentsForThisReview$10(Lcm/aptoide/pt/viewRateAndCommentReviews/CommentAdder;Lcm/aptoide/pt/model/v7/ListComments;)V
    .locals 2

    .prologue
    .line 184
    invoke-virtual {p2}, Lcm/aptoide/pt/model/v7/ListComments;->isOk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    invoke-virtual {p2}, Lcm/aptoide/pt/model/v7/ListComments;->getDatalist()Lcm/aptoide/pt/model/v7/Datalist;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/Datalist;->getList()Ljava/util/List;

    move-result-object v0

    .line 186
    invoke-virtual {p1, v0}, Lcm/aptoide/pt/viewRateAndCommentReviews/CommentAdder;->addComment(Ljava/util/List;)V

    .line 191
    :goto_0
    return-void

    .line 188
    :cond_0
    sget-object v0, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewCommentWidget;->TAG:Ljava/lang/String;

    const-string v1, "error loading comments"

    invoke-static {v0, v1}, Lcm/aptoide/pt/logger/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    iget-object v0, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewCommentWidget;->flagHelfull:Landroid/widget/TextView;

    sget v1, Lcm/aptoide/pt/v8engine/R$string;->unknown_error:I

    invoke-static {v0, v1}, Lcm/aptoide/pt/utils/design/ShowMessage;->asSnack(Landroid/view/View;I)V

    goto :goto_0
.end method

.method synthetic lambda$loadCommentsForThisReview$11(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 192
    sget-object v0, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewCommentWidget;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Lcm/aptoide/pt/logger/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 193
    iget-object v0, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewCommentWidget;->flagHelfull:Landroid/widget/TextView;

    sget v1, Lcm/aptoide/pt/v8engine/R$string;->unknown_error:I

    invoke-static {v0, v1}, Lcm/aptoide/pt/utils/design/ShowMessage;->asSnack(Landroid/view/View;I)V

    .line 194
    return-void
.end method

.method synthetic lambda$null$1(Lcm/aptoide/pt/viewRateAndCommentReviews/CommentAdder;JLcom/trello/rxlifecycle/a/b;)V
    .locals 2

    .prologue
    .line 125
    const/4 v0, 0x1

    invoke-static {v0}, Lcm/aptoide/pt/preferences/managed/ManagerPreferences;->setForceServerRefreshFlag(Z)V

    .line 126
    invoke-virtual {p1}, Lcm/aptoide/pt/viewRateAndCommentReviews/CommentAdder;->collapseComments()V

    .line 127
    const/4 v0, 0x3

    invoke-direct {p0, p2, p3, v0, p1}, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewCommentWidget;->loadCommentsForThisReview(JILcm/aptoide/pt/viewRateAndCommentReviews/CommentAdder;)V

    .line 128
    return-void
.end method

.method synthetic lambda$setReviewRating$12(JZLcm/aptoide/pt/model/v7/BaseV7Response;)V
    .locals 7

    .prologue
    const/4 v5, 0x1

    .line 203
    if-nez p4, :cond_1

    .line 204
    sget-object v0, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewCommentWidget;->TAG:Ljava/lang/String;

    const-string v1, "empty response"

    invoke-static {v0, v1}, Lcm/aptoide/pt/logger/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    :cond_0
    :goto_0
    return-void

    .line 208
    :cond_1
    invoke-virtual {p4}, Lcm/aptoide/pt/model/v7/BaseV7Response;->getError()Lcm/aptoide/pt/model/v7/BaseV7Response$Error;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 209
    sget-object v0, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewCommentWidget;->TAG:Ljava/lang/String;

    invoke-virtual {p4}, Lcm/aptoide/pt/model/v7/BaseV7Response;->getError()Lcm/aptoide/pt/model/v7/BaseV7Response$Error;

    move-result-object v1

    invoke-virtual {v1}, Lcm/aptoide/pt/model/v7/BaseV7Response$Error;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcm/aptoide/pt/logger/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 213
    :cond_2
    invoke-virtual {p4}, Lcm/aptoide/pt/model/v7/BaseV7Response;->getErrors()Ljava/util/List;

    move-result-object v0

    .line 214
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 215
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/model/v7/BaseV7Response$Error;

    .line 216
    sget-object v2, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewCommentWidget;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/BaseV7Response$Error;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcm/aptoide/pt/logger/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 222
    :cond_3
    sget-object v1, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewCommentWidget;->TAG:Ljava/lang/String;

    const-string v2, "review %d was marked as %s"

    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v0

    if-eqz p3, :cond_4

    const-string v0, "positive"

    :goto_2
    aput-object v0, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcm/aptoide/pt/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    invoke-direct {p0, v5}, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewCommentWidget;->setHelpButtonsClickable(Z)V

    .line 225
    iget-object v0, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewCommentWidget;->flagHelfull:Landroid/widget/TextView;

    sget v1, Lcm/aptoide/pt/v8engine/R$string;->thank_you_for_your_opinion:I

    invoke-static {v0, v1}, Lcm/aptoide/pt/utils/design/ShowMessage;->asSnack(Landroid/view/View;I)V

    goto :goto_0

    .line 222
    :cond_4
    const-string v0, "negative"

    goto :goto_2
.end method

.method synthetic lambda$setReviewRating$13(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 227
    iget-object v0, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewCommentWidget;->flagHelfull:Landroid/widget/TextView;

    sget v1, Lcm/aptoide/pt/v8engine/R$string;->unknown_error:I

    invoke-static {v0, v1}, Lcm/aptoide/pt/utils/design/ShowMessage;->asSnack(Landroid/view/View;I)V

    .line 228
    sget-object v0, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewCommentWidget;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Lcm/aptoide/pt/logger/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 229
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewCommentWidget;->setHelpButtonsClickable(Z)V

    .line 230
    return-void
.end method
