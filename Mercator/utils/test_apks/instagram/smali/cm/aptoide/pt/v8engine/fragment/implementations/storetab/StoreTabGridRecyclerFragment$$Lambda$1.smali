.class final synthetic Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/StoreTabGridRecyclerFragment$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Lrx/b/b;


# instance fields
.field private final arg$1:Lcm/aptoide/pt/v8engine/interfaces/DisplayableManager;


# direct methods
.method private constructor <init>(Lcm/aptoide/pt/v8engine/interfaces/DisplayableManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/StoreTabGridRecyclerFragment$$Lambda$1;->arg$1:Lcm/aptoide/pt/v8engine/interfaces/DisplayableManager;

    return-void
.end method

.method public static lambdaFactory$(Lcm/aptoide/pt/v8engine/interfaces/DisplayableManager;)Lrx/b/b;
    .locals 1

    new-instance v0, Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/StoreTabGridRecyclerFragment$$Lambda$1;

    invoke-direct {v0, p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/StoreTabGridRecyclerFragment$$Lambda$1;-><init>(Lcm/aptoide/pt/v8engine/interfaces/DisplayableManager;)V

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/Object;)V
    .locals 1
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/StoreTabGridRecyclerFragment$$Lambda$1;->arg$1:Lcm/aptoide/pt/v8engine/interfaces/DisplayableManager;

    check-cast p1, Ljava/util/List;

    invoke-static {v0, p1}, Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/StoreTabGridRecyclerFragment;->lambda$load$0(Lcm/aptoide/pt/v8engine/interfaces/DisplayableManager;Ljava/util/List;)V

    return-void
.end method
