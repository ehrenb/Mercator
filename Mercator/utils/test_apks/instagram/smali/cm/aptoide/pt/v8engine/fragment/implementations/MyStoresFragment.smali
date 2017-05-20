.class public Lcm/aptoide/pt/v8engine/fragment/implementations/MyStoresFragment;
.super Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/GetStoreWidgetsFragment;
.source "MyStoresFragment.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private subscription:Lrx/k;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcm/aptoide/pt/v8engine/fragment/implementations/MyStoresFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcm/aptoide/pt/v8engine/fragment/implementations/MyStoresFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/GetStoreWidgetsFragment;-><init>()V

    return-void
.end method

.method public static newInstance(Lcm/aptoide/pt/model/v7/Event;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcm/aptoide/pt/v8engine/fragment/implementations/MyStoresFragment;
    .locals 2

    .prologue
    .line 22
    const/4 v0, 0x0

    invoke-static {p0, v0, p2, p3}, Lcm/aptoide/pt/v8engine/fragment/implementations/MyStoresFragment;->buildBundle(Lcm/aptoide/pt/model/v7/Event;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 23
    new-instance v1, Lcm/aptoide/pt/v8engine/fragment/implementations/MyStoresFragment;

    invoke-direct {v1}, Lcm/aptoide/pt/v8engine/fragment/implementations/MyStoresFragment;-><init>()V

    .line 24
    invoke-virtual {v1, v0}, Lcm/aptoide/pt/v8engine/fragment/implementations/MyStoresFragment;->setArguments(Landroid/os/Bundle;)V

    .line 25
    return-object v1
.end method


# virtual methods
.method synthetic lambda$load$0(Ljava/util/List;)V
    .locals 3

    .prologue
    .line 36
    sget-object v0, Lcm/aptoide/pt/v8engine/fragment/implementations/MyStoresFragment;->TAG:Ljava/lang/String;

    const-string v1, "Store database changed, reloading..."

    invoke-static {v0, v1}, Lcm/aptoide/pt/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-super {p0, v0, v1, v2}, Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/GetStoreWidgetsFragment;->load(ZZLandroid/os/Bundle;)V

    .line 38
    return-void
.end method

.method public load(ZZLandroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 29
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/MyStoresFragment;->subscription:Lrx/k;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/MyStoresFragment;->subscription:Lrx/k;

    invoke-interface {v0}, Lrx/k;->isUnsubscribed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 30
    :cond_0
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/MyStoresFragment;->storeRepository:Lcm/aptoide/pt/v8engine/repository/StoreRepository;

    invoke-virtual {v0}, Lcm/aptoide/pt/v8engine/repository/StoreRepository;->getAll()Lrx/d;

    move-result-object v0

    .line 31
    invoke-virtual {v0}, Lrx/d;->g()Lrx/d;

    move-result-object v0

    .line 32
    invoke-static {}, Lrx/a/b/a;->a()Lrx/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->a(Lrx/g;)Lrx/d;

    move-result-object v0

    const/4 v1, 0x1

    .line 33
    invoke-virtual {v0, v1}, Lrx/d;->a(I)Lrx/d;

    move-result-object v0

    sget-object v1, Lcm/aptoide/pt/v8engine/view/View$LifecycleEvent;->DESTROY_VIEW:Lcm/aptoide/pt/v8engine/view/View$LifecycleEvent;

    .line 34
    invoke-virtual {p0, v1}, Lcm/aptoide/pt/v8engine/fragment/implementations/MyStoresFragment;->bindUntilEvent(Lcm/aptoide/pt/v8engine/view/View$LifecycleEvent;)Lcom/trello/rxlifecycle/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->a(Lrx/d$c;)Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/MyStoresFragment$$Lambda$1;->lambdaFactory$(Lcm/aptoide/pt/v8engine/fragment/implementations/MyStoresFragment;)Lrx/b/b;

    move-result-object v1

    .line 35
    invoke-virtual {v0, v1}, Lrx/d;->d(Lrx/b/b;)Lrx/k;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/MyStoresFragment;->subscription:Lrx/k;

    .line 40
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/GetStoreWidgetsFragment;->load(ZZLandroid/os/Bundle;)V

    .line 41
    return-void
.end method
