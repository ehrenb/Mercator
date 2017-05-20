.class public Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/CommentWidget;
.super Lcm/aptoide/pt/v8engine/view/recycler/widget/Widget;
.source "CommentWidget.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcm/aptoide/pt/v8engine/view/recycler/widget/Widget",
        "<",
        "Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/CommentDisplayable;",
        ">;"
    }
.end annotation


# static fields
.field private static final MARGIN_IN_DIP:I = 0xf

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private comment:Landroid/widget/TextView;

.field private datePos1:Landroid/widget/TextView;

.field private datePos2:Landroid/widget/TextView;

.field private outerLayout:Landroid/view/View;

.field private replyLayout:Landroid/view/View;

.field private userAvatar:Landroid/widget/ImageView;

.field private userName:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/CommentWidget;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/CommentWidget;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/Widget;-><init>(Landroid/view/View;)V

    .line 39
    return-void
.end method

.method private bindComplexComment(Lcm/aptoide/pt/viewRateAndCommentReviews/ComplexComment;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const v4, 0x3f333333    # 0.7f

    .line 76
    .line 79
    invoke-virtual {p1}, Lcm/aptoide/pt/viewRateAndCommentReviews/ComplexComment;->getLevel()I

    move-result v0

    if-ne v0, v5, :cond_0

    sget v0, Lcm/aptoide/pt/v8engine/R$color;->white:I

    .line 80
    :goto_0
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/CommentWidget;->getContext()Landroid/support/v4/app/u;

    move-result-object v1

    .line 82
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_1

    .line 83
    invoke-virtual {v1, v0}, Landroid/support/v4/app/u;->getColor(I)I

    move-result v0

    .line 87
    :goto_1
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/CommentWidget;->outerLayout:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 90
    invoke-direct {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/CommentWidget;->setLayoutLeftPadding(Lcm/aptoide/pt/viewRateAndCommentReviews/ComplexComment;)V

    .line 92
    invoke-virtual {p1}, Lcm/aptoide/pt/viewRateAndCommentReviews/ComplexComment;->getLevel()I

    move-result v0

    if-ne v0, v5, :cond_2

    .line 94
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/CommentWidget;->replyLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 95
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/CommentWidget;->compositeSubscription:Lrx/j/b;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/CommentWidget;->replyLayout:Landroid/view/View;

    invoke-static {v1}, Lcom/c/a/b/c;->a(Landroid/view/View;)Lrx/d;

    move-result-object v1

    invoke-static {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/CommentWidget$$Lambda$1;->lambdaFactory$(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/CommentWidget;Lcm/aptoide/pt/viewRateAndCommentReviews/ComplexComment;)Lrx/b/e;

    move-result-object v2

    .line 96
    invoke-virtual {v1, v2}, Lrx/d;->e(Lrx/b/e;)Lrx/d;

    move-result-object v1

    .line 99
    invoke-virtual {v1}, Lrx/d;->k()Lrx/d;

    move-result-object v1

    invoke-static {}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/CommentWidget$$Lambda$2;->lambdaFactory$()Lrx/b/b;

    move-result-object v2

    invoke-static {}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/CommentWidget$$Lambda$3;->lambdaFactory$()Lrx/b/b;

    move-result-object v3

    .line 100
    invoke-virtual {v1, v2, v3}, Lrx/d;->a(Lrx/b/b;Lrx/b/b;)Lrx/k;

    move-result-object v1

    .line 95
    invoke-virtual {v0, v1}, Lrx/j/b;->a(Lrx/k;)V

    .line 109
    :goto_2
    return-void

    .line 79
    :cond_0
    sget v0, Lcm/aptoide/pt/v8engine/R$color;->comment_gray:I

    goto :goto_0

    .line 85
    :cond_1
    invoke-virtual {v1}, Landroid/support/v4/app/u;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_1

    .line 105
    :cond_2
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/CommentWidget;->replyLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 106
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/CommentWidget;->userAvatar:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 107
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/CommentWidget;->userAvatar:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setScaleY(F)V

    goto :goto_2
.end method

.method static synthetic lambda$bindComplexComment$2(Ljava/lang/Void;)V
    .locals 0

    .prologue
    .line 100
    return-void
.end method

.method static synthetic lambda$bindComplexComment$3(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 101
    invoke-static {}, Lcm/aptoide/pt/crashreports/CrashReport;->getInstance()Lcm/aptoide/pt/crashreports/CrashReport;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcm/aptoide/pt/crashreports/CrashReport;->log(Ljava/lang/Throwable;)V

    .line 102
    return-void
.end method

.method private setLayoutLeftPadding(Lcm/aptoide/pt/viewRateAndCommentReviews/ComplexComment;)V
    .locals 5

    .prologue
    .line 112
    invoke-virtual {p1}, Lcm/aptoide/pt/viewRateAndCommentReviews/ComplexComment;->getLevel()I

    move-result v0

    .line 113
    const/16 v1, 0xf

    invoke-static {v1}, Lcm/aptoide/pt/utils/AptoideUtils$ScreenU;->getPixels(I)I

    move-result v1

    .line 114
    const/4 v2, 0x2

    if-ge v0, v2, :cond_0

    move v0, v1

    .line 115
    :goto_0
    iget-object v2, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/CommentWidget;->outerLayout:Landroid/view/View;

    iget-object v3, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/CommentWidget;->outerLayout:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    iget-object v4, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/CommentWidget;->outerLayout:Landroid/view/View;

    .line 116
    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    .line 115
    invoke-virtual {v2, v0, v3, v1, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 117
    return-void

    .line 114
    :cond_0
    mul-int/2addr v0, v1

    goto :goto_0
.end method


# virtual methods
.method protected assignViews(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 42
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->user_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/CommentWidget;->userAvatar:Landroid/widget/ImageView;

    .line 43
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->outer_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/CommentWidget;->outerLayout:Landroid/view/View;

    .line 44
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->user_name:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/CommentWidget;->userName:Landroid/widget/TextView;

    .line 45
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->added_date_pos1:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/CommentWidget;->datePos1:Landroid/widget/TextView;

    .line 46
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->added_date_pos2:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/CommentWidget;->datePos2:Landroid/widget/TextView;

    .line 47
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->comment:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/CommentWidget;->comment:Landroid/widget/TextView;

    .line 48
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->reply_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/CommentWidget;->replyLayout:Landroid/view/View;

    .line 49
    return-void
.end method

.method public bridge synthetic bindView(Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;)V
    .locals 0

    .prologue
    .line 24
    check-cast p1, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/CommentDisplayable;

    invoke-virtual {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/CommentWidget;->bindView(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/CommentDisplayable;)V

    return-void
.end method

.method public bindView(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/CommentDisplayable;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 52
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/CommentDisplayable;->getComment()Lcm/aptoide/pt/model/v7/Comment;

    move-result-object v0

    .line 54
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/CommentWidget;->getContext()Landroid/support/v4/app/u;

    move-result-object v1

    .line 55
    invoke-static {v1}, Lcm/aptoide/pt/imageloader/ImageLoader;->with(Landroid/content/Context;)Lcm/aptoide/pt/imageloader/ImageLoader;

    move-result-object v2

    .line 56
    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/Comment;->getUser()Lcm/aptoide/pt/model/v7/Comment$User;

    move-result-object v3

    invoke-virtual {v3}, Lcm/aptoide/pt/model/v7/Comment$User;->getAvatar()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/CommentWidget;->userAvatar:Landroid/widget/ImageView;

    sget v5, Lcm/aptoide/pt/v8engine/R$drawable;->layer_1:I

    invoke-virtual {v2, v3, v4, v5}, Lcm/aptoide/pt/imageloader/ImageLoader;->loadWithCircleTransformAndPlaceHolderAvatarSize(Ljava/lang/String;Landroid/widget/ImageView;I)Lcom/bumptech/glide/g/b/k;

    .line 58
    iget-object v2, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/CommentWidget;->userName:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/Comment;->getUser()Lcm/aptoide/pt/model/v7/Comment$User;

    move-result-object v3

    invoke-virtual {v3}, Lcm/aptoide/pt/model/v7/Comment$User;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    invoke-static {}, Lcm/aptoide/pt/utils/AptoideUtils$DateTimeU;->getInstance()Lcm/aptoide/pt/utils/AptoideUtils$DateTimeU;

    move-result-object v2

    .line 61
    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/Comment;->getAdded()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v2, v1, v4, v5}, Lcm/aptoide/pt/utils/AptoideUtils$DateTimeU;->getTimeDiffString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    .line 62
    iget-object v2, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/CommentWidget;->datePos1:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    iget-object v2, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/CommentWidget;->datePos2:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/CommentWidget;->comment:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/Comment;->getBody()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    const-class v1, Lcm/aptoide/pt/viewRateAndCommentReviews/ComplexComment;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 68
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/CommentWidget;->datePos2:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 69
    check-cast v0, Lcm/aptoide/pt/viewRateAndCommentReviews/ComplexComment;

    invoke-direct {p0, v0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/CommentWidget;->bindComplexComment(Lcm/aptoide/pt/viewRateAndCommentReviews/ComplexComment;)V

    .line 73
    :goto_0
    return-void

    .line 71
    :cond_0
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/CommentWidget;->datePos1:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method synthetic lambda$bindComplexComment$1(Lcm/aptoide/pt/viewRateAndCommentReviews/ComplexComment;Ljava/lang/Void;)Lrx/d;
    .locals 2

    .prologue
    .line 96
    invoke-virtual {p1}, Lcm/aptoide/pt/viewRateAndCommentReviews/ComplexComment;->observeReplySubmission()Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/CommentWidget$$Lambda$4;->lambdaFactory$(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/CommentWidget;)Lrx/b/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->a(Lrx/b/b;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$null$0(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/CommentWidget;->userAvatar:Landroid/widget/ImageView;

    sget v1, Lcm/aptoide/pt/v8engine/R$string;->error_occured:I

    invoke-static {v0, v1}, Lcm/aptoide/pt/utils/design/ShowMessage;->asSnack(Landroid/view/View;I)V

    .line 98
    return-void
.end method
