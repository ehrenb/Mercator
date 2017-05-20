.class final synthetic Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/AppUpdateWidget$$Lambda$7;
.super Ljava/lang/Object;

# interfaces
.implements Lrx/b/e;


# instance fields
.field private final arg$1:Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/AppUpdateWidget;

.field private final arg$2:Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/AppUpdateDisplayable;


# direct methods
.method private constructor <init>(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/AppUpdateWidget;Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/AppUpdateDisplayable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/AppUpdateWidget$$Lambda$7;->arg$1:Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/AppUpdateWidget;

    iput-object p2, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/AppUpdateWidget$$Lambda$7;->arg$2:Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/AppUpdateDisplayable;

    return-void
.end method

.method public static lambdaFactory$(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/AppUpdateWidget;Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/AppUpdateDisplayable;)Lrx/b/e;
    .locals 1

    new-instance v0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/AppUpdateWidget$$Lambda$7;

    invoke-direct {v0, p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/AppUpdateWidget$$Lambda$7;-><init>(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/AppUpdateWidget;Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/AppUpdateDisplayable;)V

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/AppUpdateWidget$$Lambda$7;->arg$1:Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/AppUpdateWidget;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/AppUpdateWidget$$Lambda$7;->arg$2:Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/AppUpdateDisplayable;

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {v0, v1, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/AppUpdateWidget;->lambda$null$4(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/AppUpdateDisplayable;Ljava/lang/Throwable;)Lrx/d;

    move-result-object v0

    return-object v0
.end method
