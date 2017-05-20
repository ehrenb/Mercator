.class abstract Lcm/aptoide/pt/viewRateAndCommentReviews/CommentAdder;
.super Ljava/lang/Object;
.source "CommentAdder.java"


# instance fields
.field final itemIndex:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput p1, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/CommentAdder;->itemIndex:I

    .line 12
    return-void
.end method


# virtual methods
.method public abstract addComment(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcm/aptoide/pt/model/v7/Comment;",
            ">;)V"
        }
    .end annotation
.end method

.method public collapseComments()V
    .locals 0

    .prologue
    .line 18
    return-void
.end method
