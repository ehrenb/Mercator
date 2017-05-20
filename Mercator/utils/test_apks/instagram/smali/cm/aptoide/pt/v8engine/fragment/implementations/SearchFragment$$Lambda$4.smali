.class final synthetic Lcm/aptoide/pt/v8engine/fragment/implementations/SearchFragment$$Lambda$4;
.super Ljava/lang/Object;

# interfaces
.implements Lrx/b/e;


# instance fields
.field private final arg$1:Lcm/aptoide/pt/v8engine/fragment/implementations/SearchFragment;

.field private final arg$2:Lcm/aptoide/pt/v8engine/analytics/abtesting/ABTest;


# direct methods
.method private constructor <init>(Lcm/aptoide/pt/v8engine/fragment/implementations/SearchFragment;Lcm/aptoide/pt/v8engine/analytics/abtesting/ABTest;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchFragment$$Lambda$4;->arg$1:Lcm/aptoide/pt/v8engine/fragment/implementations/SearchFragment;

    iput-object p2, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchFragment$$Lambda$4;->arg$2:Lcm/aptoide/pt/v8engine/analytics/abtesting/ABTest;

    return-void
.end method

.method public static lambdaFactory$(Lcm/aptoide/pt/v8engine/fragment/implementations/SearchFragment;Lcm/aptoide/pt/v8engine/analytics/abtesting/ABTest;)Lrx/b/e;
    .locals 1

    new-instance v0, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchFragment$$Lambda$4;

    invoke-direct {v0, p0, p1}, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchFragment$$Lambda$4;-><init>(Lcm/aptoide/pt/v8engine/fragment/implementations/SearchFragment;Lcm/aptoide/pt/v8engine/analytics/abtesting/ABTest;)V

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchFragment$$Lambda$4;->arg$1:Lcm/aptoide/pt/v8engine/fragment/implementations/SearchFragment;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchFragment$$Lambda$4;->arg$2:Lcm/aptoide/pt/v8engine/analytics/abtesting/ABTest;

    check-cast p1, Lcom/seatgeek/sixpack/e;

    invoke-virtual {v0, v1, p1}, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchFragment;->lambda$setupAbTest$3(Lcm/aptoide/pt/v8engine/analytics/abtesting/ABTest;Lcom/seatgeek/sixpack/e;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
