.class final synthetic Lcm/aptoide/pt/v8engine/util/DialogUtils$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Lrx/d$a;


# instance fields
.field private final arg$1:Lcm/aptoide/pt/v8engine/util/DialogUtils;

.field private final arg$2:Landroid/app/Activity;

.field private final arg$3:Ljava/lang/String;

.field private final arg$4:Ljava/lang/String;

.field private final arg$5:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcm/aptoide/pt/v8engine/util/DialogUtils;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/pt/v8engine/util/DialogUtils$$Lambda$1;->arg$1:Lcm/aptoide/pt/v8engine/util/DialogUtils;

    iput-object p2, p0, Lcm/aptoide/pt/v8engine/util/DialogUtils$$Lambda$1;->arg$2:Landroid/app/Activity;

    iput-object p3, p0, Lcm/aptoide/pt/v8engine/util/DialogUtils$$Lambda$1;->arg$3:Ljava/lang/String;

    iput-object p4, p0, Lcm/aptoide/pt/v8engine/util/DialogUtils$$Lambda$1;->arg$4:Ljava/lang/String;

    iput-object p5, p0, Lcm/aptoide/pt/v8engine/util/DialogUtils$$Lambda$1;->arg$5:Ljava/lang/String;

    return-void
.end method

.method public static lambdaFactory$(Lcm/aptoide/pt/v8engine/util/DialogUtils;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lrx/d$a;
    .locals 6

    new-instance v0, Lcm/aptoide/pt/v8engine/util/DialogUtils$$Lambda$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcm/aptoide/pt/v8engine/util/DialogUtils$$Lambda$1;-><init>(Lcm/aptoide/pt/v8engine/util/DialogUtils;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/Object;)V
    .locals 6
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/util/DialogUtils$$Lambda$1;->arg$1:Lcm/aptoide/pt/v8engine/util/DialogUtils;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/util/DialogUtils$$Lambda$1;->arg$2:Landroid/app/Activity;

    iget-object v2, p0, Lcm/aptoide/pt/v8engine/util/DialogUtils$$Lambda$1;->arg$3:Ljava/lang/String;

    iget-object v3, p0, Lcm/aptoide/pt/v8engine/util/DialogUtils$$Lambda$1;->arg$4:Ljava/lang/String;

    iget-object v4, p0, Lcm/aptoide/pt/v8engine/util/DialogUtils$$Lambda$1;->arg$5:Ljava/lang/String;

    move-object v5, p1

    check-cast v5, Lrx/j;

    invoke-virtual/range {v0 .. v5}, Lcm/aptoide/pt/v8engine/util/DialogUtils;->lambda$showRateDialog$6(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lrx/j;)V

    return-void
.end method
