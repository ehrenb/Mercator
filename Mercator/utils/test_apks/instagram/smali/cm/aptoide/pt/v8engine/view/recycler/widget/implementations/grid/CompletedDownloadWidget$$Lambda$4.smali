.class final synthetic Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/CompletedDownloadWidget$$Lambda$4;
.super Ljava/lang/Object;

# interfaces
.implements Lrx/b/e;


# instance fields
.field private final arg$1:Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/CompletedDownloadDisplayable;

.field private final arg$2:Landroid/support/v4/app/u;


# direct methods
.method private constructor <init>(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/CompletedDownloadDisplayable;Landroid/support/v4/app/u;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/CompletedDownloadWidget$$Lambda$4;->arg$1:Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/CompletedDownloadDisplayable;

    iput-object p2, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/CompletedDownloadWidget$$Lambda$4;->arg$2:Landroid/support/v4/app/u;

    return-void
.end method

.method public static lambdaFactory$(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/CompletedDownloadDisplayable;Landroid/support/v4/app/u;)Lrx/b/e;
    .locals 1

    new-instance v0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/CompletedDownloadWidget$$Lambda$4;

    invoke-direct {v0, p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/CompletedDownloadWidget$$Lambda$4;-><init>(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/CompletedDownloadDisplayable;Landroid/support/v4/app/u;)V

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/CompletedDownloadWidget$$Lambda$4;->arg$1:Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/CompletedDownloadDisplayable;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/CompletedDownloadWidget$$Lambda$4;->arg$2:Landroid/support/v4/app/u;

    check-cast p1, Ljava/lang/Void;

    invoke-static {v0, v1, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/CompletedDownloadWidget;->lambda$bindView$7(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/CompletedDownloadDisplayable;Landroid/support/v4/app/u;Ljava/lang/Void;)Lrx/d;

    move-result-object v0

    return-object v0
.end method
