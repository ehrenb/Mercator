.class final synthetic Lcm/aptoide/pt/v8engine/install/installer/DefaultInstaller$$Lambda$7;
.super Ljava/lang/Object;

# interfaces
.implements Lrx/b/e;


# instance fields
.field private final arg$1:Lcm/aptoide/pt/v8engine/install/installer/DefaultInstaller;

.field private final arg$2:Landroid/content/Context;

.field private final arg$3:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcm/aptoide/pt/v8engine/install/installer/DefaultInstaller;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/pt/v8engine/install/installer/DefaultInstaller$$Lambda$7;->arg$1:Lcm/aptoide/pt/v8engine/install/installer/DefaultInstaller;

    iput-object p2, p0, Lcm/aptoide/pt/v8engine/install/installer/DefaultInstaller$$Lambda$7;->arg$2:Landroid/content/Context;

    iput-object p3, p0, Lcm/aptoide/pt/v8engine/install/installer/DefaultInstaller$$Lambda$7;->arg$3:Ljava/lang/String;

    return-void
.end method

.method public static lambdaFactory$(Lcm/aptoide/pt/v8engine/install/installer/DefaultInstaller;Landroid/content/Context;Ljava/lang/String;)Lrx/b/e;
    .locals 1

    new-instance v0, Lcm/aptoide/pt/v8engine/install/installer/DefaultInstaller$$Lambda$7;

    invoke-direct {v0, p0, p1, p2}, Lcm/aptoide/pt/v8engine/install/installer/DefaultInstaller$$Lambda$7;-><init>(Lcm/aptoide/pt/v8engine/install/installer/DefaultInstaller;Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/install/installer/DefaultInstaller$$Lambda$7;->arg$1:Lcm/aptoide/pt/v8engine/install/installer/DefaultInstaller;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/install/installer/DefaultInstaller$$Lambda$7;->arg$2:Landroid/content/Context;

    iget-object v2, p0, Lcm/aptoide/pt/v8engine/install/installer/DefaultInstaller$$Lambda$7;->arg$3:Ljava/lang/String;

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {v0, v1, v2, p1}, Lcm/aptoide/pt/v8engine/install/installer/DefaultInstaller;->lambda$downgrade$7(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Void;)Lrx/d;

    move-result-object v0

    return-object v0
.end method
