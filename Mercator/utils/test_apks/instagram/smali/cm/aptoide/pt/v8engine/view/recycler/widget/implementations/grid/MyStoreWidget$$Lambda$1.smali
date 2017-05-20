.class final synthetic Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/MyStoreWidget$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Lrx/b/b;


# instance fields
.field private final arg$1:Landroid/support/v4/app/u;

.field private final arg$2:Lcm/aptoide/pt/model/v7/store/Store;

.field private final arg$3:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/support/v4/app/u;Lcm/aptoide/pt/model/v7/store/Store;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/MyStoreWidget$$Lambda$1;->arg$1:Landroid/support/v4/app/u;

    iput-object p2, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/MyStoreWidget$$Lambda$1;->arg$2:Lcm/aptoide/pt/model/v7/store/Store;

    iput-object p3, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/MyStoreWidget$$Lambda$1;->arg$3:Ljava/lang/String;

    return-void
.end method

.method public static lambdaFactory$(Landroid/support/v4/app/u;Lcm/aptoide/pt/model/v7/store/Store;Ljava/lang/String;)Lrx/b/b;
    .locals 1

    new-instance v0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/MyStoreWidget$$Lambda$1;

    invoke-direct {v0, p0, p1, p2}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/MyStoreWidget$$Lambda$1;-><init>(Landroid/support/v4/app/u;Lcm/aptoide/pt/model/v7/store/Store;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/Object;)V
    .locals 3
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/MyStoreWidget$$Lambda$1;->arg$1:Landroid/support/v4/app/u;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/MyStoreWidget$$Lambda$1;->arg$2:Lcm/aptoide/pt/model/v7/store/Store;

    iget-object v2, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/MyStoreWidget$$Lambda$1;->arg$3:Ljava/lang/String;

    check-cast p1, Ljava/lang/Void;

    invoke-static {v0, v1, v2, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/MyStoreWidget;->lambda$bindView$0(Landroid/support/v4/app/u;Lcm/aptoide/pt/model/v7/store/Store;Ljava/lang/String;Ljava/lang/Void;)V

    return-void
.end method
