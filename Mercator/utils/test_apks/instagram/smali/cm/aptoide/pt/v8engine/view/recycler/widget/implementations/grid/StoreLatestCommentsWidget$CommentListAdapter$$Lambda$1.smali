.class final synthetic Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/StoreLatestCommentsWidget$CommentListAdapter$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Lrx/b/e;


# instance fields
.field private final arg$1:Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/StoreLatestCommentsWidget$CommentListAdapter;

.field private final arg$2:J

.field private final arg$3:Lcm/aptoide/pt/model/v7/Comment;

.field private final arg$4:Ljava/lang/String;

.field private final arg$5:Landroid/app/FragmentManager;

.field private final arg$6:Lrx/d;

.field private final arg$7:Landroid/view/View;


# direct methods
.method private constructor <init>(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/StoreLatestCommentsWidget$CommentListAdapter;JLcm/aptoide/pt/model/v7/Comment;Ljava/lang/String;Landroid/app/FragmentManager;Lrx/d;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/StoreLatestCommentsWidget$CommentListAdapter$$Lambda$1;->arg$1:Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/StoreLatestCommentsWidget$CommentListAdapter;

    iput-wide p2, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/StoreLatestCommentsWidget$CommentListAdapter$$Lambda$1;->arg$2:J

    iput-object p4, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/StoreLatestCommentsWidget$CommentListAdapter$$Lambda$1;->arg$3:Lcm/aptoide/pt/model/v7/Comment;

    iput-object p5, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/StoreLatestCommentsWidget$CommentListAdapter$$Lambda$1;->arg$4:Ljava/lang/String;

    iput-object p6, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/StoreLatestCommentsWidget$CommentListAdapter$$Lambda$1;->arg$5:Landroid/app/FragmentManager;

    iput-object p7, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/StoreLatestCommentsWidget$CommentListAdapter$$Lambda$1;->arg$6:Lrx/d;

    iput-object p8, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/StoreLatestCommentsWidget$CommentListAdapter$$Lambda$1;->arg$7:Landroid/view/View;

    return-void
.end method

.method public static lambdaFactory$(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/StoreLatestCommentsWidget$CommentListAdapter;JLcm/aptoide/pt/model/v7/Comment;Ljava/lang/String;Landroid/app/FragmentManager;Lrx/d;Landroid/view/View;)Lrx/b/e;
    .locals 9

    new-instance v0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/StoreLatestCommentsWidget$CommentListAdapter$$Lambda$1;

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/StoreLatestCommentsWidget$CommentListAdapter$$Lambda$1;-><init>(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/StoreLatestCommentsWidget$CommentListAdapter;JLcm/aptoide/pt/model/v7/Comment;Ljava/lang/String;Landroid/app/FragmentManager;Lrx/d;Landroid/view/View;)V

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/StoreLatestCommentsWidget$CommentListAdapter$$Lambda$1;->arg$1:Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/StoreLatestCommentsWidget$CommentListAdapter;

    iget-wide v2, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/StoreLatestCommentsWidget$CommentListAdapter$$Lambda$1;->arg$2:J

    iget-object v4, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/StoreLatestCommentsWidget$CommentListAdapter$$Lambda$1;->arg$3:Lcm/aptoide/pt/model/v7/Comment;

    iget-object v5, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/StoreLatestCommentsWidget$CommentListAdapter$$Lambda$1;->arg$4:Ljava/lang/String;

    iget-object v6, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/StoreLatestCommentsWidget$CommentListAdapter$$Lambda$1;->arg$5:Landroid/app/FragmentManager;

    iget-object v7, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/StoreLatestCommentsWidget$CommentListAdapter$$Lambda$1;->arg$6:Lrx/d;

    iget-object v8, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/StoreLatestCommentsWidget$CommentListAdapter$$Lambda$1;->arg$7:Landroid/view/View;

    move-object v9, p1

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual/range {v1 .. v9}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/StoreLatestCommentsWidget$CommentListAdapter;->lambda$showStoreCommentFragment$3(JLcm/aptoide/pt/model/v7/Comment;Ljava/lang/String;Landroid/app/FragmentManager;Lrx/d;Landroid/view/View;Ljava/lang/Boolean;)Lrx/d;

    move-result-object v0

    return-object v0
.end method
