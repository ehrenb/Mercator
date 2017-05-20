.class final synthetic Lcm/aptoide/accountmanager/AptoideAccountManager$$Lambda$16;
.super Ljava/lang/Object;

# interfaces
.implements Lrx/b/e;


# static fields
.field private static final instance:Lcm/aptoide/accountmanager/AptoideAccountManager$$Lambda$16;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcm/aptoide/accountmanager/AptoideAccountManager$$Lambda$16;

    invoke-direct {v0}, Lcm/aptoide/accountmanager/AptoideAccountManager$$Lambda$16;-><init>()V

    sput-object v0, Lcm/aptoide/accountmanager/AptoideAccountManager$$Lambda$16;->instance:Lcm/aptoide/accountmanager/AptoideAccountManager$$Lambda$16;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static lambdaFactory$()Lrx/b/e;
    .locals 1

    sget-object v0, Lcm/aptoide/accountmanager/AptoideAccountManager$$Lambda$16;->instance:Lcm/aptoide/accountmanager/AptoideAccountManager$$Lambda$16;

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    check-cast p1, Lcm/aptoide/accountmanager/ws/responses/CheckUserCredentialsJson;

    invoke-static {p1}, Lcm/aptoide/accountmanager/AptoideAccountManager;->lambda$addLocalUserAccount$18(Lcm/aptoide/accountmanager/ws/responses/CheckUserCredentialsJson;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
