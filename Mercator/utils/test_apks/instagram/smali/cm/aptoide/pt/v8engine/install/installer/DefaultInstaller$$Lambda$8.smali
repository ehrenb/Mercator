.class final synthetic Lcm/aptoide/pt/v8engine/install/installer/DefaultInstaller$$Lambda$8;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final arg$1:Lcm/aptoide/pt/v8engine/install/installer/DefaultInstaller;

.field private final arg$2:Landroid/content/Context;

.field private final arg$3:Ljava/lang/String;

.field private final arg$4:Landroid/net/Uri;


# direct methods
.method private constructor <init>(Lcm/aptoide/pt/v8engine/install/installer/DefaultInstaller;Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/pt/v8engine/install/installer/DefaultInstaller$$Lambda$8;->arg$1:Lcm/aptoide/pt/v8engine/install/installer/DefaultInstaller;

    iput-object p2, p0, Lcm/aptoide/pt/v8engine/install/installer/DefaultInstaller$$Lambda$8;->arg$2:Landroid/content/Context;

    iput-object p3, p0, Lcm/aptoide/pt/v8engine/install/installer/DefaultInstaller$$Lambda$8;->arg$3:Ljava/lang/String;

    iput-object p4, p0, Lcm/aptoide/pt/v8engine/install/installer/DefaultInstaller$$Lambda$8;->arg$4:Landroid/net/Uri;

    return-void
.end method

.method public static lambdaFactory$(Lcm/aptoide/pt/v8engine/install/installer/DefaultInstaller;Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;)Ljava/util/concurrent/Callable;
    .locals 1

    new-instance v0, Lcm/aptoide/pt/v8engine/install/installer/DefaultInstaller$$Lambda$8;

    invoke-direct {v0, p0, p1, p2, p3}, Lcm/aptoide/pt/v8engine/install/installer/DefaultInstaller$$Lambda$8;-><init>(Lcm/aptoide/pt/v8engine/install/installer/DefaultInstaller;Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;)V

    return-object v0
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 4
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/install/installer/DefaultInstaller$$Lambda$8;->arg$1:Lcm/aptoide/pt/v8engine/install/installer/DefaultInstaller;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/install/installer/DefaultInstaller$$Lambda$8;->arg$2:Landroid/content/Context;

    iget-object v2, p0, Lcm/aptoide/pt/v8engine/install/installer/DefaultInstaller$$Lambda$8;->arg$3:Ljava/lang/String;

    iget-object v3, p0, Lcm/aptoide/pt/v8engine/install/installer/DefaultInstaller$$Lambda$8;->arg$4:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v3}, Lcm/aptoide/pt/v8engine/install/installer/DefaultInstaller;->lambda$uninstall$8(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
