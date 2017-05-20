.class final synthetic Lcm/aptoide/pt/v8engine/fragment/implementations/SearchPagerTabFragment$$Lambda$7;
.super Ljava/lang/Object;

# interfaces
.implements Lrx/b/b;


# instance fields
.field private final arg$1:Lcm/aptoide/pt/v8engine/fragment/implementations/SearchPagerTabFragment;

.field private final arg$2:Ljava/util/LinkedList;


# direct methods
.method private constructor <init>(Lcm/aptoide/pt/v8engine/fragment/implementations/SearchPagerTabFragment;Ljava/util/LinkedList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchPagerTabFragment$$Lambda$7;->arg$1:Lcm/aptoide/pt/v8engine/fragment/implementations/SearchPagerTabFragment;

    iput-object p2, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchPagerTabFragment$$Lambda$7;->arg$2:Ljava/util/LinkedList;

    return-void
.end method

.method public static lambdaFactory$(Lcm/aptoide/pt/v8engine/fragment/implementations/SearchPagerTabFragment;Ljava/util/LinkedList;)Lrx/b/b;
    .locals 1

    new-instance v0, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchPagerTabFragment$$Lambda$7;

    invoke-direct {v0, p0, p1}, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchPagerTabFragment$$Lambda$7;-><init>(Lcm/aptoide/pt/v8engine/fragment/implementations/SearchPagerTabFragment;Ljava/util/LinkedList;)V

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/Object;)V
    .locals 2
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchPagerTabFragment$$Lambda$7;->arg$1:Lcm/aptoide/pt/v8engine/fragment/implementations/SearchPagerTabFragment;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchPagerTabFragment$$Lambda$7;->arg$2:Ljava/util/LinkedList;

    check-cast p1, Lcm/aptoide/pt/model/v7/ListSearchApps$SearchAppsApp;

    invoke-virtual {v0, v1, p1}, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchPagerTabFragment;->lambda$null$4(Ljava/util/LinkedList;Lcm/aptoide/pt/model/v7/ListSearchApps$SearchAppsApp;)V

    return-void
.end method
