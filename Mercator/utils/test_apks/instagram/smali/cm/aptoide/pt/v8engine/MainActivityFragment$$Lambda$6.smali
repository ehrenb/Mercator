.class final synthetic Lcm/aptoide/pt/v8engine/MainActivityFragment$$Lambda$6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final arg$1:Lcm/aptoide/pt/v8engine/MainActivityFragment;

.field private final arg$2:Lcm/aptoide/pt/model/v7/Event$Name;


# direct methods
.method private constructor <init>(Lcm/aptoide/pt/v8engine/MainActivityFragment;Lcm/aptoide/pt/model/v7/Event$Name;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/pt/v8engine/MainActivityFragment$$Lambda$6;->arg$1:Lcm/aptoide/pt/v8engine/MainActivityFragment;

    iput-object p2, p0, Lcm/aptoide/pt/v8engine/MainActivityFragment$$Lambda$6;->arg$2:Lcm/aptoide/pt/model/v7/Event$Name;

    return-void
.end method

.method public static lambdaFactory$(Lcm/aptoide/pt/v8engine/MainActivityFragment;Lcm/aptoide/pt/model/v7/Event$Name;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcm/aptoide/pt/v8engine/MainActivityFragment$$Lambda$6;

    invoke-direct {v0, p0, p1}, Lcm/aptoide/pt/v8engine/MainActivityFragment$$Lambda$6;-><init>(Lcm/aptoide/pt/v8engine/MainActivityFragment;Lcm/aptoide/pt/model/v7/Event$Name;)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 2
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/MainActivityFragment$$Lambda$6;->arg$1:Lcm/aptoide/pt/v8engine/MainActivityFragment;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/MainActivityFragment$$Lambda$6;->arg$2:Lcm/aptoide/pt/model/v7/Event$Name;

    invoke-virtual {v0, v1}, Lcm/aptoide/pt/v8engine/MainActivityFragment;->lambda$null$5(Lcm/aptoide/pt/model/v7/Event$Name;)V

    return-void
.end method
