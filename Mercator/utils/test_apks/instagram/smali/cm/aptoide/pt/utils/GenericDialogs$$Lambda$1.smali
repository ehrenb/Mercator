.class final synthetic Lcm/aptoide/pt/utils/GenericDialogs$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Lrx/d$a;


# instance fields
.field private final arg$1:Landroid/content/Context;

.field private final arg$2:Ljava/lang/String;

.field private final arg$3:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/pt/utils/GenericDialogs$$Lambda$1;->arg$1:Landroid/content/Context;

    iput-object p2, p0, Lcm/aptoide/pt/utils/GenericDialogs$$Lambda$1;->arg$2:Ljava/lang/String;

    iput-object p3, p0, Lcm/aptoide/pt/utils/GenericDialogs$$Lambda$1;->arg$3:Ljava/lang/String;

    return-void
.end method

.method public static lambdaFactory$(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lrx/d$a;
    .locals 1

    new-instance v0, Lcm/aptoide/pt/utils/GenericDialogs$$Lambda$1;

    invoke-direct {v0, p0, p1, p2}, Lcm/aptoide/pt/utils/GenericDialogs$$Lambda$1;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/Object;)V
    .locals 3
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcm/aptoide/pt/utils/GenericDialogs$$Lambda$1;->arg$1:Landroid/content/Context;

    iget-object v1, p0, Lcm/aptoide/pt/utils/GenericDialogs$$Lambda$1;->arg$2:Ljava/lang/String;

    iget-object v2, p0, Lcm/aptoide/pt/utils/GenericDialogs$$Lambda$1;->arg$3:Ljava/lang/String;

    check-cast p1, Lrx/j;

    invoke-static {v0, v1, v2, p1}, Lcm/aptoide/pt/utils/GenericDialogs;->lambda$createGenericYesNoCancelMessage$3(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lrx/j;)V

    return-void
.end method
