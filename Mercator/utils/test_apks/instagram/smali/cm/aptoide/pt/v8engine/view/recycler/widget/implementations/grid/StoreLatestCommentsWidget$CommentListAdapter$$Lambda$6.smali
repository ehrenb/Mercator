.class final synthetic Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/StoreLatestCommentsWidget$CommentListAdapter$$Lambda$6;
.super Ljava/lang/Object;

# interfaces
.implements Lrx/b/e;


# instance fields
.field private final arg$1:Lrx/d;


# direct methods
.method private constructor <init>(Lrx/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/StoreLatestCommentsWidget$CommentListAdapter$$Lambda$6;->arg$1:Lrx/d;

    return-void
.end method

.method public static lambdaFactory$(Lrx/d;)Lrx/b/e;
    .locals 1

    new-instance v0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/StoreLatestCommentsWidget$CommentListAdapter$$Lambda$6;

    invoke-direct {v0, p0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/StoreLatestCommentsWidget$CommentListAdapter$$Lambda$6;-><init>(Lrx/d;)V

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/StoreLatestCommentsWidget$CommentListAdapter$$Lambda$6;->arg$1:Lrx/d;

    check-cast p1, Lcom/trello/rxlifecycle/a/b;

    invoke-static {v0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/StoreLatestCommentsWidget$CommentListAdapter;->lambda$null$2(Lrx/d;Lcom/trello/rxlifecycle/a/b;)Lrx/d;

    move-result-object v0

    return-object v0
.end method
