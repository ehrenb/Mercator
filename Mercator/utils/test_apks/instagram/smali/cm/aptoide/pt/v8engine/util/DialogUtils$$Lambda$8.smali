.class final synthetic Lcm/aptoide/pt/v8engine/util/DialogUtils$$Lambda$8;
.super Ljava/lang/Object;

# interfaces
.implements Lrx/b/a;


# instance fields
.field private final arg$1:Landroid/app/AlertDialog;


# direct methods
.method private constructor <init>(Landroid/app/AlertDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/pt/v8engine/util/DialogUtils$$Lambda$8;->arg$1:Landroid/app/AlertDialog;

    return-void
.end method

.method public static lambdaFactory$(Landroid/app/AlertDialog;)Lrx/b/a;
    .locals 1

    new-instance v0, Lcm/aptoide/pt/v8engine/util/DialogUtils$$Lambda$8;

    invoke-direct {v0, p0}, Lcm/aptoide/pt/v8engine/util/DialogUtils$$Lambda$8;-><init>(Landroid/app/AlertDialog;)V

    return-object v0
.end method


# virtual methods
.method public call()V
    .locals 1
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/util/DialogUtils$$Lambda$8;->arg$1:Landroid/app/AlertDialog;

    invoke-static {v0}, Lcm/aptoide/pt/v8engine/util/DialogUtils;->lambda$null$1(Landroid/app/AlertDialog;)V

    return-void
.end method
