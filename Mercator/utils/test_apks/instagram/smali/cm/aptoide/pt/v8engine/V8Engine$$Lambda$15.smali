.class final synthetic Lcm/aptoide/pt/v8engine/V8Engine$$Lambda$15;
.super Ljava/lang/Object;

# interfaces
.implements Lcm/aptoide/pt/dataprovider/interfaces/TokenInvalidator;


# static fields
.field private static final instance:Lcm/aptoide/pt/v8engine/V8Engine$$Lambda$15;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcm/aptoide/pt/v8engine/V8Engine$$Lambda$15;

    invoke-direct {v0}, Lcm/aptoide/pt/v8engine/V8Engine$$Lambda$15;-><init>()V

    sput-object v0, Lcm/aptoide/pt/v8engine/V8Engine$$Lambda$15;->instance:Lcm/aptoide/pt/v8engine/V8Engine$$Lambda$15;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static lambdaFactory$()Lcm/aptoide/pt/dataprovider/interfaces/TokenInvalidator;
    .locals 1

    sget-object v0, Lcm/aptoide/pt/v8engine/V8Engine$$Lambda$15;->instance:Lcm/aptoide/pt/v8engine/V8Engine$$Lambda$15;

    return-object v0
.end method


# virtual methods
.method public invalidateAccessToken(Landroid/content/Context;)Lrx/d;
    .locals 1
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    invoke-static {p1}, Lcm/aptoide/accountmanager/AptoideAccountManager;->invalidateAccessToken(Landroid/content/Context;)Lrx/d;

    move-result-object v0

    return-object v0
.end method
