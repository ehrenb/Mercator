.class final synthetic Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/StoreAddCommentWidget$$Lambda$4;
.super Ljava/lang/Object;

# interfaces
.implements Lrx/b/e;


# instance fields
.field private final arg$1:Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/StoreAddCommentWidget;

.field private final arg$2:J

.field private final arg$3:Ljava/lang/String;

.field private final arg$4:Landroid/app/FragmentManager;

.field private final arg$5:Landroid/view/View;


# direct methods
.method private constructor <init>(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/StoreAddCommentWidget;JLjava/lang/String;Landroid/app/FragmentManager;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/StoreAddCommentWidget$$Lambda$4;->arg$1:Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/StoreAddCommentWidget;

    iput-wide p2, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/StoreAddCommentWidget$$Lambda$4;->arg$2:J

    iput-object p4, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/StoreAddCommentWidget$$Lambda$4;->arg$3:Ljava/lang/String;

    iput-object p5, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/StoreAddCommentWidget$$Lambda$4;->arg$4:Landroid/app/FragmentManager;

    iput-object p6, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/StoreAddCommentWidget$$Lambda$4;->arg$5:Landroid/view/View;

    return-void
.end method

.method public static lambdaFactory$(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/StoreAddCommentWidget;JLjava/lang/String;Landroid/app/FragmentManager;Landroid/view/View;)Lrx/b/e;
    .locals 7

    new-instance v0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/StoreAddCommentWidget$$Lambda$4;

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/StoreAddCommentWidget$$Lambda$4;-><init>(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/StoreAddCommentWidget;JLjava/lang/String;Landroid/app/FragmentManager;Landroid/view/View;)V

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/StoreAddCommentWidget$$Lambda$4;->arg$1:Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/StoreAddCommentWidget;

    iget-wide v2, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/StoreAddCommentWidget$$Lambda$4;->arg$2:J

    iget-object v4, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/StoreAddCommentWidget$$Lambda$4;->arg$3:Ljava/lang/String;

    iget-object v5, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/StoreAddCommentWidget$$Lambda$4;->arg$4:Landroid/app/FragmentManager;

    iget-object v6, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/StoreAddCommentWidget$$Lambda$4;->arg$5:Landroid/view/View;

    move-object v7, p1

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual/range {v1 .. v7}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/StoreAddCommentWidget;->lambda$showStoreCommentFragment$7(JLjava/lang/String;Landroid/app/FragmentManager;Landroid/view/View;Ljava/lang/Boolean;)Lrx/d;

    move-result-object v0

    return-object v0
.end method
