.class public Lcm/aptoide/pt/v8engine/fragment/CommentListFragment;
.super Lcm/aptoide/pt/v8engine/fragment/GridRecyclerSwipeFragment;
.source "CommentListFragment.java"

# interfaces
.implements Lcm/aptoide/pt/v8engine/interfaces/CommentDialogCallbackContract;


# static fields
.field private static final COMMENT_TYPE:Ljava/lang/String; = "comment_type"

.field private static final ELEMENT_ID_AS_LONG:Ljava/lang/String; = "element_id_as_long"

.field private static final ELEMENT_ID_AS_STRING:Ljava/lang/String; = "element_id_as_string"

.field private static final URL_VAL:Ljava/lang/String; = "url_val"


# instance fields
.field private final aptoideClientUUID:Lcm/aptoide/pt/interfaces/AptoideClientUUID;

.field private commentOperations:Lcm/aptoide/pt/v8engine/util/CommentOperations;

.field private commentType:Lcm/aptoide/pt/dataprovider/util/CommentType;

.field private comments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcm/aptoide/pt/viewRateAndCommentReviews/CommentNode;",
            ">;"
        }
    .end annotation
.end field

.field private displayables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;",
            ">;"
        }
    .end annotation
.end field

.field private elementIdAsLong:J

.field private elementIdAsString:Ljava/lang/String;

.field private floatingActionButton:Landroid/support/design/widget/FloatingActionButton;

.field protected lastTotal:J

.field private storeName:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 85
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/fragment/GridRecyclerSwipeFragment;-><init>()V

    .line 86
    new-instance v0, Lcm/aptoide/pt/dataprovider/repository/IdsRepositoryImpl;

    invoke-static {}, Lcm/aptoide/pt/preferences/secure/SecurePreferencesImplementation;->getInstance()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 87
    invoke-static {}, Lcm/aptoide/pt/dataprovider/DataProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcm/aptoide/pt/dataprovider/repository/IdsRepositoryImpl;-><init>(Landroid/content/SharedPreferences;Landroid/content/Context;)V

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/CommentListFragment;->aptoideClientUUID:Lcm/aptoide/pt/interfaces/AptoideClientUUID;

    .line 88
    return-void
.end method

