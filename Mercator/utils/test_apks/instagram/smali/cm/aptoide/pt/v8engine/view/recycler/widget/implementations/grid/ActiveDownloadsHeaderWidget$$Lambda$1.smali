.class final synthetic Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/ActiveDownloadsHeaderWidget$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final arg$1:Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/ActiveDownloadsHeaderWidget;

.field private final arg$2:Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/ActiveDownloadsHeaderDisplayable;


# direct methods
.method private constructor <init>(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/ActiveDownloadsHeaderWidget;Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/ActiveDownloadsHeaderDisplayable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/ActiveDownloadsHeaderWidget$$Lambda$1;->arg$1:Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/ActiveDownloadsHeaderWidget;

    iput-object p2, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/ActiveDownloadsHeaderWidget$$Lambda$1;->arg$2:Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/ActiveDownloadsHeaderDisplayable;

    return-void
.end method

.method public static lambdaFactory$(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/ActiveDownloadsHeaderWidget;Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/ActiveDownloadsHeaderDisplayable;)Landroid/view/View$OnClickListener;
    .locals 1

    new-instance v0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/ActiveDownloadsHeaderWidget$$Lambda$1;

    invoke-direct {v0, p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/ActiveDownloadsHeaderWidget$$Lambda$1;-><init>(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/ActiveDownloadsHeaderWidget;Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/ActiveDownloadsHeaderDisplayable;)V

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/ActiveDownloadsHeaderWidget$$Lambda$1;->arg$1:Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/ActiveDownloadsHeaderWidget;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/ActiveDownloadsHeaderWidget$$Lambda$1;->arg$2:Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/ActiveDownloadsHeaderDisplayable;

    invoke-virtual {v0, v1, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/ActiveDownloadsHeaderWidget;->lambda$bindView$0(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/ActiveDownloadsHeaderDisplayable;Landroid/view/View;)V

    return-void
.end method
