.class final synthetic Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/VideoWidget$$Lambda$2;
.super Ljava/lang/Object;

# interfaces
.implements Lrx/b/b;


# instance fields
.field private final arg$1:Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/VideoWidget;

.field private final arg$2:Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/VideoDisplayable;

.field private final arg$3:Landroid/support/v4/app/u;


# direct methods
.method private constructor <init>(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/VideoWidget;Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/VideoDisplayable;Landroid/support/v4/app/u;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/VideoWidget$$Lambda$2;->arg$1:Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/VideoWidget;

    iput-object p2, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/VideoWidget$$Lambda$2;->arg$2:Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/VideoDisplayable;

    iput-object p3, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/VideoWidget$$Lambda$2;->arg$3:Landroid/support/v4/app/u;

    return-void
.end method

.method public static lambdaFactory$(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/VideoWidget;Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/VideoDisplayable;Landroid/support/v4/app/u;)Lrx/b/b;
    .locals 1

    new-instance v0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/VideoWidget$$Lambda$2;

    invoke-direct {v0, p0, p1, p2}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/VideoWidget$$Lambda$2;-><init>(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/VideoWidget;Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/VideoDisplayable;Landroid/support/v4/app/u;)V

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/Object;)V
    .locals 3
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/VideoWidget$$Lambda$2;->arg$1:Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/VideoWidget;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/VideoWidget$$Lambda$2;->arg$2:Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/VideoDisplayable;

    iget-object v2, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/VideoWidget$$Lambda$2;->arg$3:Landroid/support/v4/app/u;

    check-cast p1, Ljava/util/List;

    invoke-virtual {v0, v1, v2, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/VideoWidget;->lambda$bindView$1(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/VideoDisplayable;Landroid/support/v4/app/u;Ljava/util/List;)V

    return-void
.end method
