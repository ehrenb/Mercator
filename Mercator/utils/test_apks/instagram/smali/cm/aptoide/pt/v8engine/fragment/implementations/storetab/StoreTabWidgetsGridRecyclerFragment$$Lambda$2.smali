.class final synthetic Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/StoreTabWidgetsGridRecyclerFragment$$Lambda$2;
.super Ljava/lang/Object;

# interfaces
.implements Lrx/b/e;


# instance fields
.field private final arg$1:Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/StoreTabWidgetsGridRecyclerFragment;

.field private final arg$2:Lcm/aptoide/pt/model/v7/GetStoreWidgets;


# direct methods
.method private constructor <init>(Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/StoreTabWidgetsGridRecyclerFragment;Lcm/aptoide/pt/model/v7/GetStoreWidgets;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/StoreTabWidgetsGridRecyclerFragment$$Lambda$2;->arg$1:Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/StoreTabWidgetsGridRecyclerFragment;

    iput-object p2, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/StoreTabWidgetsGridRecyclerFragment$$Lambda$2;->arg$2:Lcm/aptoide/pt/model/v7/GetStoreWidgets;

    return-void
.end method

.method public static lambdaFactory$(Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/StoreTabWidgetsGridRecyclerFragment;Lcm/aptoide/pt/model/v7/GetStoreWidgets;)Lrx/b/e;
    .locals 1

    new-instance v0, Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/StoreTabWidgetsGridRecyclerFragment$$Lambda$2;

    invoke-direct {v0, p0, p1}, Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/StoreTabWidgetsGridRecyclerFragment$$Lambda$2;-><init>(Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/StoreTabWidgetsGridRecyclerFragment;Lcm/aptoide/pt/model/v7/GetStoreWidgets;)V

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/StoreTabWidgetsGridRecyclerFragment$$Lambda$2;->arg$1:Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/StoreTabWidgetsGridRecyclerFragment;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/StoreTabWidgetsGridRecyclerFragment$$Lambda$2;->arg$2:Lcm/aptoide/pt/model/v7/GetStoreWidgets;

    check-cast p1, Ljava/util/List;

    invoke-virtual {v0, v1, p1}, Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/StoreTabWidgetsGridRecyclerFragment;->lambda$loadGetStoreWidgets$1(Lcm/aptoide/pt/model/v7/GetStoreWidgets;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
