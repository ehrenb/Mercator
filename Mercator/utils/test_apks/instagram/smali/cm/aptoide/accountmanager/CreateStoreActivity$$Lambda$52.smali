.class final synthetic Lcm/aptoide/accountmanager/CreateStoreActivity$$Lambda$52;
.super Ljava/lang/Object;

# interfaces
.implements Lrx/b/b;


# static fields
.field private static final instance:Lcm/aptoide/accountmanager/CreateStoreActivity$$Lambda$52;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcm/aptoide/accountmanager/CreateStoreActivity$$Lambda$52;

    invoke-direct {v0}, Lcm/aptoide/accountmanager/CreateStoreActivity$$Lambda$52;-><init>()V

    sput-object v0, Lcm/aptoide/accountmanager/CreateStoreActivity$$Lambda$52;->instance:Lcm/aptoide/accountmanager/CreateStoreActivity$$Lambda$52;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static lambdaFactory$()Lrx/b/b;
    .locals 1

    sget-object v0, Lcm/aptoide/accountmanager/CreateStoreActivity$$Lambda$52;->instance:Lcm/aptoide/accountmanager/CreateStoreActivity$$Lambda$52;

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/Object;)V
    .locals 0
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    check-cast p1, Lcm/aptoide/pt/utils/GenericDialogs$EResponse;

    invoke-static {p1}, Lcm/aptoide/accountmanager/CreateStoreActivity;->lambda$null$4(Lcm/aptoide/pt/utils/GenericDialogs$EResponse;)V

    return-void
.end method
