.class Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/StoreLatestCommentsWidget$CommentListAdapter;
.super Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;
.source "StoreLatestCommentsWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/StoreLatestCommentsWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CommentListAdapter"
.end annotation


# direct methods
.method constructor <init>(JLjava/lang/String;Ljava/util/List;Landroid/app/FragmentManager;Landroid/view/View;Lrx/d;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcm/aptoide/pt/model/v7/Comment;",
            ">;",
            "Landroid/app/FragmentManager;",
            "Landroid/view/View;",
            "Lrx/d",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 97
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;-><init>()V

    .line 99
    new-instance v2, Lcm/aptoide/pt/v8engine/util/CommentOperations;

    invoke-direct {v2}, Lcm/aptoide/pt/v8engine/util/CommentOperations;-><init>()V

    .line 101
    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Lcm/aptoide/pt/v8engine/util/CommentOperations;->transform(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcm/aptoide/pt/v8engine/util/CommentOperations;->flattenByDepth(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 103
    new-instance v11, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v11, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 104
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcm/aptoide/pt/viewRateAndCommentReviews/CommentNode;

    .line 105
    new-instance v13, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/CommentDisplayable;

    new-instance v14, Lcm/aptoide/pt/viewRateAndCommentReviews/ComplexComment;

    .line 106
    invoke-virtual {v2}, Lcm/aptoide/pt/viewRateAndCommentReviews/CommentNode;->getComment()Lcm/aptoide/pt/model/v7/Comment;

    move-result-object v6

    move-object v3, p0

    move-wide/from16 v4, p1

    move-object/from16 v7, p3

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    invoke-direct/range {v3 .. v10}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/StoreLatestCommentsWidget$CommentListAdapter;->showStoreCommentFragment(JLcm/aptoide/pt/model/v7/Comment;Ljava/lang/String;Landroid/app/FragmentManager;Landroid/view/View;Lrx/d;)Lrx/d;

    move-result-object v3

    invoke-direct {v14, v2, v3}, Lcm/aptoide/pt/viewRateAndCommentReviews/ComplexComment;-><init>(Lcm/aptoide/pt/viewRateAndCommentReviews/CommentNode;Lrx/d;)V

    invoke-direct {v13, v14}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/CommentDisplayable;-><init>(Lcm/aptoide/pt/model/v7/Comment;)V

    .line 105
    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 109
    :cond_0
    invoke-virtual {p0, v11}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/StoreLatestCommentsWidget$CommentListAdapter;->addDisplayables(Ljava/util/List;)V

    .line 110
    return-void
.end method

.method static synthetic lambda$null$0(Lcm/aptoide/pt/viewRateAndCommentReviews/CommentDialogFragment;Landroid/app/FragmentManager;)V
    .locals 1

    .prologue
    .line 126
    const-string v0, "fragment_comment_dialog_latest"

    invoke-virtual {p0, p1, v0}, Lcm/aptoide/pt/viewRateAndCommentReviews/CommentDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$null$1(Lcom/trello/rxlifecycle/a/b;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 128
    sget-object v0, Lcom/trello/rxlifecycle/a/b;->h:Lcom/trello/rxlifecycle/a/b;

    invoke-virtual {p0, v0}, Lcom/trello/rxlifecycle/a/b;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$null$2(Lrx/d;Lcom/trello/rxlifecycle/a/b;)Lrx/d;
    .locals 0

    .prologue
    .line 129
    return-object p0
.end method

.method static synthetic lambda$showSignInMessage$4(Landroid/view/View;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 139
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcm/aptoide/accountmanager/AptoideAccountManager;->openAccountManager(Landroid/content/Context;)V

    .line 140
    return-void
.end method

.method static synthetic lambda$showSignInMessage$5(Ljava/lang/Integer;)Lrx/d;
    .locals 1

    .prologue
    .line 140
    invoke-static {}, Lrx/d;->d()Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method private showSignInMessage(Landroid/view/View;)Lrx/d;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Lrx/d",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 137
    sget v0, Lcm/aptoide/pt/v8engine/R$string;->you_need_to_be_logged_in:I

    sget v1, Lcm/aptoide/pt/v8engine/R$string;->login:I

    invoke-static {p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/StoreLatestCommentsWidget$CommentListAdapter$$Lambda$2;->lambdaFactory$(Landroid/view/View;)Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-static {p1, v0, v1, v2}, Lcm/aptoide/pt/utils/design/ShowMessage;->asObservableSnack(Landroid/view/View;IILandroid/view/View$OnClickListener;)Lrx/d;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/StoreLatestCommentsWidget$CommentListAdapter$$Lambda$3;->lambdaFactory$()Lrx/b/e;

    move-result-object v1

    .line 140
    invoke-virtual {v0, v1}, Lrx/d;->e(Lrx/b/e;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method private showStoreCommentFragment(JLcm/aptoide/pt/model/v7/Comment;Ljava/lang/String;Landroid/app/FragmentManager;Landroid/view/View;Lrx/d;)Lrx/d;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcm/aptoide/pt/model/v7/Comment;",
            "Ljava/lang/String;",
            "Landroid/app/FragmentManager;",
            "Landroid/view/View;",
            "Lrx/d",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Lrx/d",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 117
    invoke-static {}, Lcm/aptoide/accountmanager/AptoideAccountManager;->isLoggedIn()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lrx/d;->a(Ljava/lang/Object;)Lrx/d;

    move-result-object v0

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p7

    move-object v8, p6

    invoke-static/range {v1 .. v8}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/StoreLatestCommentsWidget$CommentListAdapter$$Lambda$1;->lambdaFactory$(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/StoreLatestCommentsWidget$CommentListAdapter;JLcm/aptoide/pt/model/v7/Comment;Ljava/lang/String;Landroid/app/FragmentManager;Lrx/d;Landroid/view/View;)Lrx/b/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->e(Lrx/b/e;)Lrx/d;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method synthetic lambda$showStoreCommentFragment$3(JLcm/aptoide/pt/model/v7/Comment;Ljava/lang/String;Landroid/app/FragmentManager;Lrx/d;Landroid/view/View;Ljava/lang/Boolean;)Lrx/d;
    .locals 3

    .prologue
    .line 119
    invoke-virtual {p8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    invoke-virtual {p3}, Lcm/aptoide/pt/model/v7/Comment;->getId()J

    move-result-wide v0

    invoke-static {p1, p2, v0, v1, p4}, Lcm/aptoide/pt/viewRateAndCommentReviews/CommentDialogFragment;->newInstanceStoreCommentReply(JJLjava/lang/String;)Lcm/aptoide/pt/viewRateAndCommentReviews/CommentDialogFragment;

    move-result-object v0

    .line 125
    invoke-virtual {v0}, Lcm/aptoide/pt/viewRateAndCommentReviews/CommentDialogFragment;->lifecycle()Lrx/d;

    move-result-object v1

    invoke-static {v0, p5}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/StoreLatestCommentsWidget$CommentListAdapter$$Lambda$4;->lambdaFactory$(Lcm/aptoide/pt/viewRateAndCommentReviews/CommentDialogFragment;Landroid/app/FragmentManager;)Lrx/b/a;

    move-result-object v0

    .line 126
    invoke-virtual {v1, v0}, Lrx/d;->b(Lrx/b/a;)Lrx/d;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/StoreLatestCommentsWidget$CommentListAdapter$$Lambda$5;->lambdaFactory$()Lrx/b/e;

    move-result-object v1

    .line 128
    invoke-virtual {v0, v1}, Lrx/d;->c(Lrx/b/e;)Lrx/d;

    move-result-object v0

    invoke-static {p6}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/StoreLatestCommentsWidget$CommentListAdapter$$Lambda$6;->lambdaFactory$(Lrx/d;)Lrx/b/e;

    move-result-object v1

    .line 129
    invoke-virtual {v0, v1}, Lrx/d;->e(Lrx/b/e;)Lrx/d;

    move-result-object v0

    .line 132
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p7}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/StoreLatestCommentsWidget$CommentListAdapter;->showSignInMessage(Landroid/view/View;)Lrx/d;

    move-result-object v0

    goto :goto_0
.end method
