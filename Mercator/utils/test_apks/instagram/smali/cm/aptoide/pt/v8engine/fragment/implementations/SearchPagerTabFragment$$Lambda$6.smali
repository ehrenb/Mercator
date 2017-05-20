.class final synthetic Lcm/aptoide/pt/v8engine/fragment/implementations/SearchPagerTabFragment$$Lambda$6;
.super Ljava/lang/Object;

# interfaces
.implements Lrx/b/e;


# instance fields
.field private final arg$1:Lcm/aptoide/pt/v8engine/fragment/implementations/SearchPagerTabFragment;


# direct methods
.method private constructor <init>(Lcm/aptoide/pt/v8engine/fragment/implementations/SearchPagerTabFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchPagerTabFragment$$Lambda$6;->arg$1:Lcm/aptoide/pt/v8engine/fragment/implementations/SearchPagerTabFragment;

    return-void
.end method

.method public static lambdaFactory$(Lcm/aptoide/pt/v8engine/fragment/implementations/SearchPagerTabFragment;)Lrx/b/e;
    .locals 1

    new-instance v0, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchPagerTabFragment$$Lambda$6;

    invoke-direct {v0, p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchPagerTabFragment$$Lambda$6;-><init>(Lcm/aptoide/pt/v8engine/fragment/implementations/SearchPagerTabFragment;)V

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchPagerTabFragment$$Lambda$6;->arg$1:Lcm/aptoide/pt/v8engine/fragment/implementations/SearchPagerTabFragment;

    check-cast p1, Lcm/aptoide/pt/model/v7/ListSearchApps$SearchAppsApp;

    invoke-virtual {v0, p1}, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchPagerTabFragment;->lambda$null$0(Lcm/aptoide/pt/model/v7/ListSearchApps$SearchAppsApp;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
