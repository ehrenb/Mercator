.class final synthetic Lcm/aptoide/accountmanager/AptoideAccountManager$$Lambda$20;
.super Ljava/lang/Object;

# interfaces
.implements Lrx/b/b;


# instance fields
.field private final arg$1:Landroid/app/ProgressDialog;


# direct methods
.method private constructor <init>(Landroid/app/ProgressDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/accountmanager/AptoideAccountManager$$Lambda$20;->arg$1:Landroid/app/ProgressDialog;

    return-void
.end method

.method public static lambdaFactory$(Landroid/app/ProgressDialog;)Lrx/b/b;
    .locals 1

    new-instance v0, Lcm/aptoide/accountmanager/AptoideAccountManager$$Lambda$20;

    invoke-direct {v0, p0}, Lcm/aptoide/accountmanager/AptoideAccountManager$$Lambda$20;-><init>(Landroid/app/ProgressDialog;)V

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/Object;)V
    .locals 1
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcm/aptoide/accountmanager/AptoideAccountManager$$Lambda$20;->arg$1:Landroid/app/ProgressDialog;

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {v0, p1}, Lcm/aptoide/accountmanager/AptoideAccountManager;->lambda$null$5(Landroid/app/ProgressDialog;Ljava/lang/Throwable;)V

    return-void
.end method
