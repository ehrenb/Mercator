.class final synthetic Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/InstalledAppWidget$$Lambda$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final arg$1:Landroid/app/AlertDialog;


# direct methods
.method private constructor <init>(Landroid/app/AlertDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/InstalledAppWidget$$Lambda$3;->arg$1:Landroid/app/AlertDialog;

    return-void
.end method

.method public static lambdaFactory$(Landroid/app/AlertDialog;)Landroid/view/View$OnClickListener;
    .locals 1

    new-instance v0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/InstalledAppWidget$$Lambda$3;

    invoke-direct {v0, p0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/InstalledAppWidget$$Lambda$3;-><init>(Landroid/app/AlertDialog;)V

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/InstalledAppWidget$$Lambda$3;->arg$1:Landroid/app/AlertDialog;

    invoke-static {v0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/InstalledAppWidget;->lambda$showRateDialog$2(Landroid/app/AlertDialog;Landroid/view/View;)V

    return-void
.end method
