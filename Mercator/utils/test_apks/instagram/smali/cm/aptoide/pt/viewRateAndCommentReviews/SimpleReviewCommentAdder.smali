.class public Lcm/aptoide/pt/viewRateAndCommentReviews/SimpleReviewCommentAdder;
.super Lcm/aptoide/pt/viewRateAndCommentReviews/CommentAdder;
.source "SimpleReviewCommentAdder.java"


# instance fields
.field private final commentAdderView:Lcm/aptoide/pt/viewRateAndCommentReviews/CommentAdderView;


# direct methods
.method public constructor <init>(ILcm/aptoide/pt/viewRateAndCommentReviews/CommentAdderView;)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcm/aptoide/pt/viewRateAndCommentReviews/CommentAdder;-><init>(I)V

    .line 14
    iput-object p2, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/SimpleReviewCommentAdder;->commentAdderView:Lcm/aptoide/pt/viewRateAndCommentReviews/CommentAdderView;

    .line 15
    return-void
.end method


# virtual methods
.method public addComment(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcm/aptoide/pt/model/v7/Comment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 18
    iget-object v0, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/SimpleReviewCommentAdder;->commentAdderView:Lcm/aptoide/pt/viewRateAndCommentReviews/CommentAdderView;

    invoke-interface {v0}, Lcm/aptoide/pt/viewRateAndCommentReviews/CommentAdderView;->getAdapter()Lcm/aptoide/pt/v8engine/adapters/CommentsAdapter;

    move-result-object v0

    iget v1, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/SimpleReviewCommentAdder;->itemIndex:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcm/aptoide/pt/v8engine/adapters/CommentsAdapter;->getItemPosition(I)I

    move-result v0

    .line 19
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/SimpleReviewCommentAdder;->commentAdderView:Lcm/aptoide/pt/viewRateAndCommentReviews/CommentAdderView;

    invoke-interface {v0}, Lcm/aptoide/pt/viewRateAndCommentReviews/CommentAdderView;->getAdapter()Lcm/aptoide/pt/v8engine/adapters/CommentsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/v8engine/adapters/CommentsAdapter;->getItemCount()I

    move-result v0

    .line 21
    :cond_0
    iget-object v1, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/SimpleReviewCommentAdder;->commentAdderView:Lcm/aptoide/pt/viewRateAndCommentReviews/CommentAdderView;

    invoke-interface {v1}, Lcm/aptoide/pt/viewRateAndCommentReviews/CommentAdderView;->getAdapter()Lcm/aptoide/pt/v8engine/adapters/CommentsAdapter;

    move-result-object v1

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Lcm/aptoide/pt/v8engine/adapters/CommentsAdapter;->removeDisplayable(I)V

    .line 22
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 23
    iget-object v2, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/SimpleReviewCommentAdder;->commentAdderView:Lcm/aptoide/pt/viewRateAndCommentReviews/CommentAdderView;

    invoke-interface {v2, p1, v1}, Lcm/aptoide/pt/viewRateAndCommentReviews/CommentAdderView;->createDisplayableComments(Ljava/util/List;Ljava/util/List;)V

    .line 24
    iget-object v2, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/SimpleReviewCommentAdder;->commentAdderView:Lcm/aptoide/pt/viewRateAndCommentReviews/CommentAdderView;

    invoke-interface {v2}, Lcm/aptoide/pt/viewRateAndCommentReviews/CommentAdderView;->getAdapter()Lcm/aptoide/pt/v8engine/adapters/CommentsAdapter;

    move-result-object v2

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v2, v0, v1}, Lcm/aptoide/pt/v8engine/adapters/CommentsAdapter;->addDisplayables(ILjava/util/List;)V

    .line 25
    return-void
.end method

.method public bridge synthetic collapseComments()V
    .locals 0

    .prologue
    .line 8
    invoke-super {p0}, Lcm/aptoide/pt/viewRateAndCommentReviews/CommentAdder;->collapseComments()V

    return-void
.end method
