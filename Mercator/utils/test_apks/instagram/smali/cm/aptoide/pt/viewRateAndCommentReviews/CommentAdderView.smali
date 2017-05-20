.class public interface abstract Lcm/aptoide/pt/viewRateAndCommentReviews/CommentAdderView;
.super Ljava/lang/Object;
.source "CommentAdderView.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Tadapter:",
        "Lcm/aptoide/pt/v8engine/adapters/CommentsAdapter;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract createDisplayableComments(Ljava/util/List;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcm/aptoide/pt/model/v7/Comment;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getAdapter()Lcm/aptoide/pt/v8engine/adapters/CommentsAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTadapter;"
        }
    .end annotation
.end method
