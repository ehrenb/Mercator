.class final synthetic Lcm/aptoide/pt/utils/design/ShowMessage$1$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Lrx/b/a;


# instance fields
.field private final arg$1:Landroid/support/design/widget/Snackbar;


# direct methods
.method private constructor <init>(Landroid/support/design/widget/Snackbar;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/pt/utils/design/ShowMessage$1$$Lambda$1;->arg$1:Landroid/support/design/widget/Snackbar;

    return-void
.end method

.method public static lambdaFactory$(Landroid/support/design/widget/Snackbar;)Lrx/b/a;
    .locals 1

    new-instance v0, Lcm/aptoide/pt/utils/design/ShowMessage$1$$Lambda$1;

    invoke-direct {v0, p0}, Lcm/aptoide/pt/utils/design/ShowMessage$1$$Lambda$1;-><init>(Landroid/support/design/widget/Snackbar;)V

    return-object v0
.end method


# virtual methods
.method public call()V
    .locals 1
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcm/aptoide/pt/utils/design/ShowMessage$1$$Lambda$1;->arg$1:Landroid/support/design/widget/Snackbar;

    invoke-static {v0}, Lcm/aptoide/pt/utils/design/ShowMessage$1;->lambda$call$0(Landroid/support/design/widget/Snackbar;)V

    return-void
.end method
