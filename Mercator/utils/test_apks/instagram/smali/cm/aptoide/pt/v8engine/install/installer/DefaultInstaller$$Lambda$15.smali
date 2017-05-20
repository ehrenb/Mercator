.class final synthetic Lcm/aptoide/pt/v8engine/install/installer/DefaultInstaller$$Lambda$15;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final arg$1:I


# direct methods
.method private constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcm/aptoide/pt/v8engine/install/installer/DefaultInstaller$$Lambda$15;->arg$1:I

    return-void
.end method

.method public static lambdaFactory$(I)Ljava/util/concurrent/Callable;
    .locals 1

    new-instance v0, Lcm/aptoide/pt/v8engine/install/installer/DefaultInstaller$$Lambda$15;

    invoke-direct {v0, p0}, Lcm/aptoide/pt/v8engine/install/installer/DefaultInstaller$$Lambda$15;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 1
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget v0, p0, Lcm/aptoide/pt/v8engine/install/installer/DefaultInstaller$$Lambda$15;->arg$1:I

    invoke-static {v0}, Lcm/aptoide/pt/v8engine/install/installer/DefaultInstaller;->lambda$null$10(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
