.class final synthetic Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/FollowUserWidget$$Lambda$5;
.super Ljava/lang/Object;

# interfaces
.implements Lrx/b/b;


# instance fields
.field private final arg$1:Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/FollowUserDisplayable;

.field private final arg$2:Lcm/aptoide/pt/v8engine/interfaces/FragmentShower;


# direct methods
.method private constructor <init>(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/FollowUserDisplayable;Lcm/aptoide/pt/v8engine/interfaces/FragmentShower;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/FollowUserWidget$$Lambda$5;->arg$1:Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/FollowUserDisplayable;

    iput-object p2, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/FollowUserWidget$$Lambda$5;->arg$2:Lcm/aptoide/pt/v8engine/interfaces/FragmentShower;

    return-void
.end method

.method public static lambdaFactory$(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/FollowUserDisplayable;Lcm/aptoide/pt/v8engine/interfaces/FragmentShower;)Lrx/b/b;
    .locals 1

    new-instance v0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/FollowUserWidget$$Lambda$5;

    invoke-direct {v0, p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/FollowUserWidget$$Lambda$5;-><init>(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/FollowUserDisplayable;Lcm/aptoide/pt/v8engine/interfaces/FragmentShower;)V

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/Object;)V
    .locals 2
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/FollowUserWidget$$Lambda$5;->arg$1:Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/FollowUserDisplayable;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/FollowUserWidget$$Lambda$5;->arg$2:Lcm/aptoide/pt/v8engine/interfaces/FragmentShower;

    check-cast p1, Ljava/lang/Void;

    invoke-static {v0, v1, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/FollowUserWidget;->lambda$bindView$6(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/FollowUserDisplayable;Lcm/aptoide/pt/v8engine/interfaces/FragmentShower;Ljava/lang/Void;)V

    return-void
.end method
