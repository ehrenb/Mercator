.class final synthetic Lcm/aptoide/accountmanager/AptoideAccountManager$$Lambda$21;
.super Ljava/lang/Object;

# interfaces
.implements Lrx/b/a;


# instance fields
.field private final arg$1:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/accountmanager/AptoideAccountManager$$Lambda$21;->arg$1:Landroid/content/Context;

    return-void
.end method

.method public static lambdaFactory$(Landroid/content/Context;)Lrx/b/a;
    .locals 1

    new-instance v0, Lcm/aptoide/accountmanager/AptoideAccountManager$$Lambda$21;

    invoke-direct {v0, p0}, Lcm/aptoide/accountmanager/AptoideAccountManager$$Lambda$21;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public call()V
    .locals 1
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcm/aptoide/accountmanager/AptoideAccountManager$$Lambda$21;->arg$1:Landroid/content/Context;

    invoke-static {v0}, Lcm/aptoide/accountmanager/AptoideAccountManager;->lambda$null$1(Landroid/content/Context;)V

    return-void
.end method
