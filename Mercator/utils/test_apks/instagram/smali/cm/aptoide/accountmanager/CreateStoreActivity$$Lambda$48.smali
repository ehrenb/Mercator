.class final synthetic Lcm/aptoide/accountmanager/CreateStoreActivity$$Lambda$48;
.super Ljava/lang/Object;

# interfaces
.implements Lrx/b/b;


# static fields
.field private static final instance:Lcm/aptoide/accountmanager/CreateStoreActivity$$Lambda$48;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcm/aptoide/accountmanager/CreateStoreActivity$$Lambda$48;

    invoke-direct {v0}, Lcm/aptoide/accountmanager/CreateStoreActivity$$Lambda$48;-><init>()V

    sput-object v0, Lcm/aptoide/accountmanager/CreateStoreActivity$$Lambda$48;->instance:Lcm/aptoide/accountmanager/CreateStoreActivity$$Lambda$48;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static lambdaFactory$()Lrx/b/b;
    .locals 1

    sget-object v0, Lcm/aptoide/accountmanager/CreateStoreActivity$$Lambda$48;->instance:Lcm/aptoide/accountmanager/CreateStoreActivity$$Lambda$48;

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/Object;)V
    .locals 0
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method
