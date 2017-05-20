.class final synthetic Lcm/aptoide/pt/v8engine/V8Engine$$Lambda$6;
.super Ljava/lang/Object;

# interfaces
.implements Lrx/b/b;


# instance fields
.field private final arg$1:Lcm/aptoide/pt/v8engine/V8Engine;


# direct methods
.method private constructor <init>(Lcm/aptoide/pt/v8engine/V8Engine;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/pt/v8engine/V8Engine$$Lambda$6;->arg$1:Lcm/aptoide/pt/v8engine/V8Engine;

    return-void
.end method

.method public static lambdaFactory$(Lcm/aptoide/pt/v8engine/V8Engine;)Lrx/b/b;
    .locals 1

    new-instance v0, Lcm/aptoide/pt/v8engine/V8Engine$$Lambda$6;

    invoke-direct {v0, p0}, Lcm/aptoide/pt/v8engine/V8Engine$$Lambda$6;-><init>(Lcm/aptoide/pt/v8engine/V8Engine;)V

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/Object;)V
    .locals 1
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/V8Engine$$Lambda$6;->arg$1:Lcm/aptoide/pt/v8engine/V8Engine;

    invoke-virtual {v0, p1}, Lcm/aptoide/pt/v8engine/V8Engine;->lambda$onCreate$7(Ljava/lang/Object;)V

    return-void
.end method
