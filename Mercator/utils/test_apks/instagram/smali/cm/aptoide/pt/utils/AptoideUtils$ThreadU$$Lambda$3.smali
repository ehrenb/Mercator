.class final synthetic Lcm/aptoide/pt/utils/AptoideUtils$ThreadU$$Lambda$3;
.super Ljava/lang/Object;

# interfaces
.implements Lrx/b/b;


# instance fields
.field private final arg$1:Ljava/lang/Runnable;


# direct methods
.method private constructor <init>(Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/pt/utils/AptoideUtils$ThreadU$$Lambda$3;->arg$1:Ljava/lang/Runnable;

    return-void
.end method

.method public static lambdaFactory$(Ljava/lang/Runnable;)Lrx/b/b;
    .locals 1

    new-instance v0, Lcm/aptoide/pt/utils/AptoideUtils$ThreadU$$Lambda$3;

    invoke-direct {v0, p0}, Lcm/aptoide/pt/utils/AptoideUtils$ThreadU$$Lambda$3;-><init>(Ljava/lang/Runnable;)V

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/Object;)V
    .locals 1
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcm/aptoide/pt/utils/AptoideUtils$ThreadU$$Lambda$3;->arg$1:Ljava/lang/Runnable;

    invoke-static {v0, p1}, Lcm/aptoide/pt/utils/AptoideUtils$ThreadU;->lambda$runOnUiThread$2(Ljava/lang/Runnable;Ljava/lang/Object;)V

    return-void
.end method
