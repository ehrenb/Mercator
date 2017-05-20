.class public Lcm/aptoide/pt/v8engine/util/CommentOperations;
.super Ljava/lang/Object;
.source "CommentOperations.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public flattenByDepth(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcm/aptoide/pt/viewRateAndCommentReviews/CommentNode;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcm/aptoide/pt/viewRateAndCommentReviews/CommentNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 19
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 20
    new-instance v3, Ljava/util/Stack;

    invoke-direct {v3}, Ljava/util/Stack;-><init>()V

    .line 21
    invoke-virtual {v3, p1}, Ljava/util/Stack;->addAll(Ljava/util/Collection;)Z

    .line 22
    :cond_0
    invoke-virtual {v3}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 23
    invoke-virtual {v3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/viewRateAndCommentReviews/CommentNode;

    .line 24
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    invoke-virtual {v0}, Lcm/aptoide/pt/viewRateAndCommentReviews/CommentNode;->hasChild()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 27
    invoke-virtual {v0}, Lcm/aptoide/pt/viewRateAndCommentReviews/CommentNode;->getChildComments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcm/aptoide/pt/viewRateAndCommentReviews/CommentNode;

    .line 28
    invoke-virtual {v0}, Lcm/aptoide/pt/viewRateAndCommentReviews/CommentNode;->getLevel()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v1, v5}, Lcm/aptoide/pt/viewRateAndCommentReviews/CommentNode;->setLevel(I)V

    .line 29
    invoke-virtual {v3, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 34
    :cond_1
    return-object v2
.end method

.method public transform(Ljava/util/List;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcm/aptoide/pt/model/v7/Comment;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcm/aptoide/pt/viewRateAndCommentReviews/CommentNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 44
    new-instance v2, Landroid/support/v4/f/e;

    invoke-direct {v2}, Landroid/support/v4/f/e;-><init>()V

    .line 46
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/model/v7/Comment;

    .line 47
    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/Comment;->getParent()Lcm/aptoide/pt/model/v7/Comment$Parent;

    move-result-object v4

    .line 48
    if-eqz v4, :cond_1

    .line 52
    invoke-virtual {v4}, Lcm/aptoide/pt/model/v7/Comment$Parent;->getId()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Landroid/support/v4/f/e;->a(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcm/aptoide/pt/viewRateAndCommentReviews/CommentNode;

    .line 53
    if-nez v1, :cond_0

    .line 54
    new-instance v1, Lcm/aptoide/pt/viewRateAndCommentReviews/CommentNode;

    invoke-direct {v1}, Lcm/aptoide/pt/viewRateAndCommentReviews/CommentNode;-><init>()V

    .line 56
    :cond_0
    new-instance v5, Lcm/aptoide/pt/viewRateAndCommentReviews/CommentNode;

    invoke-direct {v5, v0}, Lcm/aptoide/pt/viewRateAndCommentReviews/CommentNode;-><init>(Lcm/aptoide/pt/model/v7/Comment;)V

    invoke-virtual {v1, v5}, Lcm/aptoide/pt/viewRateAndCommentReviews/CommentNode;->addChild(Lcm/aptoide/pt/viewRateAndCommentReviews/CommentNode;)V

    .line 57
    invoke-virtual {v4}, Lcm/aptoide/pt/model/v7/Comment$Parent;->getId()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5, v1}, Landroid/support/v4/f/e;->c(JLjava/lang/Object;)V

    goto :goto_0

    .line 62
    :cond_1
    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/Comment;->getId()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Landroid/support/v4/f/e;->a(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcm/aptoide/pt/viewRateAndCommentReviews/CommentNode;

    .line 63
    if-nez v1, :cond_2

    .line 64
    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/Comment;->getId()J

    move-result-wide v4

    new-instance v1, Lcm/aptoide/pt/viewRateAndCommentReviews/CommentNode;

    invoke-direct {v1, v0}, Lcm/aptoide/pt/viewRateAndCommentReviews/CommentNode;-><init>(Lcm/aptoide/pt/model/v7/Comment;)V

    invoke-virtual {v2, v4, v5, v1}, Landroid/support/v4/f/e;->c(JLjava/lang/Object;)V

    goto :goto_0

    .line 66
    :cond_2
    invoke-virtual {v1, v0}, Lcm/aptoide/pt/viewRateAndCommentReviews/CommentNode;->setComment(Lcm/aptoide/pt/model/v7/Comment;)V

    goto :goto_0

    .line 71
    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v2}, Landroid/support/v4/f/e;->b()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 72
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v2}, Landroid/support/v4/f/e;->b()I

    move-result v3

    if-ge v0, v3, :cond_4

    .line 73
    invoke-virtual {v2, v0}, Landroid/support/v4/f/e;->c(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 75
    :cond_4
    return-object v1
.end method
