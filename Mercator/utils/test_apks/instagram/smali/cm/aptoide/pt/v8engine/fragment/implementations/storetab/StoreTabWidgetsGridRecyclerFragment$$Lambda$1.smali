.class final synthetic Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/StoreTabWidgetsGridRecyclerFragment$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Lrx/b/e;


# instance fields
.field private final arg$1:Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/StoreTabWidgetsGridRecyclerFragment;

.field private final arg$2:Ljava/lang/String;

.field private final arg$3:Z


# direct methods
.method private constructor <init>(Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/StoreTabWidgetsGridRecyclerFragment;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/StoreTabWidgetsGridRecyclerFragment$$Lambda$1;->arg$1:Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/StoreTabWidgetsGridRecyclerFragment;

    iput-object p2, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/StoreTabWidgetsGridRecyclerFragment$$Lambda$1;->arg$2:Ljava/lang/String;

    iput-boolean p3, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/StoreTabWidgetsGridRecyclerFragment$$Lambda$1;->arg$3:Z

    return-void
.end method

.method public static lambdaFactory$(Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/StoreTabWidgetsGridRecyclerFragment;Ljava/lang/String;Z)Lrx/b/e;
    .locals 1

    new-instance v0, Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/StoreTabWidgetsGridRecyclerFragment$$Lambda$1;

    invoke-direct {v0, p0, p1, p2}, Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/StoreTabWidgetsGridRecyclerFragment$$Lambda$1;-><init>(Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/StoreTabWidgetsGridRecyclerFragment;Ljava/lang/String;Z)V

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/StoreTabWidgetsGridRecyclerFragment$$Lambda$1;->arg$1:Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/StoreTabWidgetsGridRecyclerFragment;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/StoreTabWidgetsGridRecyclerFragment$$Lambda$1;->arg$2:Ljava/lang/String;

    iget-boolean v2, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/StoreTabWidgetsGridRecyclerFragment$$Lambda$1;->arg$3:Z

    check-cast p1, Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;

    invoke-virtual {v0, v1, v2, p1}, Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/StoreTabWidgetsGridRecyclerFragment;->lambda$loadGetStoreWidgets$0(Ljava/lang/String;ZLcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;)Lrx/d;

    move-result-object v0

    return-object v0
.end method
