.class final synthetic Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/CardWidget$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Lrx/b/b;


# instance fields
.field private final arg$1:Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/CardWidget;

.field private final arg$2:Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/CardDisplayable;


# direct methods
.method private constructor <init>(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/CardWidget;Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/CardDisplayable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/CardWidget$$Lambda$1;->arg$1:Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/CardWidget;

    iput-object p2, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/CardWidget$$Lambda$1;->arg$2:Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/CardDisplayable;

    return-void
.end method

.method public static lambdaFactory$(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/CardWidget;Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/CardDisplayable;)Lrx/b/b;
    .locals 1

    new-instance v0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/CardWidget$$Lambda$1;

    invoke-direct {v0, p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/CardWidget$$Lambda$1;-><init>(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/CardWidget;Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/CardDisplayable;)V

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/Object;)V
    .locals 2
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/CardWidget$$Lambda$1;->arg$1:Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/CardWidget;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/CardWidget$$Lambda$1;->arg$2:Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/CardDisplayable;

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {v0, v1, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/CardWidget;->lambda$bindView$0(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/CardDisplayable;Ljava/lang/Void;)V

    return-void
.end method
