.class public Lcm/aptoide/pt/viewRateAndCommentReviews/ConcreteItemCommentAdder;
.super Lcm/aptoide/pt/viewRateAndCommentReviews/CommentAdder;
.source "ConcreteItemCommentAdder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcm/aptoide/pt/viewRateAndCommentReviews/CommentAdder;"
    }
.end annotation


# instance fields
.field private final commentAdderView:Lcm/aptoide/pt/viewRateAndCommentReviews/ItemCommentAdderView;

.field private final review:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILcm/aptoide/pt/viewRateAndCommentReviews/ItemCommentAdderView;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcm/aptoide/pt/viewRateAndCommentReviews/ItemCommentAdderView;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcm/aptoide/pt/viewRateAndCommentReviews/CommentAdder;-><init>(I)V

    .line 17
    iput-object p2, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/ConcreteItemCommentAdder;->commentAdderView:Lcm/aptoide/pt/viewRateAndCommentReviews/ItemCommentAdderView;

    .line 18
    iput-object p3, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/ConcreteItemCommentAdder;->review:Ljava/lang/Object;

    .line 19
    return-void
.end method


# virtual methods
.method public addComment(Ljava/util/List;)V
    .locals 4
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
    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 23
    iget-object v1, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/ConcreteItemCommentAdder;->commentAdderView:Lcm/aptoide/pt/viewRateAndCommentReviews/ItemCommentAdderView;

    invoke-interface {v1, p1, v0}, Lcm/aptoide/pt/viewRateAndCommentReviews/ItemCommentAdderView;->createDisplayableComments(Ljava/util/List;Ljava/util/List;)V

    .line 24
    iget-object v1, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/ConcreteItemCommentAdder;->commentAdderView:Lcm/aptoide/pt/viewRateAndCommentReviews/ItemCommentAdderView;

    invoke-interface {v1}, Lcm/aptoide/pt/viewRateAndCommentReviews/ItemCommentAdderView;->getAdapter()Lcm/aptoide/pt/v8engine/adapters/CommentsAdapter;

    move-result-object v1

    iget v2, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/ConcreteItemCommentAdder;->itemIndex:I

    invoke-virtual {v1, v2}, Lcm/aptoide/pt/v8engine/adapters/CommentsAdapter;->getItemPosition(I)I

    move-result v1

    .line 25
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x2

    if-le v2, v3, :cond_0

    .line 26
    iget-object v2, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/ConcreteItemCommentAdder;->commentAdderView:Lcm/aptoide/pt/viewRateAndCommentReviews/ItemCommentAdderView;

    iget-object v3, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/ConcreteItemCommentAdder;->review:Ljava/lang/Object;

    invoke-interface {v2, v1, v3}, Lcm/aptoide/pt/viewRateAndCommentReviews/ItemCommentAdderView;->createReadMoreDisplayable(ILjava/lang/Object;)Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    :cond_0
    iget-object v2, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/ConcreteItemCommentAdder;->commentAdderView:Lcm/aptoide/pt/viewRateAndCommentReviews/ItemCommentAdderView;

    invoke-interface {v2}, Lcm/aptoide/pt/viewRateAndCommentReviews/ItemCommentAdderView;->getAdapter()Lcm/aptoide/pt/v8engine/adapters/CommentsAdapter;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, v1, v0}, Lcm/aptoide/pt/v8engine/adapters/CommentsAdapter;->addDisplayables(ILjava/util/List;)V

    .line 29
    return-void
.end method

.method public collapseComments()V
    .locals 4

    .prologue
    .line 32
    iget-object v0, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/ConcreteItemCommentAdder;->commentAdderView:Lcm/aptoide/pt/viewRateAndCommentReviews/ItemCommentAdderView;

    invoke-interface {v0}, Lcm/aptoide/pt/viewRateAndCommentReviews/ItemCommentAdderView;->getAdapter()Lcm/aptoide/pt/v8engine/adapters/CommentsAdapter;

    move-result-object v1

    .line 33
    iget v0, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/ConcreteItemCommentAdder;->itemIndex:I

    invoke-virtual {v1, v0}, Lcm/aptoide/pt/v8engine/adapters/CommentsAdapter;->getItemPosition(I)I

    move-result v2

    .line 34
    iget v0, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/ConcreteItemCommentAdder;->itemIndex:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Lcm/aptoide/pt/v8engine/adapters/CommentsAdapter;->getItemPosition(I)I

    move-result v0

    .line 35
    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/ConcreteItemCommentAdder;->commentAdderView:Lcm/aptoide/pt/viewRateAndCommentReviews/ItemCommentAdderView;

    invoke-interface {v0}, Lcm/aptoide/pt/viewRateAndCommentReviews/ItemCommentAdderView;->getAdapter()Lcm/aptoide/pt/v8engine/adapters/CommentsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/v8engine/adapters/CommentsAdapter;->getItemCount()I

    move-result v0

    .line 36
    :cond_0
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v2, v0}, Lcm/aptoide/pt/v8engine/adapters/CommentsAdapter;->removeDisplayables(II)V

    .line 39
    return-void
.end method
