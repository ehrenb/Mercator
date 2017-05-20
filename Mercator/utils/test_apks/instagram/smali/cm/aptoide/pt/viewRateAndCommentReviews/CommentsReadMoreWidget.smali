.class public Lcm/aptoide/pt/viewRateAndCommentReviews/CommentsReadMoreWidget;
.super Lcm/aptoide/pt/v8engine/view/recycler/widget/Widget;
.source "CommentsReadMoreWidget.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcm/aptoide/pt/v8engine/view/recycler/widget/Widget",
        "<",
        "Lcm/aptoide/pt/viewRateAndCommentReviews/CommentsReadMoreDisplayable;",
        ">;"
    }
.end annotation


# instance fields
.field private final aptoideClientUUID:Lcm/aptoide/pt/interfaces/AptoideClientUUID;

.field private readMoreButton:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/Widget;-><init>(Landroid/view/View;)V

    .line 31
    new-instance v0, Lcm/aptoide/pt/dataprovider/repository/IdsRepositoryImpl;

    invoke-static {}, Lcm/aptoide/pt/preferences/secure/SecurePreferencesImplementation;->getInstance()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 32
    invoke-static {}, Lcm/aptoide/pt/dataprovider/DataProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcm/aptoide/pt/dataprovider/repository/IdsRepositoryImpl;-><init>(Landroid/content/SharedPreferences;Landroid/content/Context;)V

    iput-object v0, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/CommentsReadMoreWidget;->aptoideClientUUID:Lcm/aptoide/pt/interfaces/AptoideClientUUID;

    .line 33
    return-void
.end method

.method static synthetic lambda$null$0(Lcm/aptoide/pt/viewRateAndCommentReviews/CommentsReadMoreDisplayable;Lcm/aptoide/pt/model/v7/ListComments;)V
    .locals 2

    .prologue
    .line 44
    invoke-virtual {p0}, Lcm/aptoide/pt/viewRateAndCommentReviews/CommentsReadMoreDisplayable;->getCommentAdder()Lcm/aptoide/pt/viewRateAndCommentReviews/CommentAdder;

    move-result-object v0

    .line 45
    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/ListComments;->getDatalist()Lcm/aptoide/pt/model/v7/Datalist;

    move-result-object v1

    invoke-virtual {v1}, Lcm/aptoide/pt/model/v7/Datalist;->getList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcm/aptoide/pt/viewRateAndCommentReviews/CommentAdder;->addComment(Ljava/util/List;)V

    .line 44
    return-void
.end method


# virtual methods
.method protected assignViews(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 36
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->read_more_button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/CommentsReadMoreWidget;->readMoreButton:Landroid/widget/TextView;

    .line 37
    return-void
.end method

.method public bridge synthetic bindView(Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;)V
    .locals 0

    .prologue
    .line 23
    check-cast p1, Lcm/aptoide/pt/viewRateAndCommentReviews/CommentsReadMoreDisplayable;

    invoke-virtual {p0, p1}, Lcm/aptoide/pt/viewRateAndCommentReviews/CommentsReadMoreWidget;->bindView(Lcm/aptoide/pt/viewRateAndCommentReviews/CommentsReadMoreDisplayable;)V

    return-void
.end method

.method public bindView(Lcm/aptoide/pt/viewRateAndCommentReviews/CommentsReadMoreDisplayable;)V
    .locals 3

    .prologue
    .line 40
    iget-object v0, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/CommentsReadMoreWidget;->compositeSubscription:Lrx/j/b;

    iget-object v1, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/CommentsReadMoreWidget;->readMoreButton:Landroid/widget/TextView;

    invoke-static {v1}, Lcom/c/a/b/c;->a(Landroid/view/View;)Lrx/d;

    move-result-object v1

    invoke-static {p0, p1}, Lcm/aptoide/pt/viewRateAndCommentReviews/CommentsReadMoreWidget$$Lambda$1;->lambdaFactory$(Lcm/aptoide/pt/viewRateAndCommentReviews/CommentsReadMoreWidget;Lcm/aptoide/pt/viewRateAndCommentReviews/CommentsReadMoreDisplayable;)Lrx/b/b;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/d;->d(Lrx/b/b;)Lrx/k;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/j/b;->a(Lrx/k;)V

    .line 47
    return-void
.end method

.method synthetic lambda$bindView$1(Lcm/aptoide/pt/viewRateAndCommentReviews/CommentsReadMoreDisplayable;Ljava/lang/Void;)V
    .locals 7

    .prologue
    .line 41
    invoke-virtual {p1}, Lcm/aptoide/pt/viewRateAndCommentReviews/CommentsReadMoreDisplayable;->getResourceId()J

    move-result-wide v0

    invoke-virtual {p1}, Lcm/aptoide/pt/viewRateAndCommentReviews/CommentsReadMoreDisplayable;->getNext()I

    move-result v2

    const/16 v3, 0x64

    .line 42
    invoke-static {}, Lcm/aptoide/accountmanager/AptoideAccountManager;->getAccessToken()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/CommentsReadMoreWidget;->aptoideClientUUID:Lcm/aptoide/pt/interfaces/AptoideClientUUID;

    invoke-interface {v5}, Lcm/aptoide/pt/interfaces/AptoideClientUUID;->getUniqueIdentifier()Ljava/lang/String;

    move-result-object v5

    .line 43
    invoke-virtual {p1}, Lcm/aptoide/pt/viewRateAndCommentReviews/CommentsReadMoreDisplayable;->isReview()Z

    move-result v6

    .line 41
    invoke-static/range {v0 .. v6}, Lcm/aptoide/pt/dataprovider/ws/v7/ListCommentsRequest;->of(JIILjava/lang/String;Ljava/lang/String;Z)Lcm/aptoide/pt/dataprovider/ws/v7/ListCommentsRequest;

    move-result-object v0

    invoke-static {p1}, Lcm/aptoide/pt/viewRateAndCommentReviews/CommentsReadMoreWidget$$Lambda$2;->lambdaFactory$(Lcm/aptoide/pt/viewRateAndCommentReviews/CommentsReadMoreDisplayable;)Lcm/aptoide/pt/networkclient/interfaces/SuccessRequestListener;

    move-result-object v1

    .line 44
    invoke-virtual {v0, v1}, Lcm/aptoide/pt/dataprovider/ws/v7/ListCommentsRequest;->execute(Lcm/aptoide/pt/networkclient/interfaces/SuccessRequestListener;)V

    .line 46
    return-void
.end method
