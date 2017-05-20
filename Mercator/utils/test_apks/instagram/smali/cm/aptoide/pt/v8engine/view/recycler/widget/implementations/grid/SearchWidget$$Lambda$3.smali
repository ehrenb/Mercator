.class final synthetic Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/SearchWidget$$Lambda$3;
.super Ljava/lang/Object;

# interfaces
.implements Lrx/b/b;


# instance fields
.field private final arg$1:Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/SearchWidget;

.field private final arg$2:Lrx/b/a;

.field private final arg$3:Lcm/aptoide/pt/model/v7/ListSearchApps$SearchAppsApp;


# direct methods
.method private constructor <init>(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/SearchWidget;Lrx/b/a;Lcm/aptoide/pt/model/v7/ListSearchApps$SearchAppsApp;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/SearchWidget$$Lambda$3;->arg$1:Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/SearchWidget;

    iput-object p2, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/SearchWidget$$Lambda$3;->arg$2:Lrx/b/a;

    iput-object p3, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/SearchWidget$$Lambda$3;->arg$3:Lcm/aptoide/pt/model/v7/ListSearchApps$SearchAppsApp;

    return-void
.end method

.method public static lambdaFactory$(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/SearchWidget;Lrx/b/a;Lcm/aptoide/pt/model/v7/ListSearchApps$SearchAppsApp;)Lrx/b/b;
    .locals 1

    new-instance v0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/SearchWidget$$Lambda$3;

    invoke-direct {v0, p0, p1, p2}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/SearchWidget$$Lambda$3;-><init>(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/SearchWidget;Lrx/b/a;Lcm/aptoide/pt/model/v7/ListSearchApps$SearchAppsApp;)V

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/Object;)V
    .locals 3
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/SearchWidget$$Lambda$3;->arg$1:Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/SearchWidget;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/SearchWidget$$Lambda$3;->arg$2:Lrx/b/a;

    iget-object v2, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/SearchWidget$$Lambda$3;->arg$3:Lcm/aptoide/pt/model/v7/ListSearchApps$SearchAppsApp;

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {v0, v1, v2, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/SearchWidget;->lambda$handleClickToOpenStore$2(Lrx/b/a;Lcm/aptoide/pt/model/v7/ListSearchApps$SearchAppsApp;Ljava/lang/Void;)V

    return-void
.end method
