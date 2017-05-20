.class final synthetic Lcm/aptoide/pt/v8engine/AutoUpdate$$Lambda$7;
.super Ljava/lang/Object;

# interfaces
.implements Lrx/b/b;


# instance fields
.field private final arg$1:Lcm/aptoide/pt/v8engine/AutoUpdate;


# direct methods
.method private constructor <init>(Lcm/aptoide/pt/v8engine/AutoUpdate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/pt/v8engine/AutoUpdate$$Lambda$7;->arg$1:Lcm/aptoide/pt/v8engine/AutoUpdate;

    return-void
.end method

.method public static lambdaFactory$(Lcm/aptoide/pt/v8engine/AutoUpdate;)Lrx/b/b;
    .locals 1

    new-instance v0, Lcm/aptoide/pt/v8engine/AutoUpdate$$Lambda$7;

    invoke-direct {v0, p0}, Lcm/aptoide/pt/v8engine/AutoUpdate$$Lambda$7;-><init>(Lcm/aptoide/pt/v8engine/AutoUpdate;)V

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/Object;)V
    .locals 1
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/AutoUpdate$$Lambda$7;->arg$1:Lcm/aptoide/pt/v8engine/AutoUpdate;

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {v0, p1}, Lcm/aptoide/pt/v8engine/AutoUpdate;->lambda$null$4(Ljava/lang/Throwable;)V

    return-void
.end method
