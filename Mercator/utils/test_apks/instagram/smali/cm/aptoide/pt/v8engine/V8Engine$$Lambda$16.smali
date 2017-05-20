.class final synthetic Lcm/aptoide/pt/v8engine/V8Engine$$Lambda$16;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# static fields
.field private static final instance:Lcm/aptoide/pt/v8engine/V8Engine$$Lambda$16;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcm/aptoide/pt/v8engine/V8Engine$$Lambda$16;

    invoke-direct {v0}, Lcm/aptoide/pt/v8engine/V8Engine$$Lambda$16;-><init>()V

    sput-object v0, Lcm/aptoide/pt/v8engine/V8Engine$$Lambda$16;->instance:Lcm/aptoide/pt/v8engine/V8Engine$$Lambda$16;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static lambdaFactory$()Ljava/util/concurrent/Callable;
    .locals 1

    sget-object v0, Lcm/aptoide/pt/v8engine/V8Engine$$Lambda$16;->instance:Lcm/aptoide/pt/v8engine/V8Engine$$Lambda$16;

    return-object v0
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 1
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    invoke-static {}, Lcm/aptoide/pt/v8engine/V8Engine;->lambda$generateAptoideUUID$16()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
