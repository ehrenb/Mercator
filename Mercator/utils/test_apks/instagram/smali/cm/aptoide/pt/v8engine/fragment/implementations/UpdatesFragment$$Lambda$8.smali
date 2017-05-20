.class final synthetic Lcm/aptoide/pt/v8engine/fragment/implementations/UpdatesFragment$$Lambda$8;
.super Ljava/lang/Object;

# interfaces
.implements Lrx/b/e;


# instance fields
.field private final arg$1:Lcm/aptoide/pt/database/realm/Installed;


# direct methods
.method private constructor <init>(Lcm/aptoide/pt/database/realm/Installed;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/UpdatesFragment$$Lambda$8;->arg$1:Lcm/aptoide/pt/database/realm/Installed;

    return-void
.end method

.method public static lambdaFactory$(Lcm/aptoide/pt/database/realm/Installed;)Lrx/b/e;
    .locals 1

    new-instance v0, Lcm/aptoide/pt/v8engine/fragment/implementations/UpdatesFragment$$Lambda$8;

    invoke-direct {v0, p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/UpdatesFragment$$Lambda$8;-><init>(Lcm/aptoide/pt/database/realm/Installed;)V

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/UpdatesFragment$$Lambda$8;->arg$1:Lcm/aptoide/pt/database/realm/Installed;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {v0, p1}, Lcm/aptoide/pt/v8engine/fragment/implementations/UpdatesFragment;->lambda$filterUpdates$8(Lcm/aptoide/pt/database/realm/Installed;Ljava/lang/Boolean;)Lrx/d;

    move-result-object v0

    return-object v0
.end method
