.class final Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateAndReviewsWidget$MiniTopReviewViewHolder;
.super Landroid/support/v7/widget/RecyclerView$v;
.source "AppViewRateAndReviewsWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateAndReviewsWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MiniTopReviewViewHolder"
.end annotation


# static fields
.field private static final DATE_TIME_U:Lcm/aptoide/pt/utils/AptoideUtils$DateTimeU;

.field private static final LAYOUT_ID:I


# instance fields
.field private addedDate:Landroid/widget/TextView;

.field private commentText:Landroid/widget/TextView;

.field private commentTitle:Landroid/widget/TextView;

.field private imageLoadingTarget:Lcom/bumptech/glide/g/b/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/g/b/k",
            "<",
            "Lcom/bumptech/glide/load/resource/a/b;",
            ">;"
        }
    .end annotation
.end field

.field private ratingBar:Landroid/widget/RatingBar;

.field private userIconImageView:Landroid/widget/ImageView;

.field private userName:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 264
    sget v0, Lcm/aptoide/pt/v8engine/R$layout;->mini_top_comment:I

    sput v0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateAndReviewsWidget$MiniTopReviewViewHolder;->LAYOUT_ID:I

    .line 266
    invoke-static {}, Lcm/aptoide/pt/utils/AptoideUtils$DateTimeU;->getInstance()Lcm/aptoide/pt/utils/AptoideUtils$DateTimeU;

    move-result-object v0

    sput-object v0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateAndReviewsWidget$MiniTopReviewViewHolder;->DATE_TIME_U:Lcm/aptoide/pt/utils/AptoideUtils$DateTimeU;

    return-void
.end method

.method private constructor <init>(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 277
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$v;-><init>(Landroid/view/View;)V

    .line 278
    invoke-direct {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateAndReviewsWidget$MiniTopReviewViewHolder;->bindViews(Landroid/view/View;)V

    .line 279
    return-void
.end method

.method synthetic constructor <init>(Landroid/view/View;Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateAndReviewsWidget$1;)V
    .locals 0

    .prologue
    .line 262
    invoke-direct {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateAndReviewsWidget$MiniTopReviewViewHolder;-><init>(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    .prologue
    .line 262
    sget v0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateAndReviewsWidget$MiniTopReviewViewHolder;->LAYOUT_ID:I

    return v0
.end method

.method private bindViews(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 282
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->user_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateAndReviewsWidget$MiniTopReviewViewHolder;->userIconImageView:Landroid/widget/ImageView;

    .line 283
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->rating_bar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RatingBar;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateAndReviewsWidget$MiniTopReviewViewHolder;->ratingBar:Landroid/widget/RatingBar;

    .line 284
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->comment_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateAndReviewsWidget$MiniTopReviewViewHolder;->commentTitle:Landroid/widget/TextView;

    .line 285
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->user_name:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateAndReviewsWidget$MiniTopReviewViewHolder;->userName:Landroid/widget/TextView;

    .line 286
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->added_date:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateAndReviewsWidget$MiniTopReviewViewHolder;->addedDate:Landroid/widget/TextView;

    .line 287
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->comment:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateAndReviewsWidget$MiniTopReviewViewHolder;->commentText:Landroid/widget/TextView;

    .line 288
    return-void
.end method


# virtual methods
.method public cancelImageLoad()V
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateAndReviewsWidget$MiniTopReviewViewHolder;->imageLoadingTarget:Lcom/bumptech/glide/g/b/k;

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateAndReviewsWidget$MiniTopReviewViewHolder;->imageLoadingTarget:Lcom/bumptech/glide/g/b/k;

    invoke-static {v0}, Lcm/aptoide/pt/imageloader/ImageLoader;->cancel(Lcom/bumptech/glide/g/b/k;)V

    .line 308
    :cond_0
    return-void
.end method

.method public setup(Lcm/aptoide/pt/model/v7/Review;)V
    .locals 4

    .prologue
    .line 291
    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/Review;->getUser()Lcm/aptoide/pt/model/v7/Review$User;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/Review$User;->getAvatar()Ljava/lang/String;

    move-result-object v0

    .line 292
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateAndReviewsWidget$MiniTopReviewViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 294
    invoke-static {v1}, Lcm/aptoide/pt/imageloader/ImageLoader;->with(Landroid/content/Context;)Lcm/aptoide/pt/imageloader/ImageLoader;

    move-result-object v1

    iget-object v2, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateAndReviewsWidget$MiniTopReviewViewHolder;->userIconImageView:Landroid/widget/ImageView;

    sget v3, Lcm/aptoide/pt/v8engine/R$drawable;->layer_1:I

    .line 295
    invoke-virtual {v1, v0, v2, v3}, Lcm/aptoide/pt/imageloader/ImageLoader;->loadWithCircleTransformAndPlaceHolderAvatarSize(Ljava/lang/String;Landroid/widget/ImageView;I)Lcom/bumptech/glide/g/b/k;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateAndReviewsWidget$MiniTopReviewViewHolder;->imageLoadingTarget:Lcom/bumptech/glide/g/b/k;

    .line 297
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateAndReviewsWidget$MiniTopReviewViewHolder;->userName:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/Review;->getUser()Lcm/aptoide/pt/model/v7/Review$User;

    move-result-object v1

    invoke-virtual {v1}, Lcm/aptoide/pt/model/v7/Review$User;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 298
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateAndReviewsWidget$MiniTopReviewViewHolder;->ratingBar:Landroid/widget/RatingBar;

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/Review;->getStats()Lcm/aptoide/pt/model/v7/Review$Stats;

    move-result-object v1

    invoke-virtual {v1}, Lcm/aptoide/pt/model/v7/Review$Stats;->getRating()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RatingBar;->setRating(F)V

    .line 299
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateAndReviewsWidget$MiniTopReviewViewHolder;->commentTitle:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/Review;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 300
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateAndReviewsWidget$MiniTopReviewViewHolder;->commentText:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/Review;->getBody()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 301
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateAndReviewsWidget$MiniTopReviewViewHolder;->addedDate:Landroid/widget/TextView;

    sget-object v1, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateAndReviewsWidget$MiniTopReviewViewHolder;->DATE_TIME_U:Lcm/aptoide/pt/utils/AptoideUtils$DateTimeU;

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/Review;->getAdded()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcm/aptoide/pt/utils/AptoideUtils$DateTimeU;->getTimeDiffString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 302
    return-void
.end method
