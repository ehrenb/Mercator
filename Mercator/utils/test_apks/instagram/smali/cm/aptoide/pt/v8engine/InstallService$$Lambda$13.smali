.class final synthetic Lcm/aptoide/pt/v8engine/InstallService$$Lambda$13;
.super Ljava/lang/Object;

# interfaces
.implements Lrx/b/e;


# instance fields
.field private final arg$1:Lcm/aptoide/pt/v8engine/InstallService;

.field private final arg$2:Landroid/content/Context;


# direct methods
.method private constructor <init>(Lcm/aptoide/pt/v8engine/InstallService;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/pt/v8engine/InstallService$$Lambda$13;->arg$1:Lcm/aptoide/pt/v8engine/InstallService;

    iput-object p2, p0, Lcm/aptoide/pt/v8engine/InstallService$$Lambda$13;->arg$2:Landroid/content/Context;

    return-void
.end method

.method public static lambdaFactory$(Lcm/aptoide/pt/v8engine/InstallService;Landroid/content/Context;)Lrx/b/e;
    .locals 1

    new-instance v0, Lcm/aptoide/pt/v8engine/InstallService$$Lambda$13;

    invoke-direct {v0, p0, p1}, Lcm/aptoide/pt/v8engine/InstallService$$Lambda$13;-><init>(Lcm/aptoide/pt/v8engine/InstallService;Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/InstallService$$Lambda$13;->arg$1:Lcm/aptoide/pt/v8engine/InstallService;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/InstallService$$Lambda$13;->arg$2:Landroid/content/Context;

    check-cast p1, Lcm/aptoide/pt/database/realm/Download;

    invoke-virtual {v0, v1, p1}, Lcm/aptoide/pt/v8engine/InstallService;->lambda$downloadAndInstall$13(Landroid/content/Context;Lcm/aptoide/pt/database/realm/Download;)Lrx/d;

    move-result-object v0

    return-object v0
.end method
