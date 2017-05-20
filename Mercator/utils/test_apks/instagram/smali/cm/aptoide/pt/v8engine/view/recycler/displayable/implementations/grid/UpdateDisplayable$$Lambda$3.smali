.class final synthetic Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/UpdateDisplayable$$Lambda$3;
.super Ljava/lang/Object;

# interfaces
.implements Lrx/b/e;


# instance fields
.field private final arg$1:Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/UpdateDisplayable;

.field private final arg$2:Landroid/content/Context;


# direct methods
.method private constructor <init>(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/UpdateDisplayable;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/UpdateDisplayable$$Lambda$3;->arg$1:Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/UpdateDisplayable;

    iput-object p2, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/UpdateDisplayable$$Lambda$3;->arg$2:Landroid/content/Context;

    return-void
.end method

.method public static lambdaFactory$(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/UpdateDisplayable;Landroid/content/Context;)Lrx/b/e;
    .locals 1

    new-instance v0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/UpdateDisplayable$$Lambda$3;

    invoke-direct {v0, p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/UpdateDisplayable$$Lambda$3;-><init>(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/UpdateDisplayable;Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/UpdateDisplayable$$Lambda$3;->arg$1:Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/UpdateDisplayable;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/UpdateDisplayable$$Lambda$3;->arg$2:Landroid/content/Context;

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {v0, v1, p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/UpdateDisplayable;->lambda$downloadAndInstall$5(Landroid/content/Context;Ljava/lang/Void;)Lrx/d;

    move-result-object v0

    return-object v0
.end method
