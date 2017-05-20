.class public Lcm/aptoide/pt/viewRateAndCommentReviews/ComplexComment;
.super Lcm/aptoide/pt/model/v7/Comment;
.source "ComplexComment.java"


# instance fields
.field private final level:I

.field private final onClickReplyAction:Lrx/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/d",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcm/aptoide/pt/viewRateAndCommentReviews/CommentNode;Lrx/d;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcm/aptoide/pt/viewRateAndCommentReviews/CommentNode;",
            "Lrx/d",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 10
    invoke-direct {p0}, Lcm/aptoide/pt/model/v7/Comment;-><init>()V

    .line 11
    invoke-virtual {p1}, Lcm/aptoide/pt/viewRateAndCommentReviews/CommentNode;->getLevel()I

    move-result v0

    iput v0, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/ComplexComment;->level:I

    .line 12
    invoke-virtual {p1}, Lcm/aptoide/pt/viewRateAndCommentReviews/CommentNode;->getComment()Lcm/aptoide/pt/model/v7/Comment;

    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/Comment;->getAdded()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcm/aptoide/pt/viewRateAndCommentReviews/ComplexComment;->setAdded(Ljava/util/Date;)V

    .line 14
    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/Comment;->getBody()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcm/aptoide/pt/viewRateAndCommentReviews/ComplexComment;->setBody(Ljava/lang/String;)V

    .line 15
    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/Comment;->getId()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcm/aptoide/pt/viewRateAndCommentReviews/ComplexComment;->setId(J)V

    .line 16
    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/Comment;->getParent()Lcm/aptoide/pt/model/v7/Comment$Parent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 17
    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/Comment;->getParent()Lcm/aptoide/pt/model/v7/Comment$Parent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcm/aptoide/pt/viewRateAndCommentReviews/ComplexComment;->setParent(Lcm/aptoide/pt/model/v7/Comment$Parent;)V

    .line 19
    :cond_0
    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/Comment;->getParentReview()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcm/aptoide/pt/viewRateAndCommentReviews/ComplexComment;->setParentReview(Ljava/lang/Long;)V

    .line 20
    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/Comment;->getUser()Lcm/aptoide/pt/model/v7/Comment$User;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcm/aptoide/pt/viewRateAndCommentReviews/ComplexComment;->setUser(Lcm/aptoide/pt/model/v7/Comment$User;)V

    .line 21
    iput-object p2, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/ComplexComment;->onClickReplyAction:Lrx/d;

    .line 22
    return-void
.end method


# virtual methods
.method public getLevel()I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/ComplexComment;->level:I

    return v0
.end method

.method public observeReplySubmission()Lrx/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/d",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 25
    iget-object v0, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/ComplexComment;->onClickReplyAction:Lrx/d;

    return-object v0
.end method
