.class final synthetic Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridStoreWidget$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Lrx/b/b;


# instance fields
.field private final arg$1:Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridStoreWidget;

.field private final arg$2:Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/GridStoreDisplayable;

.field private final arg$3:Lcm/aptoide/pt/model/v7/store/Store;


# direct methods
.method private constructor <init>(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridStoreWidget;Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/GridStoreDisplayable;Lcm/aptoide/pt/model/v7/store/Store;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridStoreWidget$$Lambda$1;->arg$1:Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridStoreWidget;

    iput-object p2, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridStoreWidget$$Lambda$1;->arg$2:Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/GridStoreDisplayable;

    iput-object p3, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridStoreWidget$$Lambda$1;->arg$3:Lcm/aptoide/pt/model/v7/store/Store;

    return-void
.end method

.method public static lambdaFactory$(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridStoreWidget;Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/GridStoreDisplayable;Lcm/aptoide/pt/model/v7/store/Store;)Lrx/b/b;
    .locals 1

    new-instance v0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridStoreWidget$$Lambda$1;

    invoke-direct {v0, p0, p1, p2}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridStoreWidget$$Lambda$1;-><init>(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridStoreWidget;Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/GridStoreDisplayable;Lcm/aptoide/pt/model/v7/store/Store;)V

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/Object;)V
    .locals 3
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridStoreWidget$$Lambda$1;->arg$1:Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridStoreWidget;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridStoreWidget$$Lambda$1;->arg$2:Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/GridStoreDisplayable;

    iget-object v2, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridStoreWidget$$Lambda$1;->arg$3:Lcm/aptoide/pt/model/v7/store/Store;

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {v0, v1, v2, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridStoreWidget;->lambda$bindView$0(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/GridStoreDisplayable;Lcm/aptoide/pt/model/v7/store/Store;Ljava/lang/Void;)V

    return-void
.end method
