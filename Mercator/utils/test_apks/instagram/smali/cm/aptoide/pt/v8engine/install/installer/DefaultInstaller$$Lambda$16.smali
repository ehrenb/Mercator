.class final synthetic Lcm/aptoide/pt/v8engine/install/installer/DefaultInstaller$$Lambda$16;
.super Ljava/lang/Object;

# interfaces
.implements Lrx/b/b;


# instance fields
.field private final arg$1:Lcm/aptoide/pt/v8engine/install/installer/DefaultInstaller;

.field private final arg$2:Ljava/lang/String;

.field private final arg$3:I

.field private final arg$4:I


# direct methods
.method private constructor <init>(Lcm/aptoide/pt/v8engine/install/installer/DefaultInstaller;Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/pt/v8engine/install/installer/DefaultInstaller$$Lambda$16;->arg$1:Lcm/aptoide/pt/v8engine/install/installer/DefaultInstaller;

    iput-object p2, p0, Lcm/aptoide/pt/v8engine/install/installer/DefaultInstaller$$Lambda$16;->arg$2:Ljava/lang/String;

    iput p3, p0, Lcm/aptoide/pt/v8engine/install/installer/DefaultInstaller$$Lambda$16;->arg$3:I

    iput p4, p0, Lcm/aptoide/pt/v8engine/install/installer/DefaultInstaller$$Lambda$16;->arg$4:I

    return-void
.end method

.method public static lambdaFactory$(Lcm/aptoide/pt/v8engine/install/installer/DefaultInstaller;Ljava/lang/String;II)Lrx/b/b;
    .locals 1

    new-instance v0, Lcm/aptoide/pt/v8engine/install/installer/DefaultInstaller$$Lambda$16;

    invoke-direct {v0, p0, p1, p2, p3}, Lcm/aptoide/pt/v8engine/install/installer/DefaultInstaller$$Lambda$16;-><init>(Lcm/aptoide/pt/v8engine/install/installer/DefaultInstaller;Ljava/lang/String;II)V

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/Object;)V
    .locals 4
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/install/installer/DefaultInstaller$$Lambda$16;->arg$1:Lcm/aptoide/pt/v8engine/install/installer/DefaultInstaller;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/install/installer/DefaultInstaller$$Lambda$16;->arg$2:Ljava/lang/String;

    iget v2, p0, Lcm/aptoide/pt/v8engine/install/installer/DefaultInstaller$$Lambda$16;->arg$3:I

    iget v3, p0, Lcm/aptoide/pt/v8engine/install/installer/DefaultInstaller$$Lambda$16;->arg$4:I

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcm/aptoide/pt/v8engine/install/installer/DefaultInstaller;->lambda$null$11(Ljava/lang/String;IILjava/lang/Integer;)V

    return-void
.end method
