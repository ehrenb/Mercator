.class final synthetic Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/CardWidget$$Lambda$9;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final arg$1:Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/CardWidget;

.field private final arg$2:Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/CardDisplayable;

.field private final arg$3:Lcm/aptoide/pt/v8engine/dialog/SharePreviewDialog;

.field private final arg$4:Lrx/j;


# direct methods
.method private constructor <init>(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/CardWidget;Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/CardDisplayable;Lcm/aptoide/pt/v8engine/dialog/SharePreviewDialog;Lrx/j;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/CardWidget$$Lambda$9;->arg$1:Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/CardWidget;

    iput-object p2, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/CardWidget$$Lambda$9;->arg$2:Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/CardDisplayable;

    iput-object p3, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/CardWidget$$Lambda$9;->arg$3:Lcm/aptoide/pt/v8engine/dialog/SharePreviewDialog;

    iput-object p4, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/CardWidget$$Lambda$9;->arg$4:Lrx/j;

    return-void
.end method

.method public static lambdaFactory$(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/CardWidget;Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/CardDisplayable;Lcm/aptoide/pt/v8engine/dialog/SharePreviewDialog;Lrx/j;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    new-instance v0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/CardWidget$$Lambda$9;

    invoke-direct {v0, p0, p1, p2, p3}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/CardWidget$$Lambda$9;-><init>(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/CardWidget;Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/CardDisplayable;Lcm/aptoide/pt/v8engine/dialog/SharePreviewDialog;Lrx/j;)V

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/CardWidget$$Lambda$9;->arg$1:Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/CardWidget;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/CardWidget$$Lambda$9;->arg$2:Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/CardDisplayable;

    iget-object v2, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/CardWidget$$Lambda$9;->arg$3:Lcm/aptoide/pt/v8engine/dialog/SharePreviewDialog;

    iget-object v3, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/CardWidget$$Lambda$9;->arg$4:Lrx/j;

    move-object v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/CardWidget;->lambda$null$6(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/CardDisplayable;Lcm/aptoide/pt/v8engine/dialog/SharePreviewDialog;Lrx/j;Landroid/content/DialogInterface;I)V

    return-void
.end method
