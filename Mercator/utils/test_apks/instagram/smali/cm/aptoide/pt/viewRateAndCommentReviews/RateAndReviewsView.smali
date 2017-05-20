.class interface abstract Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsView;
.super Ljava/lang/Object;
.source "RateAndReviewsView.java"

# interfaces
.implements Lcm/aptoide/pt/v8engine/view/View;


# virtual methods
.method public abstract nextReviews()Lrx/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/d",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract rateApp()Lrx/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/d",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end method

.method public abstract showError(Ljava/lang/Throwable;)V
.end method

.method public abstract showNextReviews(ILjava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcm/aptoide/pt/model/v7/Review;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract showRateView()Lrx/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/d",
            "<",
            "Lcm/aptoide/pt/utils/GenericDialogs$EResponse;",
            ">;"
        }
    .end annotation
.end method

.method public abstract showRating(Lcm/aptoide/pt/model/v7/GetAppMeta$Stats$Rating;)V
.end method
