.class final synthetic Lcm/aptoide/pt/v8engine/fragment/implementations/StoreFragment$$Lambda$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/astuetz/PagerSlidingTabStrip$b;


# instance fields
.field private final arg$1:Lcm/aptoide/pt/v8engine/fragment/implementations/StoreFragment;

.field private final arg$2:Lcm/aptoide/pt/v8engine/StorePagerAdapter;


# direct methods
.method private constructor <init>(Lcm/aptoide/pt/v8engine/fragment/implementations/StoreFragment;Lcm/aptoide/pt/v8engine/StorePagerAdapter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/StoreFragment$$Lambda$3;->arg$1:Lcm/aptoide/pt/v8engine/fragment/implementations/StoreFragment;

    iput-object p2, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/StoreFragment$$Lambda$3;->arg$2:Lcm/aptoide/pt/v8engine/StorePagerAdapter;

    return-void
.end method

.method public static lambdaFactory$(Lcm/aptoide/pt/v8engine/fragment/implementations/StoreFragment;Lcm/aptoide/pt/v8engine/StorePagerAdapter;)Lcom/astuetz/PagerSlidingTabStrip$b;
    .locals 1

    new-instance v0, Lcm/aptoide/pt/v8engine/fragment/implementations/StoreFragment$$Lambda$3;

    invoke-direct {v0, p0, p1}, Lcm/aptoide/pt/v8engine/fragment/implementations/StoreFragment$$Lambda$3;-><init>(Lcm/aptoide/pt/v8engine/fragment/implementations/StoreFragment;Lcm/aptoide/pt/v8engine/StorePagerAdapter;)V

    return-object v0
.end method


# virtual methods
.method public onTabReselected(I)V
    .locals 2
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/StoreFragment$$Lambda$3;->arg$1:Lcm/aptoide/pt/v8engine/fragment/implementations/StoreFragment;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/StoreFragment$$Lambda$3;->arg$2:Lcm/aptoide/pt/v8engine/StorePagerAdapter;

    invoke-virtual {v0, v1, p1}, Lcm/aptoide/pt/v8engine/fragment/implementations/StoreFragment;->lambda$setupViewPager$2(Lcm/aptoide/pt/v8engine/StorePagerAdapter;I)V

    return-void
.end method
