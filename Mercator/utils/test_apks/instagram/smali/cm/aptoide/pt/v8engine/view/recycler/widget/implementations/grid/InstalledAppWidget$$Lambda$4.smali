.class final synthetic Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/InstalledAppWidget$$Lambda$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final arg$1:Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/InstalledAppWidget;

.field private final arg$2:Landroid/support/design/widget/TextInputLayout;

.field private final arg$3:Landroid/support/design/widget/TextInputLayout;

.field private final arg$4:Landroid/support/v7/widget/AppCompatRatingBar;

.field private final arg$5:Landroid/app/AlertDialog;


# direct methods
.method private constructor <init>(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/InstalledAppWidget;Landroid/support/design/widget/TextInputLayout;Landroid/support/design/widget/TextInputLayout;Landroid/support/v7/widget/AppCompatRatingBar;Landroid/app/AlertDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/InstalledAppWidget$$Lambda$4;->arg$1:Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/InstalledAppWidget;

    iput-object p2, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/InstalledAppWidget$$Lambda$4;->arg$2:Landroid/support/design/widget/TextInputLayout;

    iput-object p3, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/InstalledAppWidget$$Lambda$4;->arg$3:Landroid/support/design/widget/TextInputLayout;

    iput-object p4, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/InstalledAppWidget$$Lambda$4;->arg$4:Landroid/support/v7/widget/AppCompatRatingBar;

    iput-object p5, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/InstalledAppWidget$$Lambda$4;->arg$5:Landroid/app/AlertDialog;

    return-void
.end method

.method public static lambdaFactory$(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/InstalledAppWidget;Landroid/support/design/widget/TextInputLayout;Landroid/support/design/widget/TextInputLayout;Landroid/support/v7/widget/AppCompatRatingBar;Landroid/app/AlertDialog;)Landroid/view/View$OnClickListener;
    .locals 6

    new-instance v0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/InstalledAppWidget$$Lambda$4;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/InstalledAppWidget$$Lambda$4;-><init>(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/InstalledAppWidget;Landroid/support/design/widget/TextInputLayout;Landroid/support/design/widget/TextInputLayout;Landroid/support/v7/widget/AppCompatRatingBar;Landroid/app/AlertDialog;)V

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/InstalledAppWidget$$Lambda$4;->arg$1:Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/InstalledAppWidget;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/InstalledAppWidget$$Lambda$4;->arg$2:Landroid/support/design/widget/TextInputLayout;

    iget-object v2, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/InstalledAppWidget$$Lambda$4;->arg$3:Landroid/support/design/widget/TextInputLayout;

    iget-object v3, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/InstalledAppWidget$$Lambda$4;->arg$4:Landroid/support/v7/widget/AppCompatRatingBar;

    iget-object v4, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/InstalledAppWidget$$Lambda$4;->arg$5:Landroid/app/AlertDialog;

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/InstalledAppWidget;->lambda$showRateDialog$5(Landroid/support/design/widget/TextInputLayout;Landroid/support/design/widget/TextInputLayout;Landroid/support/v7/widget/AppCompatRatingBar;Landroid/app/AlertDialog;Landroid/view/View;)V

    return-void
.end method
