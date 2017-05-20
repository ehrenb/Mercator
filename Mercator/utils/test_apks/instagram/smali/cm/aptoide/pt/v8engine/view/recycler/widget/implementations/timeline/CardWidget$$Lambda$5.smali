.class final synthetic Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/CardWidget$$Lambda$5;
.super Ljava/lang/Object;

# interfaces
.implements Lrx/d$a;


# instance fields
.field private final arg$1:Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/CardWidget;

.field private final arg$2:Landroid/support/v7/a/d$a;

.field private final arg$3:Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/CardDisplayable;

.field private final arg$4:Lcm/aptoide/pt/v8engine/dialog/SharePreviewDialog;


# direct methods
.method private constructor <init>(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/CardWidget;Landroid/support/v7/a/d$a;Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/CardDisplayable;Lcm/aptoide/pt/v8engine/dialog/SharePreviewDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/CardWidget$$Lambda$5;->arg$1:Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/CardWidget;

    iput-object p2, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/CardWidget$$Lambda$5;->arg$2:Landroid/support/v7/a/d$a;

    iput-object p3, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/CardWidget$$Lambda$5;->arg$3:Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/CardDisplayable;

    iput-object p4, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/CardWidget$$Lambda$5;->arg$4:Lcm/aptoide/pt/v8engine/dialog/SharePreviewDialog;

    return-void
.end method

.method public static lambdaFactory$(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/CardWidget;Landroid/support/v7/a/d$a;Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/CardDisplayable;Lcm/aptoide/pt/v8engine/dialog/SharePreviewDialog;)Lrx/d$a;
    .locals 1

    new-instance v0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/CardWidget$$Lambda$5;

    invoke-direct {v0, p0, p1, p2, p3}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/CardWidget$$Lambda$5;-><init>(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/CardWidget;Landroid/support/v7/a/d$a;Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/CardDisplayable;Lcm/aptoide/pt/v8engine/dialog/SharePreviewDialog;)V

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/Object;)V
    .locals 4
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/CardWidget$$Lambda$5;->arg$1:Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/CardWidget;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/CardWidget$$Lambda$5;->arg$2:Landroid/support/v7/a/d$a;

    iget-object v2, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/CardWidget$$Lambda$5;->arg$3:Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/CardDisplayable;

    iget-object v3, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/CardWidget$$Lambda$5;->arg$4:Lcm/aptoide/pt/v8engine/dialog/SharePreviewDialog;

    check-cast p1, Lrx/j;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/CardWidget;->lambda$shareCard$8(Landroid/support/v7/a/d$a;Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/CardDisplayable;Lcm/aptoide/pt/v8engine/dialog/SharePreviewDialog;Lrx/j;)V

    return-void
.end method
