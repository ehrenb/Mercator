.class final synthetic Lcm/aptoide/pt/v8engine/InstallManager$$Lambda$15;
.super Ljava/lang/Object;

# interfaces
.implements Lrx/b/a;


# instance fields
.field private final arg$1:Lcm/aptoide/pt/v8engine/InstallManager;

.field private final arg$2:Landroid/content/Context;

.field private final arg$3:Lcm/aptoide/pt/v8engine/Progress;


# direct methods
.method private constructor <init>(Lcm/aptoide/pt/v8engine/InstallManager;Landroid/content/Context;Lcm/aptoide/pt/v8engine/Progress;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/pt/v8engine/InstallManager$$Lambda$15;->arg$1:Lcm/aptoide/pt/v8engine/InstallManager;

    iput-object p2, p0, Lcm/aptoide/pt/v8engine/InstallManager$$Lambda$15;->arg$2:Landroid/content/Context;

    iput-object p3, p0, Lcm/aptoide/pt/v8engine/InstallManager$$Lambda$15;->arg$3:Lcm/aptoide/pt/v8engine/Progress;

    return-void
.end method

.method public static lambdaFactory$(Lcm/aptoide/pt/v8engine/InstallManager;Landroid/content/Context;Lcm/aptoide/pt/v8engine/Progress;)Lrx/b/a;
    .locals 1

    new-instance v0, Lcm/aptoide/pt/v8engine/InstallManager$$Lambda$15;

    invoke-direct {v0, p0, p1, p2}, Lcm/aptoide/pt/v8engine/InstallManager$$Lambda$15;-><init>(Lcm/aptoide/pt/v8engine/InstallManager;Landroid/content/Context;Lcm/aptoide/pt/v8engine/Progress;)V

    return-object v0
.end method


# virtual methods
.method public call()V
    .locals 3
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/InstallManager$$Lambda$15;->arg$1:Lcm/aptoide/pt/v8engine/InstallManager;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/InstallManager$$Lambda$15;->arg$2:Landroid/content/Context;

    iget-object v2, p0, Lcm/aptoide/pt/v8engine/InstallManager$$Lambda$15;->arg$3:Lcm/aptoide/pt/v8engine/Progress;

    invoke-virtual {v0, v1, v2}, Lcm/aptoide/pt/v8engine/InstallManager;->lambda$startBackgroundInstallationAndWait$15(Landroid/content/Context;Lcm/aptoide/pt/v8engine/Progress;)V

    return-void
.end method
