.class public Lcm/aptoide/pt/viewRateAndCommentReviews/CommentNode;
.super Ljava/lang/Object;
.source "CommentNode.java"


# instance fields
.field private final childComments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcm/aptoide/pt/viewRateAndCommentReviews/CommentNode;",
            ">;"
        }
    .end annotation
.end field

.field private comment:Lcm/aptoide/pt/model/v7/Comment;

.field private level:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcm/aptoide/pt/viewRateAndCommentReviews/CommentNode;-><init>(Lcm/aptoide/pt/model/v7/Comment;)V

    .line 17
    return-void
.end method

.method public constructor <init>(Lcm/aptoide/pt/model/v7/Comment;)V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, 0x1

    iput v0, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/CommentNode;->level:I

    .line 20
    iput-object p1, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/CommentNode;->comment:Lcm/aptoide/pt/model/v7/Comment;

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/CommentNode;->childComments:Ljava/util/List;

    .line 22
    return-void
.end method


# virtual methods
.method public addChild(Lcm/aptoide/pt/viewRateAndCommentReviews/CommentNode;)V
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/CommentNode;->childComments:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    return-void
.end method

.method public getChildComments()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcm/aptoide/pt/viewRateAndCommentReviews/CommentNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 41
    iget-object v0, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/CommentNode;->childComments:Ljava/util/List;

    return-object v0
.end method

.method public getComment()Lcm/aptoide/pt/model/v7/Comment;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/CommentNode;->comment:Lcm/aptoide/pt/model/v7/Comment;

    return-object v0
.end method

.method public getLevel()I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/CommentNode;->level:I

    return v0
.end method

.method public hasChild()Z
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/CommentNode;->childComments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setComment(Lcm/aptoide/pt/model/v7/Comment;)V
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/CommentNode;->comment:Lcm/aptoide/pt/model/v7/Comment;

    .line 30
    return-void
.end method

.method public setLevel(I)V
    .locals 0

    .prologue
    .line 49
    iput p1, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/CommentNode;->level:I

    .line 50
    return-void
.end method
