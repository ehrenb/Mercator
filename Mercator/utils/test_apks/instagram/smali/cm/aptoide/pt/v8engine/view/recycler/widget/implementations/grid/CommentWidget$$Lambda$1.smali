.class final synthetic Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/CommentWidget$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Lrx/b/e;


# instance fields
.field private final arg$1:Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/CommentWidget;

.field private final arg$2:Lcm/aptoide/pt/viewRateAndCommentReviews/ComplexComment;


# direct methods
.method private constructor <init>(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/CommentWidget;Lcm/aptoide/pt/viewRateAndCommentReviews/ComplexComment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/CommentWidget$$Lambda$1;->arg$1:Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/CommentWidget;

    iput-object p2, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/CommentWidget$$Lambda$1;->arg$2:Lcm/aptoide/pt/viewRateAndCommentReviews/ComplexComment;

    return-void
.end method

.method public static lambdaFactory$(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/CommentWidget;Lcm/aptoide/pt/viewRateAndCommentReviews/ComplexComment;)Lrx/b/e;
    .locals 1

    new-instance v0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/CommentWidget$$Lambda$1;

    invoke-direct {v0, p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/CommentWidget$$Lambda$1;-><init>(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/CommentWidget;Lcm/aptoide/pt/viewRateAndCommentReviews/ComplexComment;)V

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/CommentWidget$$Lambda$1;->arg$1:Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/CommentWidget;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/CommentWidget$$Lambda$1;->arg$2:Lcm/aptoide/pt/viewRateAndCommentReviews/ComplexComment;

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {v0, v1, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/CommentWidget;->lambda$bindComplexComment$1(Lcm/aptoide/pt/viewRateAndCommentReviews/ComplexComment;Ljava/lang/Void;)Lrx/d;

    move-result-object v0

    return-object v0
.end method
