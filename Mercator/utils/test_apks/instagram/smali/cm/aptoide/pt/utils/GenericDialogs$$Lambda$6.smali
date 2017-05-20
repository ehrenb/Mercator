.class final synthetic Lcm/aptoide/pt/utils/GenericDialogs$$Lambda$6;
.super Ljava/lang/Object;

# interfaces
.implements Lrx/d$a;


# instance fields
.field private final arg$1:Landroid/content/Context;

.field private final arg$2:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/pt/utils/GenericDialogs$$Lambda$6;->arg$1:Landroid/content/Context;

    iput-object p2, p0, Lcm/aptoide/pt/utils/GenericDialogs$$Lambda$6;->arg$2:Ljava/lang/String;

    return-void
.end method

.method public static lambdaFactory$(Landroid/content/Context;Ljava/lang/String;)Lrx/d$a;
    .locals 1

    new-instance v0, Lcm/aptoide/pt/utils/GenericDialogs$$Lambda$6;

    invoke-direct {v0, p0, p1}, Lcm/aptoide/pt/utils/GenericDialogs$$Lambda$6;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/Object;)V
    .locals 2
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcm/aptoide/pt/utils/GenericDialogs$$Lambda$6;->arg$1:Landroid/content/Context;

    iget-object v1, p0, Lcm/aptoide/pt/utils/GenericDialogs$$Lambda$6;->arg$2:Ljava/lang/String;

    check-cast p1, Lrx/j;

    invoke-static {v0, v1, p1}, Lcm/aptoide/pt/utils/GenericDialogs;->lambda$createGenericShareDialog$20(Landroid/content/Context;Ljava/lang/String;Lrx/j;)V

    return-void
.end method
