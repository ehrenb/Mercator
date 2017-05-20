.class final synthetic Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$$Lambda$15;
.super Ljava/lang/Object;

# interfaces
.implements Lrx/b/b;


# instance fields
.field private final arg$1:Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;

.field private final arg$2:Ljava/lang/String;

.field private final arg$3:Ljava/lang/String;

.field private final arg$4:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$$Lambda$15;->arg$1:Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;

    iput-object p2, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$$Lambda$15;->arg$2:Ljava/lang/String;

    iput-object p3, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$$Lambda$15;->arg$3:Ljava/lang/String;

    iput-object p4, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$$Lambda$15;->arg$4:Ljava/lang/String;

    return-void
.end method

.method public static lambdaFactory$(Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lrx/b/b;
    .locals 1

    new-instance v0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$$Lambda$15;

    invoke-direct {v0, p0, p1, p2, p3}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$$Lambda$15;-><init>(Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/Object;)V
    .locals 4
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$$Lambda$15;->arg$1:Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$$Lambda$15;->arg$2:Ljava/lang/String;

    iget-object v2, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$$Lambda$15;->arg$3:Ljava/lang/String;

    iget-object v3, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$$Lambda$15;->arg$4:Ljava/lang/String;

    check-cast p1, Lcm/aptoide/pt/utils/GenericDialogs$EResponse;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;->lambda$shareApp$16(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcm/aptoide/pt/utils/GenericDialogs$EResponse;)V

    return-void
.end method
