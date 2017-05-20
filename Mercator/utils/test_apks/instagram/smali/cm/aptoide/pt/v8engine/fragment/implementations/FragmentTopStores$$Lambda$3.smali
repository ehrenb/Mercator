.class final synthetic Lcm/aptoide/pt/v8engine/fragment/implementations/FragmentTopStores$$Lambda$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final arg$1:Lcm/aptoide/pt/v8engine/fragment/implementations/FragmentTopStores;

.field private final arg$2:Lcm/aptoide/pt/model/v7/store/ListStores;


# direct methods
.method private constructor <init>(Lcm/aptoide/pt/v8engine/fragment/implementations/FragmentTopStores;Lcm/aptoide/pt/model/v7/store/ListStores;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/FragmentTopStores$$Lambda$3;->arg$1:Lcm/aptoide/pt/v8engine/fragment/implementations/FragmentTopStores;

    iput-object p2, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/FragmentTopStores$$Lambda$3;->arg$2:Lcm/aptoide/pt/model/v7/store/ListStores;

    return-void
.end method

.method public static lambdaFactory$(Lcm/aptoide/pt/v8engine/fragment/implementations/FragmentTopStores;Lcm/aptoide/pt/model/v7/store/ListStores;)Ljava/util/concurrent/Callable;
    .locals 1

    new-instance v0, Lcm/aptoide/pt/v8engine/fragment/implementations/FragmentTopStores$$Lambda$3;

    invoke-direct {v0, p0, p1}, Lcm/aptoide/pt/v8engine/fragment/implementations/FragmentTopStores$$Lambda$3;-><init>(Lcm/aptoide/pt/v8engine/fragment/implementations/FragmentTopStores;Lcm/aptoide/pt/model/v7/store/ListStores;)V

    return-object v0
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 2
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/FragmentTopStores$$Lambda$3;->arg$1:Lcm/aptoide/pt/v8engine/fragment/implementations/FragmentTopStores;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/FragmentTopStores$$Lambda$3;->arg$2:Lcm/aptoide/pt/model/v7/store/ListStores;

    invoke-virtual {v0, v1}, Lcm/aptoide/pt/v8engine/fragment/implementations/FragmentTopStores;->lambda$null$0(Lcm/aptoide/pt/model/v7/store/ListStores;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
