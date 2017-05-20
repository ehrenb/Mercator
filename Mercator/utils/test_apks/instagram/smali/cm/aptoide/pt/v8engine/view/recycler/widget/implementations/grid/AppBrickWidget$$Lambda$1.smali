.class final synthetic Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/AppBrickWidget$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Lrx/b/b;


# instance fields
.field private final arg$1:Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/AppBrickWidget;

.field private final arg$2:Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/AppBrickDisplayable;

.field private final arg$3:Lcm/aptoide/pt/v8engine/interfaces/FragmentShower;


# direct methods
.method private constructor <init>(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/AppBrickWidget;Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/AppBrickDisplayable;Lcm/aptoide/pt/v8engine/interfaces/FragmentShower;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/AppBrickWidget$$Lambda$1;->arg$1:Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/AppBrickWidget;

    iput-object p2, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/AppBrickWidget$$Lambda$1;->arg$2:Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/AppBrickDisplayable;

    iput-object p3, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/AppBrickWidget$$Lambda$1;->arg$3:Lcm/aptoide/pt/v8engine/interfaces/FragmentShower;

    return-void
.end method

.method public static lambdaFactory$(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/AppBrickWidget;Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/AppBrickDisplayable;Lcm/aptoide/pt/v8engine/interfaces/FragmentShower;)Lrx/b/b;
    .locals 1

    new-instance v0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/AppBrickWidget$$Lambda$1;

    invoke-direct {v0, p0, p1, p2}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/AppBrickWidget$$Lambda$1;-><init>(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/AppBrickWidget;Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/AppBrickDisplayable;Lcm/aptoide/pt/v8engine/interfaces/FragmentShower;)V

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/Object;)V
    .locals 3
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/AppBrickWidget$$Lambda$1;->arg$1:Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/AppBrickWidget;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/AppBrickWidget$$Lambda$1;->arg$2:Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/AppBrickDisplayable;

    iget-object v2, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/AppBrickWidget$$Lambda$1;->arg$3:Lcm/aptoide/pt/v8engine/interfaces/FragmentShower;

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {v0, v1, v2, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/AppBrickWidget;->lambda$bindView$0(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/AppBrickDisplayable;Lcm/aptoide/pt/v8engine/interfaces/FragmentShower;Ljava/lang/Void;)V

    return-void
.end method