.method private createNewCommentFragment(JJLjava/lang/String;)Lrx/d;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/lang/String;",
            ")",
            "Lrx/d",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 305
    invoke-static {}, Lcm/aptoide/accountmanager/AptoideAccountManager;->isLoggedIn()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lrx/d;->a(Ljava/lang/Object;)Lrx/d;

    move-result-object v0

    invoke-static/range {p0 .. p5}, Lcm/aptoide/pt/v8engine/fragment/CommentListFragment$$Lambda$6;->lambdaFactory$(Lcm/aptoide/pt/v8engine/fragment/CommentListFragment;JJLjava/lang/String;)Lrx/b/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->e(Lrx/b/e;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method private getComplexComment(Ljava/lang/String;Ljava/lang/Long;J)Lcm/aptoide/pt/viewRateAndCommentReviews/ComplexComment;
    .locals 9

    .prologue
    .line 455
    new-instance v0, Lcm/aptoide/pt/model/v7/Comment;

    invoke-direct {v0}, Lcm/aptoide/pt/model/v7/Comment;-><init>()V

    .line 456
    new-instance v1, Lcm/aptoide/pt/model/v7/Comment$User;

    invoke-direct {v1}, Lcm/aptoide/pt/model/v7/Comment$User;-><init>()V

    .line 457
    invoke-static {}, Lcm/aptoide/accountmanager/AptoideAccountManager;->getUserData()Lcm/aptoide/accountmanager/util/UserCompleteData;

    move-result-object v2

    invoke-virtual {v2}, Lcm/aptoide/accountmanager/util/UserCompleteData;->getUserAvatar()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 458
    invoke-static {}, Lcm/aptoide/accountmanager/AptoideAccountManager;->getUserData()Lcm/aptoide/accountmanager/util/UserCompleteData;

    move-result-object v2

    invoke-virtual {v2}, Lcm/aptoide/accountmanager/util/UserCompleteData;->getUserAvatar()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcm/aptoide/pt/model/v7/Comment$User;->setAvatar(Ljava/lang/String;)V

    .line 464
    :cond_0
    :goto_0
    invoke-static {}, Lcm/aptoide/accountmanager/AptoideAccountManager;->getUserData()Lcm/aptoide/accountmanager/util/UserCompleteData;

    move-result-object v2

    invoke-virtual {v2}, Lcm/aptoide/accountmanager/util/UserCompleteData;->getUserName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcm/aptoide/pt/model/v7/Comment$User;->setName(Ljava/lang/String;)V

    .line 465
    invoke-virtual {v0, v1}, Lcm/aptoide/pt/model/v7/Comment;->setUser(Lcm/aptoide/pt/model/v7/Comment$User;)V

    .line 466
    invoke-virtual {v0, p1}, Lcm/aptoide/pt/model/v7/Comment;->setBody(Ljava/lang/String;)V

    .line 467
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Lcm/aptoide/pt/model/v7/Comment;->setAdded(Ljava/util/Date;)V

    .line 468
    invoke-virtual {v0, p3, p4}, Lcm/aptoide/pt/model/v7/Comment;->setId(J)V

    .line 469
    new-instance v7, Lcm/aptoide/pt/viewRateAndCommentReviews/CommentNode;

    invoke-direct {v7, v0}, Lcm/aptoide/pt/viewRateAndCommentReviews/CommentNode;-><init>(Lcm/aptoide/pt/model/v7/Comment;)V

    .line 470
    if-eqz p2, :cond_1

    .line 471
    new-instance v1, Lcm/aptoide/pt/model/v7/Comment$Parent;

    invoke-direct {v1}, Lcm/aptoide/pt/model/v7/Comment$Parent;-><init>()V

    .line 472
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcm/aptoide/pt/model/v7/Comment$Parent;->setId(J)V

    .line 473
    invoke-virtual {v0, v1}, Lcm/aptoide/pt/model/v7/Comment;->setParent(Lcm/aptoide/pt/model/v7/Comment$Parent;)V

    .line 474
    const/4 v0, 0x2

    invoke-virtual {v7, v0}, Lcm/aptoide/pt/viewRateAndCommentReviews/CommentNode;->setLevel(I)V

    .line 476
    :cond_1
    iget-wide v0, p0, Lcm/aptoide/pt/v8engine/fragment/CommentListFragment;->elementIdAsLong:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    .line 477
    new-instance v0, Lcm/aptoide/pt/viewRateAndCommentReviews/ComplexComment;

    iget-wide v2, p0, Lcm/aptoide/pt/v8engine/fragment/CommentListFragment;->elementIdAsLong:J

    .line 478
    invoke-virtual {v7}, Lcm/aptoide/pt/viewRateAndCommentReviews/CommentNode;->getComment()Lcm/aptoide/pt/model/v7/Comment;

    move-result-object v1

    invoke-virtual {v1}, Lcm/aptoide/pt/model/v7/Comment;->getId()J

    move-result-wide v4

    iget-object v6, p0, Lcm/aptoide/pt/v8engine/fragment/CommentListFragment;->storeName:Ljava/lang/String;

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcm/aptoide/pt/v8engine/fragment/CommentListFragment;->createNewCommentFragment(JJLjava/lang/String;)Lrx/d;

    move-result-object v1

    invoke-direct {v0, v7, v1}, Lcm/aptoide/pt/viewRateAndCommentReviews/ComplexComment;-><init>(Lcm/aptoide/pt/viewRateAndCommentReviews/CommentNode;Lrx/d;)V

    .line 481
    :goto_1
    return-object v0

    .line 460
    :cond_2
    invoke-static {}, Lcm/aptoide/accountmanager/AptoideAccountManager;->getUserData()Lcm/aptoide/accountmanager/util/UserCompleteData;

    move-result-object v2

    invoke-virtual {v2}, Lcm/aptoide/accountmanager/util/UserCompleteData;->getUserAvatarRepo()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 461
    invoke-static {}, Lcm/aptoide/accountmanager/AptoideAccountManager;->getUserData()Lcm/aptoide/accountmanager/util/UserCompleteData;

    move-result-object v2

    invoke-virtual {v2}, Lcm/aptoide/accountmanager/util/UserCompleteData;->getUserAvatarRepo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcm/aptoide/pt/model/v7/Comment$User;->setAvatar(Ljava/lang/String;)V

    goto :goto_0

    .line 480
    :cond_3
    new-instance v0, Lcm/aptoide/pt/viewRateAndCommentReviews/ComplexComment;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/fragment/CommentListFragment;->elementIdAsString:Ljava/lang/String;

    .line 481
    invoke-virtual {v7}, Lcm/aptoide/pt/viewRateAndCommentReviews/CommentNode;->getComment()Lcm/aptoide/pt/model/v7/Comment;

    move-result-object v2

    invoke-virtual {v2}, Lcm/aptoide/pt/model/v7/Comment;->getId()J

    move-result-wide v2

    invoke-virtual {p0, v1, v2, v3}, Lcm/aptoide/pt/v8engine/fragment/CommentListFragment;->createNewCommentFragment(Ljava/lang/String;J)Lrx/d;

    move-result-object v1

    invoke-direct {v0, v7, v1}, Lcm/aptoide/pt/viewRateAndCommentReviews/ComplexComment;-><init>(Lcm/aptoide/pt/viewRateAndCommentReviews/CommentNode;Lrx/d;)V

    goto :goto_1
.end method

.method private insertChildCommentInsideParent(Lcm/aptoide/pt/viewRateAndCommentReviews/ComplexComment;)V
    .locals 10

    .prologue
    .line 436
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/CommentListFragment;->displayables:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 437
    const/4 v0, 0x0

    .line 438
    new-instance v2, Ljava/util/ArrayList;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/fragment/CommentListFragment;->comments:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 439
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/fragment/CommentListFragment;->comments:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/viewRateAndCommentReviews/CommentNode;

    .line 440
    new-instance v4, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/CommentDisplayable;

    new-instance v5, Lcm/aptoide/pt/viewRateAndCommentReviews/ComplexComment;

    iget-object v6, p0, Lcm/aptoide/pt/v8engine/fragment/CommentListFragment;->elementIdAsString:Ljava/lang/String;

    .line 441
    invoke-virtual {v0}, Lcm/aptoide/pt/viewRateAndCommentReviews/CommentNode;->getComment()Lcm/aptoide/pt/model/v7/Comment;

    move-result-object v7

    invoke-virtual {v7}, Lcm/aptoide/pt/model/v7/Comment;->getId()J

    move-result-wide v8

    invoke-virtual {p0, v6, v8, v9}, Lcm/aptoide/pt/v8engine/fragment/CommentListFragment;->createNewCommentFragment(Ljava/lang/String;J)Lrx/d;

    move-result-object v6

    invoke-direct {v5, v0, v6}, Lcm/aptoide/pt/viewRateAndCommentReviews/ComplexComment;-><init>(Lcm/aptoide/pt/viewRateAndCommentReviews/CommentNode;Lrx/d;)V

    invoke-direct {v4, v5}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/CommentDisplayable;-><init>(Lcm/aptoide/pt/model/v7/Comment;)V

    .line 440
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 442
    invoke-virtual {v0}, Lcm/aptoide/pt/viewRateAndCommentReviews/CommentNode;->getComment()Lcm/aptoide/pt/model/v7/Comment;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/Comment;->getId()J

    move-result-wide v4

    invoke-virtual {p1}, Lcm/aptoide/pt/viewRateAndCommentReviews/ComplexComment;->getParent()Lcm/aptoide/pt/model/v7/Comment$Parent;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/Comment$Parent;->getId()J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-nez v0, :cond_1

    if-nez v1, :cond_1

    .line 443
    new-instance v0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/CommentDisplayable;

    invoke-direct {v0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/CommentDisplayable;-><init>(Lcm/aptoide/pt/model/v7/Comment;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 444
    const/4 v1, 0x1

    move v0, v1

    :goto_1
    move v1, v0

    .line 446
    goto :goto_0

    .line 447
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/CommentListFragment;->displayables:Ljava/util/List;

    .line 448
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/CommentListFragment;->displayables:Ljava/util/List;

    new-instance v1, Lcm/aptoide/pt/v8engine/view/recycler/displayable/DisplayableGroup;

    invoke-direct {v1, v2}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/DisplayableGroup;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 449
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/CommentListFragment;->clearDisplayables()Lcm/aptoide/pt/v8engine/fragment/BaseRecyclerViewFragment;

    .line 450
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/CommentListFragment;->displayables:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcm/aptoide/pt/v8engine/fragment/CommentListFragment;->addDisplayables(Ljava/util/List;)V

    .line 451
    return-void

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method static synthetic lambda$null$15(Lcm/aptoide/pt/viewRateAndCommentReviews/CommentDialogFragment;Landroid/app/FragmentManager;)V
    .locals 1

    .prologue
    .line 383
    const-string v0, "fragment_comment_dialog"

    invoke-virtual {p0, p1, v0}, Lcm/aptoide/pt/viewRateAndCommentReviews/CommentDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 384
    return-void
.end method

.method static synthetic lambda$null$16(Lcom/trello/rxlifecycle/a/b;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 385
    sget-object v0, Lcom/trello/rxlifecycle/a/b;->h:Lcom/trello/rxlifecycle/a/b;

    invoke-virtual {p0, v0}, Lcom/trello/rxlifecycle/a/b;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$null$17(Lcom/trello/rxlifecycle/a/b;)Lrx/d;
    .locals 1

    .prologue
    .line 386
    invoke-static {}, Lrx/d;->d()Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$null$19(Lcm/aptoide/pt/viewRateAndCommentReviews/CommentDialogFragment;Landroid/app/FragmentManager;)V
    .locals 1

    .prologue
    .line 406
    const-string v0, "fragment_comment_dialog"

    invoke-virtual {p0, p1, v0}, Lcm/aptoide/pt/viewRateAndCommentReviews/CommentDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 407
    return-void
.end method

.method static synthetic lambda$null$2(Lcm/aptoide/pt/viewRateAndCommentReviews/CommentDialogFragment;Landroid/app/FragmentManager;)V
    .locals 1

    .prologue
    .line 293
    const-string v0, "fragment_comment_dialog"

    invoke-virtual {p0, p1, v0}, Lcm/aptoide/pt/viewRateAndCommentReviews/CommentDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$null$20(Lcom/trello/rxlifecycle/a/b;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 408
    sget-object v0, Lcom/trello/rxlifecycle/a/b;->h:Lcom/trello/rxlifecycle/a/b;

    invoke-virtual {p0, v0}, Lcom/trello/rxlifecycle/a/b;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$null$21(Lcom/trello/rxlifecycle/a/b;)Lrx/d;
    .locals 1

    .prologue
    .line 409
    invoke-static {}, Lrx/d;->d()Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$null$3(Lcom/trello/rxlifecycle/a/b;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 294
    sget-object v0, Lcom/trello/rxlifecycle/a/b;->h:Lcom/trello/rxlifecycle/a/b;

    invoke-virtual {p0, v0}, Lcom/trello/rxlifecycle/a/b;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$null$4(Lcom/trello/rxlifecycle/a/b;)Lrx/d;
    .locals 1

    .prologue
    .line 295
    invoke-static {}, Lrx/d;->d()Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$null$6(Lcm/aptoide/pt/viewRateAndCommentReviews/CommentDialogFragment;Landroid/app/FragmentManager;)V
    .locals 1

    .prologue
    .line 316
    const-string v0, "fragment_comment_dialog"

    invoke-virtual {p0, p1, v0}, Lcm/aptoide/pt/viewRateAndCommentReviews/CommentDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$null$7(Lcom/trello/rxlifecycle/a/b;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 317
    sget-object v0, Lcom/trello/rxlifecycle/a/b;->h:Lcom/trello/rxlifecycle/a/b;

    invoke-virtual {p0, v0}, Lcom/trello/rxlifecycle/a/b;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$null$8(Lcom/trello/rxlifecycle/a/b;)Lrx/d;
    .locals 1

    .prologue
    .line 318
    invoke-static {}, Lrx/d;->d()Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$setupViews$14(Ljava/lang/Void;)V
    .locals 0

    .prologue
    .line 360
    return-void
.end method

.method static synthetic lambda$showSignInMessage$11(Ljava/lang/Integer;)Lrx/d;
    .locals 1

    .prologue
    .line 337
    invoke-static {}, Lrx/d;->d()Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(Lcm/aptoide/pt/dataprovider/util/CommentType;Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .locals 3

    .prologue
    .line 91
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 92
    const-string v1, "element_id_as_string"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const-string v1, "comment_type"

    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/util/CommentType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    new-instance v1, Lcm/aptoide/pt/v8engine/fragment/CommentListFragment;

    invoke-direct {v1}, Lcm/aptoide/pt/v8engine/fragment/CommentListFragment;-><init>()V

    .line 96
    invoke-virtual {v1, v0}, Lcm/aptoide/pt/v8engine/fragment/CommentListFragment;->setArguments(Landroid/os/Bundle;)V

    .line 97
    return-object v1
.end method

.method public static newInstanceUrl(Lcm/aptoide/pt/dataprovider/util/CommentType;Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .locals 3

    .prologue
    .line 101
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 102
    const-string v1, "url_val"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    const-string v1, "comment_type"

    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/util/CommentType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    new-instance v1, Lcm/aptoide/pt/v8engine/fragment/CommentListFragment;

    invoke-direct {v1}, Lcm/aptoide/pt/v8engine/fragment/CommentListFragment;-><init>()V

    .line 106
    invoke-virtual {v1, v0}, Lcm/aptoide/pt/v8engine/fragment/CommentListFragment;->setArguments(Landroid/os/Bundle;)V

    .line 107
    return-object v1
.end method

.method private reloadComments()Lrx/d;
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
    .line 341
    invoke-static {p0}, Lcm/aptoide/pt/v8engine/fragment/CommentListFragment$$Lambda$9;->lambdaFactory$(Lcm/aptoide/pt/v8engine/fragment/CommentListFragment;)Ljava/util/concurrent/Callable;

    move-result-object v0

    invoke-static {v0}, Lrx/d;->a(Ljava/util/concurrent/Callable;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method private showSignInMessage()Lrx/d;
    .locals 4
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
    .line 334
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/CommentListFragment;->getActivity()Landroid/support/v4/app/u;

    move-result-object v0

    sget v1, Lcm/aptoide/pt/v8engine/R$string;->you_need_to_be_logged_in:I

    sget v2, Lcm/aptoide/pt/v8engine/R$string;->login:I

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/fragment/CommentListFragment$$Lambda$7;->lambdaFactory$(Lcm/aptoide/pt/v8engine/fragment/CommentListFragment;)Landroid/view/View$OnClickListener;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcm/aptoide/pt/utils/design/ShowMessage;->asObservableSnack(Landroid/app/Activity;IILandroid/view/View$OnClickListener;)Lrx/d;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/v8engine/fragment/CommentListFragment$$Lambda$8;->lambdaFactory$()Lrx/b/e;

    move-result-object v1

    .line 337
    invoke-virtual {v0, v1}, Lrx/d;->e(Lrx/b/e;)Lrx/d;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bindViews(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 166
    invoke-super {p0, p1}, Lcm/aptoide/pt/v8engine/fragment/GridRecyclerSwipeFragment;->bindViews(Landroid/view/View;)V

    .line 167
    new-instance v0, Lcm/aptoide/pt/v8engine/util/CommentOperations;

    invoke-direct {v0}, Lcm/aptoide/pt/v8engine/util/CommentOperations;-><init>()V

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/CommentListFragment;->commentOperations:Lcm/aptoide/pt/v8engine/util/CommentOperations;

    .line 168
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->fabAdd:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/FloatingActionButton;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/CommentListFragment;->floatingActionButton:Landroid/support/design/widget/FloatingActionButton;

    .line 169
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/CommentListFragment;->floatingActionButton:Landroid/support/design/widget/FloatingActionButton;

    if-eqz v0, :cond_0

    .line 171
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 172
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/CommentListFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcm/aptoide/pt/v8engine/R$drawable;->forma_1:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 176
    :goto_0
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/fragment/CommentListFragment;->floatingActionButton:Landroid/support/design/widget/FloatingActionButton;

    invoke-virtual {v1, v0}, Landroid/support/design/widget/FloatingActionButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 177
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/CommentListFragment;->floatingActionButton:Landroid/support/design/widget/FloatingActionButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/design/widget/FloatingActionButton;->setVisibility(I)V

    .line 179
    :cond_0
    return-void

    .line 174
    :cond_1
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/CommentListFragment;->getActivity()Landroid/support/v4/app/u;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/u;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcm/aptoide/pt/v8engine/R$drawable;->forma_1:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method caseListSocialTimelineComments(Z)V
    .locals 6

    .prologue
    .line 197
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/CommentListFragment;->aptoideClientUUID:Lcm/aptoide/pt/interfaces/AptoideClientUUID;

    invoke-interface {v0}, Lcm/aptoide/pt/interfaces/AptoideClientUUID;->getUniqueIdentifier()Ljava/lang/String;

    move-result-object v0

    .line 199
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/fragment/CommentListFragment;->url:Ljava/lang/String;

    iget-object v2, p0, Lcm/aptoide/pt/v8engine/fragment/CommentListFragment;->elementIdAsString:Ljava/lang/String;

    .line 201
    invoke-static {}, Lcm/aptoide/accountmanager/AptoideAccountManager;->getAccessToken()Ljava/lang/String;

    move-result-object v3

    .line 200
    invoke-static {v1, p1, v2, v3, v0}, Lcm/aptoide/pt/dataprovider/ws/v7/ListCommentsRequest;->ofTimeline(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/ListCommentsRequest;

    move-result-object v2

    .line 203
    invoke-static {p0}, Lcm/aptoide/pt/v8engine/fragment/CommentListFragment$$Lambda$1;->lambdaFactory$(Lcm/aptoide/pt/v8engine/fragment/CommentListFragment;)Lrx/b/b;

    move-result-object v3

    .line 222
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/CommentListFragment;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->b()V

    .line 223
    new-instance v0, Lcm/aptoide/pt/v8engine/view/recycler/listeners/EndlessRecyclerOnScrollListener;

    .line 224
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/CommentListFragment;->getAdapter()Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;

    move-result-object v1

    invoke-static {}, Lcm/aptoide/pt/v8engine/fragment/CommentListFragment$$Lambda$2;->lambdaFactory$()Lcm/aptoide/pt/networkclient/interfaces/ErrorRequestListener;

    move-result-object v4

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Lcm/aptoide/pt/v8engine/view/recycler/listeners/EndlessRecyclerOnScrollListener;-><init>(Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;Lcm/aptoide/pt/dataprovider/ws/v7/V7;Lrx/b/b;Lcm/aptoide/pt/networkclient/interfaces/ErrorRequestListener;Z)V

    .line 227
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/CommentListFragment;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView$m;)V

    .line 228
    invoke-virtual {v0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/listeners/EndlessRecyclerOnScrollListener;->onLoadMore(Z)V

    .line 229
    return-void
.end method

.method caseListStoreComments(Ljava/lang/String;Lcm/aptoide/pt/dataprovider/ws/v7/BaseRequestWithStore$StoreCredentials;Z)V
    .locals 6

    .prologue
    .line 234
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/CommentListFragment;->aptoideClientUUID:Lcm/aptoide/pt/interfaces/AptoideClientUUID;

    invoke-interface {v0}, Lcm/aptoide/pt/interfaces/AptoideClientUUID;->getUniqueIdentifier()Ljava/lang/String;

    move-result-object v0

    .line 238
    invoke-static {}, Lcm/aptoide/accountmanager/AptoideAccountManager;->getAccessToken()Ljava/lang/String;

    move-result-object v1

    .line 237
    invoke-static {p1, p3, p2, v1, v0}, Lcm/aptoide/pt/dataprovider/ws/v7/ListCommentsRequest;->ofStoreAction(Ljava/lang/String;ZLcm/aptoide/pt/dataprovider/ws/v7/BaseRequestWithStore$StoreCredentials;Ljava/lang/String;Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/ListCommentsRequest;

    move-result-object v2

    .line 240
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcm/aptoide/pt/dataprovider/ws/v7/BaseRequestWithStore$StoreCredentials;->getId()Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_1

    .line 241
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Current store credentials does not have a store id"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 243
    invoke-static {}, Lcm/aptoide/pt/crashreports/CrashReport;->getInstance()Lcm/aptoide/pt/crashreports/CrashReport;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcm/aptoide/pt/crashreports/CrashReport;->log(Ljava/lang/Throwable;)V

    .line 244
    throw v0

    .line 247
    :cond_1
    invoke-virtual {p2}, Lcm/aptoide/pt/dataprovider/ws/v7/BaseRequestWithStore$StoreCredentials;->getId()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Lcm/aptoide/pt/dataprovider/ws/v7/BaseRequestWithStore$StoreCredentials;->getId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 248
    :goto_0
    invoke-virtual {p2}, Lcm/aptoide/pt/dataprovider/ws/v7/BaseRequestWithStore$StoreCredentials;->getName()Ljava/lang/String;

    move-result-object v3

    .line 250
    invoke-static {p0, v0, v1, v3}, Lcm/aptoide/pt/v8engine/fragment/CommentListFragment$$Lambda$3;->lambdaFactory$(Lcm/aptoide/pt/v8engine/fragment/CommentListFragment;JLjava/lang/String;)Lrx/b/b;

    move-result-object v3

    .line 270
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/CommentListFragment;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->b()V

    .line 271
    new-instance v0, Lcm/aptoide/pt/v8engine/view/recycler/listeners/EndlessRecyclerOnScrollListener;

    .line 272
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/CommentListFragment;->getAdapter()Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;

    move-result-object v1

    invoke-static {}, Lcm/aptoide/pt/v8engine/fragment/CommentListFragment$$Lambda$4;->lambdaFactory$()Lcm/aptoide/pt/networkclient/interfaces/ErrorRequestListener;

    move-result-object v4

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Lcm/aptoide/pt/v8engine/view/recycler/listeners/EndlessRecyclerOnScrollListener;-><init>(Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;Lcm/aptoide/pt/dataprovider/ws/v7/V7;Lrx/b/b;Lcm/aptoide/pt/networkclient/interfaces/ErrorRequestListener;Z)V

    .line 275
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/CommentListFragment;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView$m;)V

    .line 276
    invoke-virtual {v0, p3}, Lcm/aptoide/pt/v8engine/view/recycler/listeners/EndlessRecyclerOnScrollListener;->onLoadMore(Z)V

    .line 277
    return-void

    .line 247
    :cond_2
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public createNewCommentFragment(JLjava/lang/String;)Lrx/d;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            ")",
            "Lrx/d",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 395
    invoke-static {}, Lcm/aptoide/accountmanager/AptoideAccountManager;->isLoggedIn()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lrx/d;->a(Ljava/lang/Object;)Lrx/d;

    move-result-object v0

    invoke-static {p0, p1, p2, p3}, Lcm/aptoide/pt/v8engine/fragment/CommentListFragment$$Lambda$13;->lambdaFactory$(Lcm/aptoide/pt/v8engine/fragment/CommentListFragment;JLjava/lang/String;)Lrx/b/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->e(Lrx/b/e;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public createNewCommentFragment(Ljava/lang/String;)Lrx/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lrx/d",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 373
    invoke-static {}, Lcm/aptoide/accountmanager/AptoideAccountManager;->isLoggedIn()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lrx/d;->a(Ljava/lang/Object;)Lrx/d;

    move-result-object v0

    invoke-static {p0, p1}, Lcm/aptoide/pt/v8engine/fragment/CommentListFragment$$Lambda$12;->lambdaFactory$(Lcm/aptoide/pt/v8engine/fragment/CommentListFragment;Ljava/lang/String;)Lrx/b/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->e(Lrx/b/e;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public createNewCommentFragment(Ljava/lang/String;J)Lrx/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J)",
            "Lrx/d",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 282
    invoke-static {}, Lcm/aptoide/accountmanager/AptoideAccountManager;->isLoggedIn()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lrx/d;->a(Ljava/lang/Object;)Lrx/d;

    move-result-object v0

    invoke-static {p0, p1, p2, p3}, Lcm/aptoide/pt/v8engine/fragment/CommentListFragment$$Lambda$5;->lambdaFactory$(Lcm/aptoide/pt/v8engine/fragment/CommentListFragment;Ljava/lang/String;J)Lrx/b/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->e(Lrx/b/e;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method protected displayHomeUpAsEnabled()Z
    .locals 1

    .prologue
    .line 111
    const/4 v0, 0x1

    return v0
.end method

.method public getContentViewId()I
    .locals 1

    .prologue
    .line 137
    sget v0, Lcm/aptoide/pt/v8engine/R$layout;->recycler_swipe_fragment_with_toolbar:I

    return v0
.end method

.method protected getItemDecoration()Landroid/support/v7/widget/RecyclerView$g;
    .locals 3

    .prologue
    .line 368
    new-instance v0, Lcm/aptoide/pt/v8engine/view/custom/HorizontalDividerItemDecoration;

    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/CommentListFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcm/aptoide/pt/v8engine/view/custom/HorizontalDividerItemDecoration;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method synthetic lambda$caseListSocialTimelineComments$0(Lcm/aptoide/pt/model/v7/ListComments;)V
    .locals 8

    .prologue
    .line 204
    if-eqz p1, :cond_1

    .line 205
    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/ListComments;->getDatalist()Lcm/aptoide/pt/model/v7/Datalist;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 206
    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/ListComments;->getDatalist()Lcm/aptoide/pt/model/v7/Datalist;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/Datalist;->getList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 207
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/CommentListFragment;->commentOperations:Lcm/aptoide/pt/v8engine/util/CommentOperations;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/fragment/CommentListFragment;->commentOperations:Lcm/aptoide/pt/v8engine/util/CommentOperations;

    .line 208
    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/ListComments;->getDatalist()Lcm/aptoide/pt/model/v7/Datalist;

    move-result-object v2

    invoke-virtual {v2}, Lcm/aptoide/pt/model/v7/Datalist;->getList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcm/aptoide/pt/v8engine/util/CommentOperations;->transform(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 207
    invoke-virtual {v0, v1}, Lcm/aptoide/pt/v8engine/util/CommentOperations;->flattenByDepth(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/CommentListFragment;->comments:Ljava/util/List;

    .line 210
    new-instance v1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/CommentListFragment;->comments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 211
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/CommentListFragment;->comments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/viewRateAndCommentReviews/CommentNode;

    .line 212
    new-instance v3, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/CommentDisplayable;

    new-instance v4, Lcm/aptoide/pt/viewRateAndCommentReviews/ComplexComment;

    iget-object v5, p0, Lcm/aptoide/pt/v8engine/fragment/CommentListFragment;->elementIdAsString:Ljava/lang/String;

    .line 213
    invoke-virtual {v0}, Lcm/aptoide/pt/viewRateAndCommentReviews/CommentNode;->getComment()Lcm/aptoide/pt/model/v7/Comment;

    move-result-object v6

    invoke-virtual {v6}, Lcm/aptoide/pt/model/v7/Comment;->getId()J

    move-result-wide v6

    invoke-virtual {p0, v5, v6, v7}, Lcm/aptoide/pt/v8engine/fragment/CommentListFragment;->createNewCommentFragment(Ljava/lang/String;J)Lrx/d;

    move-result-object v5

    invoke-direct {v4, v0, v5}, Lcm/aptoide/pt/viewRateAndCommentReviews/ComplexComment;-><init>(Lcm/aptoide/pt/viewRateAndCommentReviews/CommentNode;Lrx/d;)V

    invoke-direct {v3, v4}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/CommentDisplayable;-><init>(Lcm/aptoide/pt/model/v7/Comment;)V

    .line 212
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 216
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/CommentListFragment;->displayables:Ljava/util/List;

    .line 217
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/CommentListFragment;->displayables:Ljava/util/List;

    new-instance v2, Lcm/aptoide/pt/v8engine/view/recycler/displayable/DisplayableGroup;

    invoke-direct {v2, v1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/DisplayableGroup;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 219
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/CommentListFragment;->displayables:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcm/aptoide/pt/v8engine/fragment/CommentListFragment;->addDisplayables(Ljava/util/List;)V

    .line 221
    :cond_1
    return-void
.end method

.method synthetic lambda$caseListStoreComments$1(JLjava/lang/String;Lcm/aptoide/pt/model/v7/ListComments;)V
    .locals 11

    .prologue
    .line 251
    if-eqz p4, :cond_1

    .line 252
    invoke-virtual {p4}, Lcm/aptoide/pt/model/v7/ListComments;->getDatalist()Lcm/aptoide/pt/model/v7/Datalist;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 253
    invoke-virtual {p4}, Lcm/aptoide/pt/model/v7/ListComments;->getDatalist()Lcm/aptoide/pt/model/v7/Datalist;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/Datalist;->getList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 254
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/CommentListFragment;->commentOperations:Lcm/aptoide/pt/v8engine/util/CommentOperations;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/fragment/CommentListFragment;->commentOperations:Lcm/aptoide/pt/v8engine/util/CommentOperations;

    .line 255
    invoke-virtual {p4}, Lcm/aptoide/pt/model/v7/ListComments;->getDatalist()Lcm/aptoide/pt/model/v7/Datalist;

    move-result-object v2

    invoke-virtual {v2}, Lcm/aptoide/pt/model/v7/Datalist;->getList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcm/aptoide/pt/v8engine/util/CommentOperations;->transform(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 254
    invoke-virtual {v0, v1}, Lcm/aptoide/pt/v8engine/util/CommentOperations;->flattenByDepth(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/CommentListFragment;->comments:Ljava/util/List;

    .line 257
    new-instance v7, Ljava/util/ArrayList;

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/CommentListFragment;->comments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 258
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/CommentListFragment;->comments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/viewRateAndCommentReviews/CommentNode;

    .line 259
    new-instance v9, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/CommentDisplayable;

    new-instance v10, Lcm/aptoide/pt/viewRateAndCommentReviews/ComplexComment;

    .line 260
    invoke-virtual {v0}, Lcm/aptoide/pt/viewRateAndCommentReviews/CommentNode;->getComment()Lcm/aptoide/pt/model/v7/Comment;

    move-result-object v1

    invoke-virtual {v1}, Lcm/aptoide/pt/model/v7/Comment;->getId()J

    move-result-wide v4

    move-object v1, p0

    move-wide v2, p1

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcm/aptoide/pt/v8engine/fragment/CommentListFragment;->createNewCommentFragment(JJLjava/lang/String;)Lrx/d;

    move-result-object v1

    invoke-direct {v10, v0, v1}, Lcm/aptoide/pt/viewRateAndCommentReviews/ComplexComment;-><init>(Lcm/aptoide/pt/viewRateAndCommentReviews/CommentNode;Lrx/d;)V

    invoke-direct {v9, v10}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/CommentDisplayable;-><init>(Lcm/aptoide/pt/model/v7/Comment;)V

    .line 259
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 263
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/CommentListFragment;->displayables:Ljava/util/List;

    .line 264
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/CommentListFragment;->displayables:Ljava/util/List;

    new-instance v1, Lcm/aptoide/pt/v8engine/view/recycler/displayable/DisplayableGroup;

    invoke-direct {v1, v7}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/DisplayableGroup;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 266
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/CommentListFragment;->displayables:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcm/aptoide/pt/v8engine/fragment/CommentListFragment;->addDisplayables(Ljava/util/List;)V

    .line 268
    :cond_1
    return-void
.end method

.method synthetic lambda$createNewCommentFragment$18(Ljava/lang/String;Ljava/lang/Boolean;)Lrx/d;
    .locals 3

    .prologue
    .line 375
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 377
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/CommentListFragment;->getActivity()Landroid/support/v4/app/u;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/u;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 379
    invoke-static {p1}, Lcm/aptoide/pt/viewRateAndCommentReviews/CommentDialogFragment;->newInstanceTimelineArticleComment(Ljava/lang/String;)Lcm/aptoide/pt/viewRateAndCommentReviews/CommentDialogFragment;

    move-result-object v1

    .line 380
    invoke-virtual {v1, p0}, Lcm/aptoide/pt/viewRateAndCommentReviews/CommentDialogFragment;->setCommentDialogCallbackContract(Lcm/aptoide/pt/v8engine/fragment/CommentListFragment;)V

    .line 381
    invoke-virtual {v1}, Lcm/aptoide/pt/viewRateAndCommentReviews/CommentDialogFragment;->lifecycle()Lrx/d;

    move-result-object v2

    invoke-static {v1, v0}, Lcm/aptoide/pt/v8engine/fragment/CommentListFragment$$Lambda$17;->lambdaFactory$(Lcm/aptoide/pt/viewRateAndCommentReviews/CommentDialogFragment;Landroid/app/FragmentManager;)Lrx/b/a;

    move-result-object v0

    .line 382
    invoke-virtual {v2, v0}, Lrx/d;->b(Lrx/b/a;)Lrx/d;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/v8engine/fragment/CommentListFragment$$Lambda$18;->lambdaFactory$()Lrx/b/e;

    move-result-object v1

    .line 385
    invoke-virtual {v0, v1}, Lrx/d;->c(Lrx/b/e;)Lrx/d;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/v8engine/fragment/CommentListFragment$$Lambda$19;->lambdaFactory$()Lrx/b/e;

    move-result-object v1

    .line 386
    invoke-virtual {v0, v1}, Lrx/d;->e(Lrx/b/e;)Lrx/d;

    move-result-object v0

    .line 389
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/fragment/CommentListFragment;->showSignInMessage()Lrx/d;

    move-result-object v0

    goto :goto_0
.end method

.method synthetic lambda$createNewCommentFragment$22(JLjava/lang/String;Ljava/lang/Boolean;)Lrx/d;
    .locals 3

    .prologue
    .line 397
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 399
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/CommentListFragment;->getActivity()Landroid/support/v4/app/u;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/u;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 401
    invoke-static {p1, p2, p3}, Lcm/aptoide/pt/viewRateAndCommentReviews/CommentDialogFragment;->newInstanceStoreComment(JLjava/lang/String;)Lcm/aptoide/pt/viewRateAndCommentReviews/CommentDialogFragment;

    move-result-object v1

    .line 402
    invoke-virtual {v1, p0}, Lcm/aptoide/pt/viewRateAndCommentReviews/CommentDialogFragment;->setCommentDialogCallbackContract(Lcm/aptoide/pt/v8engine/fragment/CommentListFragment;)V

    .line 404
    invoke-virtual {v1}, Lcm/aptoide/pt/viewRateAndCommentReviews/CommentDialogFragment;->lifecycle()Lrx/d;

    move-result-object v2

    invoke-static {v1, v0}, Lcm/aptoide/pt/v8engine/fragment/CommentListFragment$$Lambda$14;->lambdaFactory$(Lcm/aptoide/pt/viewRateAndCommentReviews/CommentDialogFragment;Landroid/app/FragmentManager;)Lrx/b/a;

    move-result-object v0

    .line 405
    invoke-virtual {v2, v0}, Lrx/d;->b(Lrx/b/a;)Lrx/d;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/v8engine/fragment/CommentListFragment$$Lambda$15;->lambdaFactory$()Lrx/b/e;

    move-result-object v1

    .line 408
    invoke-virtual {v0, v1}, Lrx/d;->c(Lrx/b/e;)Lrx/d;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/v8engine/fragment/CommentListFragment$$Lambda$16;->lambdaFactory$()Lrx/b/e;

    move-result-object v1

    .line 409
    invoke-virtual {v0, v1}, Lrx/d;->e(Lrx/b/e;)Lrx/d;

    move-result-object v0

    .line 412
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/fragment/CommentListFragment;->showSignInMessage()Lrx/d;

    move-result-object v0

    goto :goto_0
.end method

.method synthetic lambda$createNewCommentFragment$5(Ljava/lang/String;JLjava/lang/Boolean;)Lrx/d;
    .locals 4

    .prologue
    .line 284
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 286
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/CommentListFragment;->getActivity()Landroid/support/v4/app/u;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/u;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 288
    invoke-static {p1, p2, p3}, Lcm/aptoide/pt/viewRateAndCommentReviews/CommentDialogFragment;->newInstanceTimelineArticleComment(Ljava/lang/String;J)Lcm/aptoide/pt/viewRateAndCommentReviews/CommentDialogFragment;

    move-result-object v1

    .line 290
    invoke-virtual {v1, p0}, Lcm/aptoide/pt/viewRateAndCommentReviews/CommentDialogFragment;->setCommentDialogCallbackContract(Lcm/aptoide/pt/v8engine/fragment/CommentListFragment;)V

    .line 292
    invoke-virtual {v1}, Lcm/aptoide/pt/viewRateAndCommentReviews/CommentDialogFragment;->lifecycle()Lrx/d;

    move-result-object v2

    invoke-static {v1, v0}, Lcm/aptoide/pt/v8engine/fragment/CommentListFragment$$Lambda$23;->lambdaFactory$(Lcm/aptoide/pt/viewRateAndCommentReviews/CommentDialogFragment;Landroid/app/FragmentManager;)Lrx/b/a;

    move-result-object v0

    .line 293
    invoke-virtual {v2, v0}, Lrx/d;->b(Lrx/b/a;)Lrx/d;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/v8engine/fragment/CommentListFragment$$Lambda$24;->lambdaFactory$()Lrx/b/e;

    move-result-object v1

    .line 294
    invoke-virtual {v0, v1}, Lrx/d;->c(Lrx/b/e;)Lrx/d;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/v8engine/fragment/CommentListFragment$$Lambda$25;->lambdaFactory$()Lrx/b/e;

    move-result-object v1

    .line 295
    invoke-virtual {v0, v1}, Lrx/d;->e(Lrx/b/e;)Lrx/d;

    move-result-object v0

    .line 298
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/fragment/CommentListFragment;->showSignInMessage()Lrx/d;

    move-result-object v0

    goto :goto_0
.end method

.method synthetic lambda$createNewCommentFragment$9(JJLjava/lang/String;Ljava/lang/Boolean;)Lrx/d;
    .locals 3

    .prologue
    .line 307
    invoke-virtual {p6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 309
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/CommentListFragment;->getActivity()Landroid/support/v4/app/u;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/u;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 311
    invoke-static {p1, p2, p3, p4, p5}, Lcm/aptoide/pt/viewRateAndCommentReviews/CommentDialogFragment;->newInstanceStoreCommentReply(JJLjava/lang/String;)Lcm/aptoide/pt/viewRateAndCommentReviews/CommentDialogFragment;

    move-result-object v1

    .line 313
    invoke-virtual {v1, p0}, Lcm/aptoide/pt/viewRateAndCommentReviews/CommentDialogFragment;->setCommentDialogCallbackContract(Lcm/aptoide/pt/v8engine/fragment/CommentListFragment;)V

    .line 315
    invoke-virtual {v1}, Lcm/aptoide/pt/viewRateAndCommentReviews/CommentDialogFragment;->lifecycle()Lrx/d;

    move-result-object v2

    invoke-static {v1, v0}, Lcm/aptoide/pt/v8engine/fragment/CommentListFragment$$Lambda$20;->lambdaFactory$(Lcm/aptoide/pt/viewRateAndCommentReviews/CommentDialogFragment;Landroid/app/FragmentManager;)Lrx/b/a;

    move-result-object v0

    .line 316
    invoke-virtual {v2, v0}, Lrx/d;->b(Lrx/b/a;)Lrx/d;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/v8engine/fragment/CommentListFragment$$Lambda$21;->lambdaFactory$()Lrx/b/e;

    move-result-object v1

    .line 317
    invoke-virtual {v0, v1}, Lrx/d;->c(Lrx/b/e;)Lrx/d;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/v8engine/fragment/CommentListFragment$$Lambda$22;->lambdaFactory$()Lrx/b/e;

    move-result-object v1

    .line 318
    invoke-virtual {v0, v1}, Lrx/d;->e(Lrx/b/e;)Lrx/d;

    move-result-object v0

    .line 321
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/fragment/CommentListFragment;->showSignInMessage()Lrx/d;

    move-result-object v0

    goto :goto_0
.end method

.method synthetic lambda$reloadComments$12()Ljava/lang/Void;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 342
    const/4 v0, 0x1

    invoke-static {v0}, Lcm/aptoide/pt/preferences/managed/ManagerPreferences;->setForceServerRefreshFlag(Z)V

    .line 343
    invoke-super {p0}, Lcm/aptoide/pt/v8engine/fragment/GridRecyclerSwipeFragment;->reload()V

    .line 344
    const/4 v0, 0x0

    return-object v0
.end method

.method synthetic lambda$setupViews$13(Ljava/lang/Void;)Lrx/d;
    .locals 3

    .prologue
    .line 354
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/CommentListFragment;->commentType:Lcm/aptoide/pt/dataprovider/util/CommentType;

    sget-object v1, Lcm/aptoide/pt/dataprovider/util/CommentType;->TIMELINE:Lcm/aptoide/pt/dataprovider/util/CommentType;

    if-ne v0, v1, :cond_0

    .line 355
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/CommentListFragment;->elementIdAsString:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcm/aptoide/pt/v8engine/fragment/CommentListFragment;->createNewCommentFragment(Ljava/lang/String;)Lrx/d;

    move-result-object v0

    .line 357
    :goto_0
    return-object v0

    :cond_0
    iget-wide v0, p0, Lcm/aptoide/pt/v8engine/fragment/CommentListFragment;->elementIdAsLong:J

    iget-object v2, p0, Lcm/aptoide/pt/v8engine/fragment/CommentListFragment;->storeName:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Lcm/aptoide/pt/v8engine/fragment/CommentListFragment;->createNewCommentFragment(JLjava/lang/String;)Lrx/d;

    move-result-object v0

    goto :goto_0
.end method

.method synthetic lambda$showSignInMessage$10(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 336
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/CommentListFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcm/aptoide/accountmanager/AptoideAccountManager;->openAccountManager(Landroid/content/Context;)V

    .line 337
    return-void
.end method

.method public load(ZZLandroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 182
    invoke-super {p0, p1, p2, p3}, Lcm/aptoide/pt/v8engine/fragment/GridRecyclerSwipeFragment;->load(ZZLandroid/os/Bundle;)V

    .line 183
    if-nez p1, :cond_0

    if-eqz p2, :cond_1

    .line 184
    :cond_0
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/CommentListFragment;->refreshData()V

    .line 186
    :cond_1
    return-void
.end method

.method public loadExtras(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 141
    invoke-super {p0, p1}, Lcm/aptoide/pt/v8engine/fragment/GridRecyclerSwipeFragment;->loadExtras(Landroid/os/Bundle;)V

    .line 142
    const-string v0, "element_id_as_string"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/CommentListFragment;->elementIdAsString:Ljava/lang/String;

    .line 143
    const-string v0, "element_id_as_long"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcm/aptoide/pt/v8engine/fragment/CommentListFragment;->elementIdAsLong:J

    .line 144
    const-string v0, "url_val"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/CommentListFragment;->url:Ljava/lang/String;

    .line 145
    const-string v0, "comment_type"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcm/aptoide/pt/dataprovider/util/CommentType;->valueOf(Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/util/CommentType;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/CommentListFragment;->commentType:Lcm/aptoide/pt/dataprovider/util/CommentType;

    .line 148
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/CommentListFragment;->commentType:Lcm/aptoide/pt/dataprovider/util/CommentType;

    sget-object v1, Lcm/aptoide/pt/dataprovider/util/CommentType;->STORE:Lcm/aptoide/pt/dataprovider/util/CommentType;

    if-ne v0, v1, :cond_1

    .line 149
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/CommentListFragment;->url:Ljava/lang/String;

    .line 150
    invoke-static {v0}, Lcm/aptoide/pt/v8engine/util/StoreUtils;->getStoreCredentialsFromUrl(Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/BaseRequestWithStore$StoreCredentials;

    move-result-object v0

    .line 151
    if-eqz v0, :cond_1

    .line 153
    invoke-virtual {v0}, Lcm/aptoide/pt/dataprovider/ws/v7/BaseRequestWithStore$StoreCredentials;->getId()Ljava/lang/Long;

    move-result-object v1

    .line 154
    if-eqz v1, :cond_0

    .line 155
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, p0, Lcm/aptoide/pt/v8engine/fragment/CommentListFragment;->elementIdAsLong:J

    .line 158
    :cond_0
    invoke-virtual {v0}, Lcm/aptoide/pt/dataprovider/ws/v7/BaseRequestWithStore$StoreCredentials;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 159
    invoke-virtual {v0}, Lcm/aptoide/pt/dataprovider/ws/v7/BaseRequestWithStore$StoreCredentials;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/CommentListFragment;->storeName:Ljava/lang/String;

    .line 163
    :cond_1
    return-void
.end method

.method public okSelected(Lcm/aptoide/pt/model/v7/BaseV7Response;JLjava/lang/Long;Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 418
    instance-of v0, p1, Lcm/aptoide/pt/model/v7/SetComment;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 419
    check-cast v0, Lcm/aptoide/pt/model/v7/SetComment;

    .line 420
    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/SetComment;->getData()Lcm/aptoide/pt/model/v7/SetComment$Data;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/SetComment$Data;->getBody()Ljava/lang/String;

    move-result-object v0

    check-cast p1, Lcm/aptoide/pt/model/v7/SetComment;

    .line 421
    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/SetComment;->getData()Lcm/aptoide/pt/model/v7/SetComment$Data;

    move-result-object v1

    invoke-virtual {v1}, Lcm/aptoide/pt/model/v7/SetComment$Data;->getId()J

    move-result-wide v2

    .line 420
    invoke-direct {p0, v0, p4, v2, v3}, Lcm/aptoide/pt/v8engine/fragment/CommentListFragment;->getComplexComment(Ljava/lang/String;Ljava/lang/Long;J)Lcm/aptoide/pt/viewRateAndCommentReviews/ComplexComment;

    move-result-object v0

    .line 423
    new-instance v1, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/CommentDisplayable;

    invoke-direct {v1, v0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/CommentDisplayable;-><init>(Lcm/aptoide/pt/model/v7/Comment;)V

    .line 425
    invoke-virtual {v0}, Lcm/aptoide/pt/viewRateAndCommentReviews/ComplexComment;->getParent()Lcm/aptoide/pt/model/v7/Comment$Parent;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 426
    invoke-direct {p0, v0}, Lcm/aptoide/pt/v8engine/fragment/CommentListFragment;->insertChildCommentInsideParent(Lcm/aptoide/pt/viewRateAndCommentReviews/ComplexComment;)V

    .line 430
    :goto_0
    invoke-static {v4}, Lcm/aptoide/pt/preferences/managed/ManagerPreferences;->setForceServerRefreshFlag(Z)V

    .line 431
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/CommentListFragment;->getActivity()Landroid/support/v4/app/u;

    move-result-object v0

    sget v1, Lcm/aptoide/pt/v8engine/R$string;->comment_submitted:I

    invoke-static {v0, v1}, Lcm/aptoide/pt/utils/design/ShowMessage;->asSnack(Landroid/app/Activity;I)V

    .line 433
    :cond_0
    return-void

    .line 428
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1, v4}, Lcm/aptoide/pt/v8engine/fragment/CommentListFragment;->addDisplayable(ILcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;Z)Lcm/aptoide/pt/v8engine/fragment/BaseRecyclerViewFragment;

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .prologue
    .line 124
    invoke-super {p0, p1, p2}, Lcm/aptoide/pt/v8engine/fragment/GridRecyclerSwipeFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 125
    sget v0, Lcm/aptoide/pt/v8engine/R$menu;->menu_empty:I

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 126
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 129
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 130
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/CommentListFragment;->getActivity()Landroid/support/v4/app/u;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/u;->onBackPressed()V

    .line 131
    const/4 v0, 0x1

    .line 133
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcm/aptoide/pt/v8engine/fragment/GridRecyclerSwipeFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method refreshData()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 189
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/CommentListFragment;->commentType:Lcm/aptoide/pt/dataprovider/util/CommentType;

    sget-object v1, Lcm/aptoide/pt/dataprovider/util/CommentType;->TIMELINE:Lcm/aptoide/pt/dataprovider/util/CommentType;

    if-ne v0, v1, :cond_0

    .line 190
    invoke-virtual {p0, v2}, Lcm/aptoide/pt/v8engine/fragment/CommentListFragment;->caseListSocialTimelineComments(Z)V

    .line 194
    :goto_0
    return-void

    .line 192
    :cond_0
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/CommentListFragment;->url:Ljava/lang/String;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/fragment/CommentListFragment;->url:Ljava/lang/String;

    invoke-static {v1}, Lcm/aptoide/pt/v8engine/util/StoreUtils;->getStoreCredentialsFromUrl(Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/BaseRequestWithStore$StoreCredentials;

    move-result-object v1

    invoke-virtual {p0, v0, v1, v2}, Lcm/aptoide/pt/v8engine/fragment/CommentListFragment;->caseListStoreComments(Ljava/lang/String;Lcm/aptoide/pt/dataprovider/ws/v7/BaseRequestWithStore$StoreCredentials;Z)V

    goto :goto_0
.end method

.method public setupToolbarDetails(Landroid/support/v7/widget/Toolbar;)V
    .locals 4

    .prologue
    .line 115
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/CommentListFragment;->commentType:Lcm/aptoide/pt/dataprovider/util/CommentType;

    sget-object v1, Lcm/aptoide/pt/dataprovider/util/CommentType;->STORE:Lcm/aptoide/pt/dataprovider/util/CommentType;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/CommentListFragment;->storeName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 116
    sget v0, Lcm/aptoide/pt/v8engine/R$string;->comment_on_store:I

    invoke-virtual {p0, v0}, Lcm/aptoide/pt/v8engine/fragment/CommentListFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcm/aptoide/pt/v8engine/fragment/CommentListFragment;->storeName:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 117
    invoke-virtual {p1, v0}, Landroid/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 121
    :goto_0
    return-void

    .line 119
    :cond_0
    sget v0, Lcm/aptoide/pt/v8engine/R$string;->comments:I

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/Toolbar;->setTitle(I)V

    goto :goto_0
.end method

.method public setupViews()V
    .locals 2

    .prologue
    .line 349
    invoke-super {p0}, Lcm/aptoide/pt/v8engine/fragment/GridRecyclerSwipeFragment;->setupViews()V

    .line 350
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/CommentListFragment;->setupToolbar()V

    .line 351
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcm/aptoide/pt/v8engine/fragment/CommentListFragment;->setHasOptionsMenu(Z)V

    .line 353
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/CommentListFragment;->floatingActionButton:Landroid/support/design/widget/FloatingActionButton;

    invoke-static {v0}, Lcom/c/a/b/c;->a(Landroid/view/View;)Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/fragment/CommentListFragment$$Lambda$10;->lambdaFactory$(Lcm/aptoide/pt/v8engine/fragment/CommentListFragment;)Lrx/b/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->e(Lrx/b/e;)Lrx/d;

    move-result-object v0

    sget-object v1, Lcm/aptoide/pt/v8engine/view/View$LifecycleEvent;->DESTROY_VIEW:Lcm/aptoide/pt/v8engine/view/View$LifecycleEvent;

    .line 358
    invoke-virtual {p0, v1}, Lcm/aptoide/pt/v8engine/fragment/CommentListFragment;->bindUntilEvent(Lcm/aptoide/pt/v8engine/view/View$LifecycleEvent;)Lcom/trello/rxlifecycle/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->a(Lrx/d$c;)Lrx/d;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/v8engine/fragment/CommentListFragment$$Lambda$11;->lambdaFactory$()Lrx/b/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->d(Lrx/b/b;)Lrx/k;

    .line 361
    return-void
.end method
