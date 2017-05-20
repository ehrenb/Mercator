.class final synthetic Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/ActiveDownloadWidget$$Lambda$4;
.super Ljava/lang/Object;

# interfaces
.implements Lrx/b/b;


# instance fields
.field private final arg$1:Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/ActiveDownloadWidget;


# direct methods
.method private constructor <init>(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/ActiveDownloadWidget;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/ActiveDownloadWidget$$Lambda$4;->arg$1:Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/ActiveDownloadWidget;

    return-void
.end method

.method public static lambdaFactory$(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/ActiveDownloadWidget;)Lrx/b/b;
    .locals 1

    new-instance v0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/ActiveDownloadWidget$$Lambda$4;

    invoke-direct {v0, p0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/ActiveDownloadWidget$$Lambda$4;-><init>(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/ActiveDownloadWidget;)V

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/Object;)V
    .locals 1
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/ActiveDownloadWidget$$Lambda$4;->arg$1:Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/ActiveDownloadWidget;

    check-cast p1, Lcm/aptoide/pt/database/realm/Download;

    invoke-virtual {v0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/ActiveDownloadWidget;->lambda$bindView$3(Lcm/aptoide/pt/database/realm/Download;)V

    return-void
.end method
