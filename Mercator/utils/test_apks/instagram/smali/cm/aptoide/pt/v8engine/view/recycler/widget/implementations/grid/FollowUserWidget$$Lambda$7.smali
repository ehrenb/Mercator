.class final synthetic Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/FollowUserWidget$$Lambda$7;
.super Ljava/lang/Object;

# interfaces
.implements Lcm/aptoide/pt/networkclient/interfaces/SuccessRequestListener;


# instance fields
.field private final arg$1:Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/FollowUserWidget;

.field private final arg$2:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/FollowUserWidget;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/FollowUserWidget$$Lambda$7;->arg$1:Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/FollowUserWidget;

    iput-object p2, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/FollowUserWidget$$Lambda$7;->arg$2:Ljava/lang/String;

    return-void
.end method

.method public static lambdaFactory$(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/FollowUserWidget;Ljava/lang/String;)Lcm/aptoide/pt/networkclient/interfaces/SuccessRequestListener;
    .locals 1

    new-instance v0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/FollowUserWidget$$Lambda$7;

    invoke-direct {v0, p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/FollowUserWidget$$Lambda$7;-><init>(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/FollowUserWidget;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/Object;)V
    .locals 2
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/FollowUserWidget$$Lambda$7;->arg$1:Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/FollowUserWidget;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/FollowUserWidget$$Lambda$7;->arg$2:Ljava/lang/String;

    check-cast p1, Lcm/aptoide/pt/model/v7/store/GetStoreMeta;

    invoke-virtual {v0, v1, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/FollowUserWidget;->lambda$null$1(Ljava/lang/String;Lcm/aptoide/pt/model/v7/store/GetStoreMeta;)V

    return-void
.end method
