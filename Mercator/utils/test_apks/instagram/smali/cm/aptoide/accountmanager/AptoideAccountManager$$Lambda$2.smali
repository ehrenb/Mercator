.class final synthetic Lcm/aptoide/accountmanager/AptoideAccountManager$$Lambda$2;
.super Ljava/lang/Object;

# interfaces
.implements Lrx/b/e;


# instance fields
.field private final arg$1:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/accountmanager/AptoideAccountManager$$Lambda$2;->arg$1:Landroid/content/Context;

    return-void
.end method

.method public static lambdaFactory$(Landroid/content/Context;)Lrx/b/e;
    .locals 1

    new-instance v0, Lcm/aptoide/accountmanager/AptoideAccountManager$$Lambda$2;

    invoke-direct {v0, p0}, Lcm/aptoide/accountmanager/AptoideAccountManager$$Lambda$2;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcm/aptoide/accountmanager/AptoideAccountManager$$Lambda$2;->arg$1:Landroid/content/Context;

    check-cast p1, Landroid/content/IntentFilter;

    invoke-static {v0, p1}, Lcm/aptoide/accountmanager/AptoideAccountManager;->lambda$login$3(Landroid/content/Context;Landroid/content/IntentFilter;)Lrx/d;

    move-result-object v0

    return-object v0
.end method
