.class final synthetic Lcm/aptoide/pt/v8engine/fragment/implementations/SearchFragment$$Lambda$5;
.super Ljava/lang/Object;

# interfaces
.implements Lcm/aptoide/pt/networkclient/interfaces/SuccessRequestListener;


# instance fields
.field private final arg$1:Lcm/aptoide/pt/v8engine/fragment/implementations/SearchFragment;

.field private final arg$2:Z


# direct methods
.method private constructor <init>(Lcm/aptoide/pt/v8engine/fragment/implementations/SearchFragment;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchFragment$$Lambda$5;->arg$1:Lcm/aptoide/pt/v8engine/fragment/implementations/SearchFragment;

    iput-boolean p2, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchFragment$$Lambda$5;->arg$2:Z

    return-void
.end method

.method public static lambdaFactory$(Lcm/aptoide/pt/v8engine/fragment/implementations/SearchFragment;Z)Lcm/aptoide/pt/networkclient/interfaces/SuccessRequestListener;
    .locals 1

    new-instance v0, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchFragment$$Lambda$5;

    invoke-direct {v0, p0, p1}, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchFragment$$Lambda$5;-><init>(Lcm/aptoide/pt/v8engine/fragment/implementations/SearchFragment;Z)V

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/Object;)V
    .locals 2
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchFragment$$Lambda$5;->arg$1:Lcm/aptoide/pt/v8engine/fragment/implementations/SearchFragment;

    iget-boolean v1, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchFragment$$Lambda$5;->arg$2:Z

    check-cast p1, Lcm/aptoide/pt/model/v7/ListSearchApps;

    invoke-virtual {v0, v1, p1}, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchFragment;->lambda$executeSearchRequests$4(ZLcm/aptoide/pt/model/v7/ListSearchApps;)V

    return-void
.end method
