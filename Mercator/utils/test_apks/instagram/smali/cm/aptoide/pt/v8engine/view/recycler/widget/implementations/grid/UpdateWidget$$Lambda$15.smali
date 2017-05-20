.class final synthetic Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/UpdateWidget$$Lambda$15;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final arg$1:Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/UpdateWidget;

.field private final arg$2:Ljava/lang/String;

.field private final arg$3:Landroid/support/v4/app/u;


# direct methods
.method private constructor <init>(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/UpdateWidget;Ljava/lang/String;Landroid/support/v4/app/u;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/UpdateWidget$$Lambda$15;->arg$1:Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/UpdateWidget;

    iput-object p2, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/UpdateWidget$$Lambda$15;->arg$2:Ljava/lang/String;

    iput-object p3, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/UpdateWidget$$Lambda$15;->arg$3:Landroid/support/v4/app/u;

    return-void
.end method

.method public static lambdaFactory$(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/UpdateWidget;Ljava/lang/String;Landroid/support/v4/app/u;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    new-instance v0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/UpdateWidget$$Lambda$15;

    invoke-direct {v0, p0, p1, p2}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/UpdateWidget$$Lambda$15;-><init>(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/UpdateWidget;Ljava/lang/String;Landroid/support/v4/app/u;)V

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/UpdateWidget$$Lambda$15;->arg$1:Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/UpdateWidget;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/UpdateWidget$$Lambda$15;->arg$2:Ljava/lang/String;

    iget-object v2, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/UpdateWidget$$Lambda$15;->arg$3:Landroid/support/v4/app/u;

    invoke-virtual {v0, v1, v2, p1, p2}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/UpdateWidget;->lambda$null$6(Ljava/lang/String;Landroid/support/v4/app/u;Landroid/content/DialogInterface;I)V

    return-void
.end method
