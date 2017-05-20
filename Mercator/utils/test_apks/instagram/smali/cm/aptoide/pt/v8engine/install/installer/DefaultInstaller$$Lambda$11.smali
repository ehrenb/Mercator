.class final synthetic Lcm/aptoide/pt/v8engine/install/installer/DefaultInstaller$$Lambda$11;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final arg$1:Lcm/aptoide/pt/v8engine/install/installer/DefaultInstaller;

.field private final arg$2:Landroid/content/Context;

.field private final arg$3:Ljava/io/File;


# direct methods
.method private constructor <init>(Lcm/aptoide/pt/v8engine/install/installer/DefaultInstaller;Landroid/content/Context;Ljava/io/File;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/pt/v8engine/install/installer/DefaultInstaller$$Lambda$11;->arg$1:Lcm/aptoide/pt/v8engine/install/installer/DefaultInstaller;

    iput-object p2, p0, Lcm/aptoide/pt/v8engine/install/installer/DefaultInstaller$$Lambda$11;->arg$2:Landroid/content/Context;

    iput-object p3, p0, Lcm/aptoide/pt/v8engine/install/installer/DefaultInstaller$$Lambda$11;->arg$3:Ljava/io/File;

    return-void
.end method

.method public static lambdaFactory$(Lcm/aptoide/pt/v8engine/install/installer/DefaultInstaller;Landroid/content/Context;Ljava/io/File;)Ljava/util/concurrent/Callable;
    .locals 1

    new-instance v0, Lcm/aptoide/pt/v8engine/install/installer/DefaultInstaller$$Lambda$11;

    invoke-direct {v0, p0, p1, p2}, Lcm/aptoide/pt/v8engine/install/installer/DefaultInstaller$$Lambda$11;-><init>(Lcm/aptoide/pt/v8engine/install/installer/DefaultInstaller;Landroid/content/Context;Ljava/io/File;)V

    return-object v0
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 3
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/install/installer/DefaultInstaller$$Lambda$11;->arg$1:Lcm/aptoide/pt/v8engine/install/installer/DefaultInstaller;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/install/installer/DefaultInstaller$$Lambda$11;->arg$2:Landroid/content/Context;

    iget-object v2, p0, Lcm/aptoide/pt/v8engine/install/installer/DefaultInstaller$$Lambda$11;->arg$3:Ljava/io/File;

    invoke-virtual {v0, v1, v2}, Lcm/aptoide/pt/v8engine/install/installer/DefaultInstaller;->lambda$defaultInstall$13(Landroid/content/Context;Ljava/io/File;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
