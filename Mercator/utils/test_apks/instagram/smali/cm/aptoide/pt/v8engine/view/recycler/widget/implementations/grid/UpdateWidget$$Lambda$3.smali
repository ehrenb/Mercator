.class final synthetic Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/UpdateWidget$$Lambda$3;
.super Ljava/lang/Object;

# interfaces
.implements Lrx/b/b;


# instance fields
.field private final arg$1:Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/UpdateWidget;

.field private final arg$2:Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/UpdateDisplayable;


# direct methods
.method private constructor <init>(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/UpdateWidget;Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/UpdateDisplayable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/UpdateWidget$$Lambda$3;->arg$1:Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/UpdateWidget;

    iput-object p2, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/UpdateWidget$$Lambda$3;->arg$2:Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/UpdateDisplayable;

    return-void
.end method

.method public static lambdaFactory$(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/UpdateWidget;Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/UpdateDisplayable;)Lrx/b/b;
    .locals 1

    new-instance v0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/UpdateWidget$$Lambda$3;

    invoke-direct {v0, p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/UpdateWidget$$Lambda$3;-><init>(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/UpdateWidget;Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/UpdateDisplayable;)V

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/Object;)V
    .locals 2
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/UpdateWidget$$Lambda$3;->arg$1:Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/UpdateWidget;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/UpdateWidget$$Lambda$3;->arg$2:Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/UpdateDisplayable;

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {v0, v1, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/UpdateWidget;->lambda$bindView$2(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/UpdateDisplayable;Ljava/lang/Void;)V

    return-void
.end method
