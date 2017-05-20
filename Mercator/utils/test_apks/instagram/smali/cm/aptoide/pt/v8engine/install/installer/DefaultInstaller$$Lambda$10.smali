.class final synthetic Lcm/aptoide/pt/v8engine/install/installer/DefaultInstaller$$Lambda$10;
.super Ljava/lang/Object;

# interfaces
.implements Leu/chainfire/libsuperuser/b$e;


# instance fields
.field private final arg$1:Lcm/aptoide/pt/v8engine/install/installer/DefaultInstaller;

.field private final arg$2:Ljava/lang/String;

.field private final arg$3:I


# direct methods
.method private constructor <init>(Lcm/aptoide/pt/v8engine/install/installer/DefaultInstaller;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/pt/v8engine/install/installer/DefaultInstaller$$Lambda$10;->arg$1:Lcm/aptoide/pt/v8engine/install/installer/DefaultInstaller;

    iput-object p2, p0, Lcm/aptoide/pt/v8engine/install/installer/DefaultInstaller$$Lambda$10;->arg$2:Ljava/lang/String;

    iput p3, p0, Lcm/aptoide/pt/v8engine/install/installer/DefaultInstaller$$Lambda$10;->arg$3:I

    return-void
.end method

.method public static lambdaFactory$(Lcm/aptoide/pt/v8engine/install/installer/DefaultInstaller;Ljava/lang/String;I)Leu/chainfire/libsuperuser/b$e;
    .locals 1

    new-instance v0, Lcm/aptoide/pt/v8engine/install/installer/DefaultInstaller$$Lambda$10;

    invoke-direct {v0, p0, p1, p2}, Lcm/aptoide/pt/v8engine/install/installer/DefaultInstaller$$Lambda$10;-><init>(Lcm/aptoide/pt/v8engine/install/installer/DefaultInstaller;Ljava/lang/String;I)V

    return-object v0
.end method


# virtual methods
.method public onCommandResult(IILjava/util/List;)V
    .locals 6
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/install/installer/DefaultInstaller$$Lambda$10;->arg$1:Lcm/aptoide/pt/v8engine/install/installer/DefaultInstaller;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/install/installer/DefaultInstaller$$Lambda$10;->arg$2:Ljava/lang/String;

    iget v2, p0, Lcm/aptoide/pt/v8engine/install/installer/DefaultInstaller$$Lambda$10;->arg$3:I

    move v3, p1

    move v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcm/aptoide/pt/v8engine/install/installer/DefaultInstaller;->lambda$rootInstall$12(Ljava/lang/String;IIILjava/util/List;)V

    return-void
.end method
