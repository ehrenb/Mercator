.class final synthetic Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/RecommendedStoreWidget$$Lambda$4;
.super Ljava/lang/Object;

# interfaces
.implements Lrx/b/b;


# instance fields
.field private final arg$1:Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/RecommendedStoreWidget;

.field private final arg$2:Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/RecommendedStoreDisplayable;


# direct methods
.method private constructor <init>(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/RecommendedStoreWidget;Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/RecommendedStoreDisplayable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/RecommendedStoreWidget$$Lambda$4;->arg$1:Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/RecommendedStoreWidget;

    iput-object p2, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/RecommendedStoreWidget$$Lambda$4;->arg$2:Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/RecommendedStoreDisplayable;

    return-void
.end method

.method public static lambdaFactory$(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/RecommendedStoreWidget;Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/RecommendedStoreDisplayable;)Lrx/b/b;
    .locals 1

    new-instance v0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/RecommendedStoreWidget$$Lambda$4;

    invoke-direct {v0, p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/RecommendedStoreWidget$$Lambda$4;-><init>(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/RecommendedStoreWidget;Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/RecommendedStoreDisplayable;)V

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/Object;)V
    .locals 2
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/RecommendedStoreWidget$$Lambda$4;->arg$1:Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/RecommendedStoreWidget;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/RecommendedStoreWidget$$Lambda$4;->arg$2:Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/RecommendedStoreDisplayable;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {v0, v1, p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/RecommendedStoreWidget;->lambda$setFollowButtonListener$4(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/RecommendedStoreDisplayable;Ljava/lang/Boolean;)V

    return-void
.end method
